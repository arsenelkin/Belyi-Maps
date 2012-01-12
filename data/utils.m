//load "splitting.m";

/********************************************************************
 * This file provides utilities for dealing with Belyi covers,
 * computation of their invariants, validation,
 * assignment of variables, etc. 
 ********************************************************************/



/*****************************************************************
 * Riemann-Hurwitz genus formulas
 *****************************************************************/

// Degree of a belyi cover
BelyiDegree := func< passport | &+passport[1] >;

// Genus of a belyi cover
BelyiTwiceGenus := func< passport : deg := BelyiDegree(passport) | 
	-2*deg + 2 + &+[&+[i-1 : i in passport[j]]: j in [1..#passport]] >;

BelyiGenus := func< passport : deg := BelyiDegree(passport) | 
	 BelyiTwiceGenus(passport : deg := deg) div 2 >;

// Genus of a belyi cover, quick version
BelyiTwiceGenusEZ := func< passport  : deg := BelyiDegree(passport) | 
	deg - &+[#ram : ram in passport] + 2 >;

BelyiGenusEZ := func< passport  : deg := BelyiDegree(passport) | 
	 BelyiTwiceGenusEZ(passport : deg := deg) div 2 >;

/*****************************************************************
 * Extract the passport of a function in a function field
 *****************************************************************/

reverse_comp := func<x, y | y - x>;

list_comp := function(list1, list2)
    len1 := #list1;
    len2 := #list2;
    
    for i in [1..Min(len1, len2)] do
        if list1[i] eq list2[i] then
            continue;
        end if;
        return list1[i] - list2[i];
    end for;
    return len1 - len2;
end function;


// TODO: optimize this
RamificationOrders := function(f)
    places, orders := Support(Divisor(f));
    degrees := [Degree(d) : d in places];
    results := Flat([[orders[i] : j in [1..degrees[i]]] : i in [1..#orders] ]);
    ni := Sort([-d : d in results | d lt 0], reverse_comp);
    n0 := Sort([d : d in results | d gt 0], reverse_comp);
    return ni, n0;
end function;

BelyiPassport := function(f)
    ni0, n0 := RamificationOrders(f);
    ni1, n1 := RamificationOrders(f - 1);

    assert ni0 eq ni1;

    return [ni0, n0, n1];
end function;

// This is to speed comparisons up
HasBelyiPassport := function(f, passport)
    ni0, n0 := RamificationOrders(f);
    if ni0 ne passport[1] or n0 ne passport[2] then
        return false;
    end if;

    ni1, n1 := RamificationOrders(f - 1);

    return n1 eq passport[3];
end function;

/*****************************************************************
 * Validate ramification data
 *****************************************************************/

ValidatePassport := function(passport)
    if Type(passport) cmpne SeqEnum or #passport ne 3 then
        return false;
    end if;

	deg := BelyiDegree(passport);
	for point in passport do
		if &+point ne deg then
			return false;
		end if;
	end for;

	twiceg := BelyiTwiceGenus(passport);
	if (twiceg lt 0) or IsOdd(twiceg) then
		return false;
	end if;	

	return true;
end function;

/*****************************************************************
 * Create array with variables and their names
 *****************************************************************/

FillInVars := function(KK, varname, nvars, disp, start)
	vars := [KK | KK.(disp + i) : i in [1..nvars]];
	varnames := [varname cat IntegerToString(i-1+start) : i in [1..nvars]];	
	disp +:= nvars;
	return vars, varnames, disp;
end function;


/*****************************************************************
 * Validate ramification data
 *****************************************************************/

CastPoint := function(pt, K)
	return [K ! c : c in Eltseq(pt)];
end function;

CastPoints := function(pts, K)
	return [CastPoint(pt, K) : pt in Seqelt(pts)];
end function;

CastEquations := function(eqns, K)
	KK := Universe(eqns);
	rank := Rank(KK);
	KX := PolynomialRing(K, rank);
	AssignNames(~KX, Names(KK));
	return [KX ! eqn : eqn in eqns];
end function;

/*****************************************************************
 * All-possible-selections function
 *****************************************************************/

AllPossibleSelections := function(list)
	maxes := [#l : l in list];
	indices := CartesianProduct([[1..max] : max in maxes]);
	result := {[list[i][elt[i]] : i in [1..#elt]] : elt in indices};
	return SetToSequence(result);
end function;

/***************************************************************************
 * Separability conditions via discriminant
 ***************************************************************************/

SeparabilityConditionsTogether := function(vars)
    KX := PolynomialRing(Universe(vars));
    x := KX.1;
    poly := &*[ KX | x - var : var in vars];
    return [Discriminant(poly)];
end function;

/***************************************************************************
 * Separability conditions via nonequality of individual variables
 ***************************************************************************/ 

SeparabilityConditionsApart := function(vars)
    return [ vars[j] - vars[i] : j in [1..(i-1)], i in [2..#vars]];
end function;

/***************************************************************************
 * Find a minimal field of definition for a list of numbers
 ***************************************************************************/

HyperellipticCoefficients := function(f)
    C, M := CoefficientsAndMonomials(f);
    F := Parent(f);    
    result := [Universe(C) | 0, 0];
    for i in [1..#M] do
        if M[i] eq (F ! 1) then
            result[1] := C[i];
        elif M[i] eq F.2 then
            result[2] := C[i];
        else
            error "Invalid monomial";
        end if;
    end for;
    return result;
end function;

// Only works for elliptic curve in the form y^2 = f(x)
HyperellipticConjugate := function(f)
    F := Parent(f);
    x := F.1;    
    y := F.2;
    _, h := HyperellipticPolynomials(Curve(F));
    C := HyperellipticCoefficients(f);
    return C[1] - C[2] * (y + Evaluate(h, x));
end function;

HyperellipticNorm := function(f)
    return f * HyperellipticConjugate(f);
end function;

//
// for f = (r(x) + y * s(x))/t(x), returns r, s, t.
// This function is horrible and possibly buggy. Rewrite it.
//
DecomposeHyperellipticFunction := function(f)
    coeffs := HyperellipticCoefficients(f);
    denom := Denominator(coeffs[1]);
    coeffs[2] *:= Denominator(coeffs[1]);
    coeffs[1] *:= Denominator(coeffs[1]);
    denom *:= Denominator(coeffs[2]);
    coeffs[1] *:= Denominator(coeffs[2]);
    coeffs[2] *:= Denominator(coeffs[2]);
    return Numerator(coeffs[1]), Numerator(coeffs[2]), denom;
end function;

/***************************************************************************
 * Get the scheme defined by the equations in a list
 ***************************************************************************/

GetScheme := function(eqns, sep)
    assert IsEmpty(sep) or (Universe(sep) cmpeq Universe(eqns));
    A := AffineSpace(Universe(eqns));
    Sin := Scheme(A, eqns);
    Sout := Scheme(A, &*sep);
    return Sin, Sout;
end function;

/***************************************************************************
 * 
 ***************************************************************************/

EllipticCurveCoeffsByJAndD := function(j, d)
    U := Parent(j);
    if j eq 0 then
        return [U ! 0, d^3];
    elif j eq 1728 then
        return [U ! d^2, 0];
    end if;
    
    return [U ! -27 * d^2 * j * (j - 1728), 54 * d^3 * j * (j-1728)^2];
end function;

EllipticCurveByJAndD := function(j, d)
    return EllipticCurve(EllipticCurveCoeffsByJAndD(j, d));
end function;

/***************************************************************************
 * Searching for the number of occurences of an element in a list
 ***************************************************************************/

CountOccurrences := func<list, elt | &+[1 : e in list | e eq elt] >;

/***********************************************************************************
 * Factorization routines
 ***********************************************************************************/

IrredicibleDivisors := func< poly | IsZero(poly) select {@ Parent(poly) | @}
                                else {@ Parent(poly) | fc[1] : fc in Factorization(poly) @} >;

//
// Figure out the factors of poly appearing in the list factors, their powers
// and the leftovers
//
ExtractFactorsRepresentation := function(poly, factors)
    if IsZero(poly) then
        return [], Parent(poly) ! 0;
    end if;

    fact := [];
    other := Parent(poly) ! LeadingCoefficient(poly);
    for fc in Factorization(poly) do
        index := Index(factors, fc[1]);
        if index eq 0 then
            other *:= fc[1]^fc[2];
        else
            Append(~fact, <index, fc[2]>);
        end if;
    end for;
    return fact, other;
end function;

TruncatedCoefficients := func<poly | Coefficients(poly)[1..Degree(poly)] >;

MakeUpFactors := function(KK, factors)
    KX<x> := PolynomialRing(KK);
    result := {@ KX | @};
    i := 1;
    for poly in factors do
        deg := Degree(poly);
        coeffs := [KK.j : j in [i..(i+deg-1)]] cat [1];
        result join:= {@ KX ! coeffs @};
        i +:= deg;
    end for;
    return result;
end function;

ReconsituteFactorPattern:= function(other, factors, pattern)
    return other * &*[Universe(factors) | factors[patt[1]]^patt[2] : patt in pattern ];
end function;

/***********************************************************************************
 * Printing routines
 ***********************************************************************************/

ListToString := function(L)
    if IsEmpty(L) then
        return "[]";
    end if;
    ZZ := Integers();
    result := "[";
    for j in [1..(#L-1)] do
        result *:= Sprint(L[j]);
        result *:= ",";
    end for;
    result *:= Sprint(L[#L]);
    result *:= "]";
    return result;
end function;

ListOfListsToString := function(passport)
    if IsEmpty(passport) then
        return "[]";
    end if;
    result := "[";
    for i in [1..(#passport-1)] do
        result *:= ListToString(passport[i]);
        result *:= ",";
    end for;
    result *:= ListToString(passport[#passport]);
    result *:= "]";
    return result;    
end function;

BelyiPassportToString := ListOfListsToString;

/***********************************************************************************
 * Returns a sorted passport with constituent lists appearing in decreasing
 * lexicographical order,
 * and the fractional linear transformation whose composition with Belyi maps
 * corresponding to the sorted passport yields Belyi maps with the original passport
 *
 * Example: If BelyiPassport(phi) equals [[4],[3,1],[2,2]] (sorted),
 * and we let  
 *    > ... // definition of phi
 *    > BelyiPassportToString(BelyiPassport(phi));
 *    [[4],[3,1],[2,2]]
 *    > // notice that this passport is sorted
 *    > // suppose we would like to obtain a corresponing function with an
 *    > // unsorted passport, for example
 *    > pass := [[1,3],[2,2],[4]];
 *    > sortedpass, alpha := SortingMobiusTransform(pass);
 *    > BelyiPassportToString(sortedpass);
 *    [[4],[3,1],[2,2]]
 *    > alpha;
 *    ($.1 - 1)/$.1
 *    > psi := Evaluate(alpha, phi);
 *    > BelyiPassportToString(BelyiPassport(psi));
 *    [[3,1],[2,2],[4]]
 *    > // as was desired
 *
 ***********************************************************************************/

SortingMobiusTransform := function(passport)
    ordered := [Sort(list, reverse_comp) : list in passport];
    KX := RationalFunctionField(Integers());
    x := KX.1;
    ab := list_comp(ordered[1], ordered[2]) ge 0;
    bc := list_comp(ordered[2], ordered[3]) ge 0;
    
    if ab and bc then
        // a >= b >= c;
        return ordered, x;
    elif not ab and not bc then
        // c > b > a
        return Reverse(ordered), x / (1 - x);    
    end if;
    
    ac := list_comp(passport[1], passport[3]) ge 0;
        
    if ab then
        if ac then 
            // a >= c > b
            return [ordered[1], ordered[3], ordered[2]], 1 - x;
        else
            // c > a > b
            return [ordered[3], ordered[1], ordered[2]], (x - 1) / x;
        end if;
    else
        if ac then
            // b > a >= c
            return [ordered[2],ordered[1], ordered[3]], 1 / x;
        end if;
    end if;

    // b > c > a 
    return [ordered[2], ordered[3], ordered[1]], 1 / (1 - x);
end function;

/***********************************************************************************
 *
 ***********************************************************************************/

NormalizeBelyiPassport := func< passport |
    Sort([Sort(list, reverse_comp) : list in passport], func<A, B | -list_comp(A, B)>) >;

/***********************************************************************************
 * JInvariant of an elliptic curve given by a cubic or quartic polynomial
 ***********************************************************************************/

JInvariant := function(C)
    if Type(C) eq CrvEll then
        return jInvariant(C);
    end if;
    
    assert Type(C) eq CrvHyp;
    ell, E := IsEllipticCurve(C);
    if ell then
        return jInvariant(E);
    end if;
    
    assert Characteristic(BaseRing(C)) ne 2;
    f, h := HyperellipticPolynomials(C);
    assert IsZero(h) and Degree(f) eq 4;
    s4, s3, s2, s1, s0 := Explode(Coefficients(f));
    s4 /:= s0; s3 /:= s0; s2 /:= s0; s1 /:= s0;
    num := -27*s1^3*s3^3 + 27*s1^2*s2^2*s3^2 + 324*s1^2*s3^2*s4 - 9*s1*s2^4*s3 - 216*s1*s2^2*s3*s4 - 1296*s1*s3*s4^2 + s2^6 + 36*s2^4*s4 + 432*s2^2*s4^2 + 1728*s4^3;
    den := -27*s1^4*s4^2 + 18*s1^3*s2*s3*s4 - 4*s1^3*s3^3 - 4*s1^2*s2^3*s4 + s1^2*s2^2*s3^2 + 144*s1^2*s2*s4^2 - 6*s1^2*s3^2*s4 - 80*s1*s2^2*s3*s4 + 18*s1*s2*s3^3 - 192*s1*s3*s4^2 + 16*s2^4*s4 - 4*s2^3*s3^2 - 128*s2^2*s4^2 + 144*s2*s3^2*s4 - 27*s3^4 + 256*s4^3;
    return 256 * num / den;
end function;

