/********************************************************************
 * Author: Arsen Elkin
 * Affiliation: University of Warwick
 * Date: 11/04/2012
 * Disclaimer: Provided as is. No guarantees.
 ********************************************************************
 *
 * This file provides methods for finding hyperelliptic Belyi covers
 *
 ********************************************************************/

load "utils.m";
load "ramification.m";
load "count.m";

/*****************************************************************
 * Solution in hyperelliptic case
 *****************************************************************/

//
// TODO: Fix the following:
//
// We are still not using information about infinity
// which means we are assuming total ramification
// at infinity.
//
//
BelyiEquationsHyperellipticTotalAtInf := function(passport)
	// initialize variables
	
	assert #passport[1] eq 1;	// unfortunately, this is what we are assuming for now
								// there is only one point of ramification over infinity					
	twiceg := BelyiTwiceGenus(passport);
	assert IsEven(twiceg) and (twiceg gt 0);
	
	deg := BelyiDegree(passport);
	
	nvars0 := #passport[2];
	nvars1 := #passport[3];

	nvarsa := (deg div 2) + (IsEven(deg) select 0 else 1);			
	nvarsb := ((deg - twiceg + 1) div 2) - (IsEven(deg) select 0 else 1);
	nvarsc := twiceg;
			
	nvars := nvars0 + nvars1 
				+ nvarsa + nvarsb + nvarsc + 2;		// + 2 for separability
				// + 2;								// + 2 for mu and nu

	K := Integers();
	KK := PolynomialRing(K, nvars);
	
	// Sorting and naming variables
	disp := 0;

	vars0, varnames0, disp := FillInVars(KK, "p", nvars0, disp, 0);
	vars1, varnames1, disp := FillInVars(KK, "q", nvars1, disp, 0);
	varsa, varnamesa, disp := FillInVars(KK, "a", nvarsa, disp, 0);
	varsb, varnamesb, disp := FillInVars(KK, "b", nvarsb, disp, 0);
	varsc, varnamesc, disp := FillInVars(KK, "c", nvarsc, disp, 0);
	
	if IsEven(deg) then
		mu := 1;
		nu := 1;
		varsa[nvarsa + 1] := 1;
	else
		mu := -1;
		nu := -1;
		varsb[nvarsb + 1] := 1;
	end if;
	
	/*
	mu := KK.(disp+1);
	nu := KK.(disp+2);
	varnamesmisc := [ "mu", "nu"];
	*/

	s1 := KK.(disp+1);
	s2 := KK.(disp+2);
	varnamesmisc := ["s1", "s2"];
	
	varnames := varnames0 cat varnames1 
				cat varnamesa cat varnamesb cat varnamesc
				cat varnamesmisc;
	AssignNames(~KK, varnames);

	// Done sorting and naming variables
	
	KX<x> := PolynomialRing(KK);
	//x := KX.1;
	
	f := x^(twiceg+1) + KX ! varsc;
	//print "f :=", f;

	alpha := KX ! varsa;
	//print "alpha :=", alpha;
	
	beta := KX ! varsb;	
	//print "beta :=", beta;

	gamma := KX ! varsc;		// unused for now

	rhs0 := mu * &*[KX | (x - vars0[i])^passport[2][i] : i in [1..#passport[2]]];
	//print "rhs0 :=", rhs0;
	
	rhs1 := nu * &*[KX | (x - vars1[i])^passport[3][i] : i in [1..#passport[3]]];
	//print "rhs1 :=", rhs1;
	
	// Separability conditions
	sep1 := Discriminant(ps1) * s1 - 1
			where ps1 := &*[KX | (x - vars0[i]) : i in [1..#passport[2]]];
	sep2 := Discriminant(ps2) * s2 - 1
			where ps2 := &*[KX | (x - vars1[i]) : i in [1..#passport[3]]];

	eqn0 := alpha^2 - beta^2 * f - rhs0;
	//print "eqn0 :=", eqn0;	
	
	eqn1 := 2 * alpha - 1 - rhs0 + rhs1;
	//print "eqn1 :=", eqn1;
	
	eqns := Coefficients(eqn0) cat Coefficients(eqn1); // cat [sep1, sep2];
	
	return eqns, alpha, beta;	
end function;









BelyiEquationsHyperelliptic := function(passport)
	// initialize variables

	print "passport = ", passport;

									
	twiceg := BelyiTwiceGenus(passport);
	g := Integers() ! (twiceg / 2);


	// overflow from parity in ramification data over infinity
	over := &+[Integers() | infdata[i] mod 2 : i in [2..#infdata]]
		where infdata := passport[1];

	// target degree of polynomials in resulting equations 
	deg := BelyiDegree(passport) + over;
	

	// phi = (alpha + y * beta) / prodi			and		
	// y^2 = f
	// these are the degrees of alpha, beta and f
	degalpha := Floor(deg/2);
	degbeta := Floor((deg - 1)/2) - g;
	degf := twiceg + 1;		// could be twiceg + 2

	nvarsi := #passport[1] - 1;	// assume ramification at infinity
	nvars0 := #passport[2];
	nvars1 := #passport[3];

	// y^2 = x^{2g+1} + f_{2g-1} * x^{2g-1} + \ldots + f_0
	// we decided to depress the polynomial to decrease the dimension
	// if the resulting scheme
	nvarsf := degf - 1;

	// phi = (alpha + y * beta) / prodi	
	// alpha = a_0 + a_1 x + ... + a_degalpha x^degalpha
	// beta = b_0 + b_1 x + ... + b_degbeta x^degbeta

	if IsEven(deg) then
		nvarsa := Max(0, degalpha + 1) - 1;
		nvarsb := Max(0, degbeta + 1);
	else
		nvarsa := Max(0, degalpha + 1);
		nvarsb := Max(0, degbeta + 1) - 1;
	end if;

	
	// total number of variables 
	nvars := nvarsi + nvars0 + nvars1 
			+ nvarsf + nvarsa + nvarsb;
			// + 3;		// for separability
			// + 2;								// for mu and nu

	K := Integers();
	KK := PolynomialRing(K, nvars);
	
	// Sorting and naming variables
	disp := 0;

	varsi, varnamesi, disp := FillInVars(KK, "p", nvarsi, disp, 1);
	vars0, varnames0, disp := FillInVars(KK, "q", nvars0, disp, 0);
	vars1, varnames1, disp := FillInVars(KK, "r", nvars1, disp, 0);
	varsf, varnamesf, disp := FillInVars(KK, "f", nvarsf, disp, 0);
	varsa, varnamesa, disp := FillInVars(KK, "a", nvarsa, disp, 0);
	varsb, varnamesb, disp := FillInVars(KK, "b", nvarsb, disp, 0);
	
	if IsEven(deg) then
		mu := 1;
		nu := mu;
		//varsa[nvarsa + 1] := 1;
	else
		mu := -1;
		nu := mu;
		//varsb[nvarsb + 1] := 1;
	end if;
	
	/*
	mu := KK.(disp+1);
	nu := KK.(disp+2);
	varnamesmisc := [ "mu", "nu"];
	*/

	/*
	s1 := KK.(disp+1);
	s2 := KK.(disp+2);
	s3 := KK.(disp+3);
	varnamesmisc := ["s1", "s2", "s3"];
	*/
	
	varnames := varnamesi cat varnames0 cat varnames1 
				cat varnamesf
				cat varnamesa 
				cat varnamesb;
				//cat varnamesmisc;
	AssignNames(~KK, varnames);

	// Done sorting and naming variables
	
	KX<x> := PolynomialRing(KK);
	//x := KX.1;
	
	f := x^(twiceg+1) + KX ! varsf;
	print "f :=", f;

	alpha := KX ! varsa + (IsEven(deg) select x^nvarsa else 0);
	print "alpha :=", alpha;
	
	beta := KX ! varsb + (IsOdd(deg) select x^nvarsb else 0);	
	print "beta :=", beta;

	//gamma := KX ! varsc;
	//print "gamma :=", gamma;
	
	cancellation := &*[KX | (x - vars[i-1])^(ramd[i] mod 2) : i in [2..#ramd]]
				where vars := varsi
				where ramd := passport[1];
				
	print "cancel :=", cancellation;
	
	prodi := &*[KX | (x - vars[i-1])^Ceiling(ramd[i]/2) : i in [2..#ramd]]
				where vars := varsi
				where ramd := passport[1];
	print "prodi :=", prodi;
	
	prod0 := mu * &*[KX | (x - vars[i])^ramd[i] : i in [1..#ramd]]
				where vars := vars0
				where ramd := passport[2];
	print "prod0 :=", prod0;
	
	prod1 := nu * &*[KX | (x - vars[i])^ramd[i] : i in [1..#ramd]]
				where vars := vars1
				where ramd := passport[3];

	print "prod1 :=", prod1;
	
	// Separability conditions
	/*
	sepi := (Degree(psi) eq 0) select 0 else Discriminant(psi) * s3 - 1
			where psi := &*[KX | (x - varsi[i-1]) : i in [2..#passport[1]]];
	sep0 := Discriminant(ps1) * s1 - 1
			where ps1 := &*[KX | (x - vars0[i]) : i in [1..#passport[2]]];
	sep1 := Discriminant(ps2) * s2 - 1
			where ps2 := &*[KX | (x - vars1[i]) : i in [1..#passport[3]]];
			
	sepi := s1;		// for now we don't include these
	sep0 := s2;
	sep1 := s3;
	*/
	
	eqn0 := (alpha^2 - beta^2 * f) - prod0 * cancellation;
	print "eqn0 :=", eqn0;
	assert Degree(eqn0) lt deg;		// cancellation of leading coefficients must happen
	
	eqn1 := ((alpha - prodi)^2 - beta^2 * f) - prod1 * cancellation;
	print "eqn1 :=", eqn1;
	assert Degree(eqn1) lt deg;		// cancellation of leading coefficients must happen
		
	eqns := Coefficients(eqn0) cat Coefficients(eqn1);
			//cat [sepi, sep0, sep1];
	
	return eqns, alpha, beta, prodi;	
end function;








BelyiHyperellipticSolution := function(passport : prec := 100, deg := 12, pstart := 3)
	print "passport = ", passport;
	assert ValidatePassport(passport);
	genus := BelyiGenus(passport);
	assert genus eq 0;
	print "genus =", genus;

	ndessins := EstimateOfDessins(passport);
	print "Est Number of Dessins =", ndessins;
	
	list, alpha, beta, prodi := BelyiEquationsHyperelliptic(passport);
	print "eqns =", list;
	print "alpha =", alpha;
	print "beta =", beta;
	print "prodi =", prodi;
	print "Universe =", Universe(list);

	KK := Universe(list);
	A := AffineSpace(Universe(list));
	S := Scheme(A, list);
	print "Dimension =", Dimension(S);
	cl, S := IsCluster(S);
	assert cl;
	
	QX<x> := PolynomialRing(Rationals());
	solutions := <>;

	points := [];	
	p := pstart - 1;

	repeat	// accumulating solutions
	
		repeat	// accumulating points
			p := NextPrime(p);
			K := GF(p);
			KS := BaseChange(S, K);
			points := RationalPoints(KS);
			points := [ CastPoint(P, Integers()) : P in points];
			print "p =", p;
			print "Points =", points;
		until not IsEmpty(points);
		
		relations := [];
		lifts := [];
			
		for point in points do
			// p-adically lift a solution 
			print "Point =", point;
			tf, lift := LiftSolution(list, point, p, prec);
			if not tf then
                continue;
            end if;

            Append(~lifts, lift);
            print "Lift =", lift;
			
			// find relations between solutions
			relation := [findRelation(coord, p^prec, deg) : coord in lift];
			if Index(relation, 0) ne 0 then
				printf "Point %o failed to lift.\n", point;
				continue;
			end if;
			Append(~relations, relation);
			print "Relation =", relation;
			
			// find a common splitting field for the relations
			//nonconstrels := [rel : rel in relations | Degree(rel) gt 1];
			F := SplittingField(relation);
			elts := [[r[1] : r in Roots(rel, F)] : rel in relation];
			print "Splitting field =", F;
			print "Corresponding elements =", elts;
			
			// find one solution
			// TODO: find all possible solutions
			opt_solns := AllPossibleSelections(elts);
			
			for soln in opt_solns do	// try cacheing
				print soln;
				value := [Evaluate(eqn, soln) : eqn in list];
				if &and[v eq 0 : v in value] then
					KK := Universe(soln);
					append := true;	// verify that the solution is different from previous ones
					for subsoln in solutions do
						subKK := Universe(subsoln);
						isom, phi := IsIsomorphic(KK, subKK);
						same := false; // for now
						//&and[phi(soln[i]) eq subsoln[i] : i in [1..#soln] | important_table[i]];
						if same then
							append := false;
							break;
						end if;
					end for;
					
					//print "Solution:", soln;
					if append then
						Append(~solutions, soln);
					end if;
				end if;
			end for;
		end for;
		
	until #solutions ne 0;
	
	print "Solutions =", solutions;
	
	answers := <>;
	for soln in solutions do
		W := Universe(soln);
		WX<x> := PolynomialRing(W);
		
		alpha0 := WX ! [Evaluate(coeff, soln) : coeff in Coefficients(alpha)];
		
		beta0 := WX ! [Evaluate(coeff, soln) : coeff in Coefficients(beta)];
		
		print "function =", alpha0 / beta0;
		
		print "Field = ", W;
		
		Append(~answers, <alpha0 / beta0, W>);

		print "";
	end for;
	
	return answers;
	//return list, num, den, points, lifts, relations;
	//return 0;
end function;
