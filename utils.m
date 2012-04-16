/********************************************************************
 * Author: Arsen Elkin
 * Affiliation: University of Warwick
 * Date: 11/04/2012
 * Disclaimer: Provided as is. No guarantees.
 ********************************************************************
 *
 * This file provides utilities for dealing with Belyi covers,
 * computation of their invariants, validation, assignment of variables, etc. 
 *
 *
 * function BelyiDegree(passport)
 *                  - degree of a Belyi passport
 * function BelyiGenus(passport)
 *                  - genus of a Belyi passport
 * function BelyiPassport(f)    
 *                  - Belyi passport of algebraic function f
 *
 ********************************************************************/


forward MapCar, MapCar2, MapCar3, MapCar4;
        

/*****************************************************************
 * Riemann-Hurwitz genus formulas
 *****************************************************************/

// Degree of a belyi cover
function BelyiDegree(passport)
    return &+passport[1];
end function;

// Genus of a belyi cover
function BelyiTwiceGenus(passport)
    deg := BelyiDegree(passport);
    return -2*deg + 2 + &+[&+[i-1 : i in passport[j]]: j in [1..#passport]];
end function;

function BelyiGenus(passport)
	 return BelyiTwiceGenus(passport) div 2;
end function;

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
function RamificationOrders(f)
    places, orders := Support(Divisor(f));
    degrees := [Degree(d) : d in places];
    results := Flat([[orders[i] : j in [1..degrees[i]]] : i in [1..#orders] ]);
    ni := Sort([-d : d in results | d lt 0], reverse_comp);
    n0 := Sort([d : d in results | d gt 0], reverse_comp);
    return ni, n0;
end function;

function BelyiPassport(f)
    ni0, n0 := RamificationOrders(f);
    ni1, n1 := RamificationOrders(f - 1);

    assert ni0 eq ni1;

    return [ni0, n0, n1];
end function;

// This is to speed comparisons up
function HasBelyiPassport(f, passport)
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

function ValidatePassport(passport)
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
 * Create polynomial ring with appropriately named variables
 * Example: GeneratePolynomialRing(K, [<"a", 2, 0>, <"b", 2, 1><"q", 1, -1>])
 * returns K<a0, a1, b1, b2, q><x> and [[a0, a1], [b1, b2], [q]]
 *
 * The first item is the name of the variables
 * The second item is the number of variables with this name desired
 * The third item is the starting index. 
 *      -1 indicated no indexing, which only works with the second item equal to 1
 *
 *****************************************************************/
 
VarNames := func< param | 
        [param[1] cat (param[3] eq -1 select "" else IntegerToString(param[3] + i)) 
        : i in [0..(param[2] - 1)] ] >;

function GeneratePolynomialRing(K, params)
    nvars := &+[elt[2] : elt in params];
    KK := PolynomialRing(K, nvars);
        
    varnames := &cat[ VarNames(param) : param in params ];
    AssignNames(~KK, varnames);
    
    variables := [];
    base := 1;
    for param in params do
        length := param[2];
        Append(~variables, [KK | KK.(base + i) : i in [0..(length - 1)] ]);
        base +:= length;
    end for;

    return PolynomialRing(KK), variables;
end function;

/*****************************************************************
 * Validate ramification data
 *****************************************************************/

function CastPoint(pt, K)
    return [K ! c : c in Eltseq(pt)];
end function;

/*****************************************************************
 * All-possible-selections function
 *****************************************************************/

function AllPossibleSelections(list)
	maxes := [#l : l in list];
	indices := CartesianProduct([[1..max] : max in maxes]);
	result := {[list[i][elt[i]] : i in [1..#elt]] : elt in indices};
	return SetToSequence(result);
end function;

/***************************************************************************
 * 
 ***************************************************************************/

function HyperellipticCoefficients(f)
    coeffs := [Coefficients(c)[1] : c in Coefficients(f, 1)];
    return coeffs cat [ 0 : i in [#coeffs .. 1]];
end function;

function HyperellipticConjugate(phi)
    F := Parent(phi);
    y := F.2;
    _, h := HyperellipticPolynomials(Curve(F));
    a, b := Explode(HyperellipticCoefficients(phi));
    return a - b * (y + h);
end function;

/***************************************************************************
 * Given a Belyi map a(x) + b(x) * y on the curve
 * y^2 + h(x) * y = f(x) returns its "norm"  a^2 - a * b * h - f * b^2.
 * This formula is an analogy to the case of a quadratic number fields.
 ***************************************************************************/
  
function HyperellipticNorm(phi)
    f, h := HyperellipticPolynomials(Curve(Parent(phi)));
    a, b := Explode(HyperellipticCoefficients(phi));
    f := Parent(a) ! f;
    h := Parent(a) ! h; 
    return a^2 - a * b * h - f * b^2;
end function;

/***************************************************************************
 * For f = (p(x) + y * q(x))/r(x) on a hyperelliptic curve, 
 * returns polynomials p, q, r.
 ***************************************************************************/
function DecomposeHypFunction(f)
    coeffs := HyperellipticCoefficients(f);
    denom := Denominator(coeffs[1]);
    num1 := Numerator(coeffs[1]);
    coeffs[2] *:= denom;
    denom2 := Denominator(coeffs[2]);
    denom *:= denom2;
    num1 *:= denom2;
    num2 := Numerator(coeffs[2]);
    return num1, num2, denom;
end function;

function DecomposeG0Function(f)
    coeffs := Coefficients(f);
    g := IsEmpty(coeffs) select Zero(Universe(coeffs)) else coeffs[1];
    return Numerator(g), Denominator(g);
end function;

/***************************************************************************
 * Given a Belyi map (p(x) + q(x) * y) / r(x) on the curve
 * y^2 + h(x) * y = f(x) returns the sequence [f, h, p, q, r] of polynomials
 ***************************************************************************/

function HyperellipticMapToPolynomials(phi)
    E := Curve(Parent(phi));
    poly_f, poly_h := HyperellipticPolynomials(E);
    poly_p, poly_q, poly_r := DecomposeHypFunction(phi);
    return [poly_f, poly_h, poly_p, poly_q, poly_r];
end function;

/***************************************************************************
 * 
 ***************************************************************************/

function EllipticCurveCoeffsByJAndD(j, d)
    U := CoveringStructure(Parent(j), Parent(d));
    if j eq 0 then
        return [U | 0, d^3];
    elif j eq 1728 then
        return [U | d^2, 0];
    end if;
    
    return [U | -27 * d^2 * j * (j - 1728), 54 * d^3 * j * (j-1728)^2];
end function;

function EllipticCurveByJAndD(j, d)
    return EllipticCurve(EllipticCurveCoeffsByJAndD(j, d));
end function;

/***************************************************************************
 * Searching for the number of occurences of an element in a list
 ***************************************************************************/

CountOccurrences := func<list, elt | &+[1 : e in list | e eq elt] >;

/***********************************************************************************
 * Printing routines
 ***********************************************************************************/

function ListToString(L)
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

function ListOfListsToString(passport)
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

function SortingMobiusTransform(passport)
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
    
    ac := list_comp(ordered[1], ordered[3]) ge 0;
        
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

function JInvariant(C)
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

/***********************************************************************************
 * Lisp's MapCar function. Applies f to corresponding elements of args1 and args2,
 * accumulating the results.
 *
 * The functionality is different from Lisp's mapcar in that the lengths of multiple
 * arguments must be the same. This is to avoid unintended consequences.
 *
 ***********************************************************************************/

function MapCar(f, args : Range := false)
    return Range cmpeq false select [ f(arg) : arg in args ]
                            else [Range | f(arg) : arg in args ];
end function;

function MapCar2(f, args1, args2 : Range := false)
    n := #args1;
    assert n eq #args2;
    range := [1 .. n];
    return Range cmpeq false select [ f(args1[i], args2[i]) : i in range ]
                            else [ Range | f(args1[i], args2[i]) : i in range ];
end function;

function MapCar3(f, args1, args2, args3 : Range := false)
    n := #args1;
    assert n eq #args2 and n eq #args3;
    range := [1 .. n];
    return Range cmpeq false select [ f(args1[i], args2[i], args3[i]) : i in range ]
                            else [ Range | f(args1[i], args2[i], args3[i]) : i in range ];
end function;

function MapCar4(f, args1, args2, args3, args4 : Range := false)
    n := #args1;
    assert n eq #args2 and n eq #args3 and n eq #args4;
    range := [1 .. n];
    return Range cmpeq false select [ f(args1[i], args2[i], args3[i], args4[i]) : i in range ]
                            else [ Range | f(args1[i], args2[i], args3[i], args4[i]) : i in range ];
end function;
