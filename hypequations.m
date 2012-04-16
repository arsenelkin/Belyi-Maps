/********************************************************************
 * Author: Arsen Elkin
 * Affiliation: University of Warwick
 * Date: 11/04/2012
 * Disclaimer: Provided as is. No guarantees.
 ********************************************************************
 *
 ********************************************************************/

load "utils.m";
load "factor.m";
load "separate.m";

/********************************************************************
 * Make a system from polynimials f, p, q, and r
 * We have
 *    C: y^2 = f(x)
 *    phi = (p(x) + y q(x)) / r(x)
 ********************************************************************/

MakeSystem := function(poly_f, poly_p, poly_q, poly_r)
    system0 := poly_p^2 - poly_f * poly_q^2 - poly_a;
    system1 := (poly_p - poly_r)^2 - poly_f * poly_q^2 - poly_b - system0;
    return MapCar2(Coefficients, [system0, system1]);       // Get coefficients of system0 and system1
end function;


BelyiEquationsHyperellipticW := function(E, phi :
                                            factorize := true,
                                            separate := true,
                                            nconditions := 0)
    ZZ := Integers();
    KZ<z> := PolynomialRing(BaseRing(E));
    K := ZZ;
    zero := Zero(K);
    one := One(K);

    poly_f, poly_h, poly_p, poly_q, poly_r, poly_a, poly_b := ExtractHypPolys(E, phi);

    assert IsZero(poly_h); // we don't know how to handle this case yet

    polys := [poly_f, poly_p, poly_q, poly_r, poly_a, poly_b];
    fact  := [factorize : poly in polys];
    newpolys := LiftPolynomialsViaFactorization(K, polys : FactorsFrom := fact);
    new_f, new_p, new_q, new_r, new_a, new_b := Explode(newpolys);
    
    // new_a and new_b are not used further, and are only here for debugging purposes
    //print new_f, new_p, new_q, new_r, new_a, new_b;

    /* Creating systems */
    eqns := &join(MakeSystem(poly_f, poly_p, poly_q, poly_r));

    // Adjusting the dimension of the resulting scheme
    // TODO: something better is needed
    
    leadp := ZZ ! LeadingCoefficient(poly_p);
    leadf := ZZ ! LeadingCoefficient(poly_f);
    preleadf := ZZ ! Coefficient(poly_f, Degree(poly_f) - 1);
    leadr := ZZ ! LeadingCoefficient(poly_r);

    eqns cat:= nconditions ge -3 select
        [LeadingCoefficient(new_f) - leadf] else [];
    eqns cat:= nconditions ge -2 select
        [LeadingCoefficient(new_r) - leadr] else [];
    eqns cat:= nconditions ge -1 select
        [LeadingCoefficient(new_p) - leadp] else [];
            
    for i in [0 .. nconditions] do
        j := Degree(new_f) - 1 - i;
        if j ge 0 then
            newc := Coefficient(new_f, j);
            oldc := Integers() ! Coefficient(poly_f, j);
            eqns cat:= [newc - oldc];  // depress the cubic  
        end if;
    end for;
    // Done adjusting the dimension of the resulting scheme        


    /* Separability conditions */
    prod_fact := &*newfactors;
	sep := [Resultant(prod_fact, poly) : poly in [newother_r, newother_a, newother_b]]
                cat [Discriminant(new_f)];
    
    /* compiling the point corresponding to the initial data */
    point := &cat[TruncatedCoefficients(poly) : poly in factors]
        cat &cat[Coefficients(poly) : poly in [other_f, other_p, other_q, other_r, other_a, other_b]];

    /* joining separability conditions with the equations */
    if separate then
        eqns, phi := AppendSeparabilityConditions(eqns, sep);       
        sep := [ KK | ];            // these have already been incorporate into eqns
        
        // Add coordinates to the point to account for the separability variables
        // TODO: Fix this. There other solutions possible for separability condition, 
        // and by limiting ourselves to this one, we lose global solution.
        point cat:= [ K ! 0 : i in [1 .. #sep] ];
        
        KK := Universe(eqns);
        KKX := PolynomialRing(KK);
        
        // Map old polynomials to the extended polynomial ring
        LiftCoeffs := func< poly | KKX ! [KK | phi(coeff) : coeff in Coefficients(poly)] >;
        new_f, new_p, new_q, new_r := Explode(MapCar(LiftCoeffs, [new_f, new_p, new_q, new_r]));
    end if;
    
    /* We are done */
	return eqns, sep, new_f, new_p, new_q, new_r, CastPoint(point, ZZ);
end function;
