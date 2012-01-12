load "utils.m";

/********************************************************************
 * Formats for the output and procedures for printing
 ********************************************************************/
 
/********************************************************************
 * Genus 0 Belyi map record type
 * The field of definition is given as ext< Rationals() | defpoly >
 * The map is given by phi = p(x) / r(x)
 ********************************************************************/

G0BelyiRecord := recformat<
                            passport:   SeqEnum,
                            defpoly:    SeqEnum,
                            coeffs_p:   SeqEnum,
                            coeffs_r:   SeqEnum,
                            field:      Fld,
                            phi:        FldFunFracSchElt,
                            genus:      RngIntElt,
                            degree:     RngIntElt                            
                            >;

IsG0BelyiRecord := function(record)
    // unfortunately, there is no comparator for record formats
    genus := assigned record`genus select record`genus else BelyiGenus(record`passport);
    return genus eq 0;
end function;

/********************************************************************
 * Hyperelliptic Belyi map record type
 * The field of definition is given as ext< Rationals() | defpoly >
 * The curve is defined over the field by   y^2 + h(x) y = f(x)
 * The map is given by phi = (p(x) + y q (x)) / r(x)
 ********************************************************************/

HypBelyiRecord := recformat<
                            passport:   SeqEnum,
                            defpoly:    SeqEnum,
                            coeffs_f:   SeqEnum,
                            coeffs_h:   SeqEnum,
                            coeffs_p:   SeqEnum,
                            coeffs_q:   SeqEnum,
                            coeffs_r:   SeqEnum,
                            field:      Fld,
                            curve:      CrvHyp,
                            phi:        FldFunFracSchElt,
                            genus:      RngIntElt,
                            degree:     RngIntElt
                            >;
                            
IsHypBelyiRecord := function(record)
    // unfortunately, there is no comparator for record formats
    genus := assigned record`genus select record`genus else BelyiGenus(record`passport);
    return genus eq 1 or genus eq 2;
end function;

/********************************************************************
 * Utilities
 ********************************************************************/

NFPolyToSeq := func< poly | [Eltseq(c) : c in Coefficients(poly)] >;

NFPolyToString := func< poly | ListOfListsToString(NFPolyToSeq(poly)) >;

ReconstituteCoeffs := func< field, list | [field | field ! coeff : coeff in list] >;

ExtractPolys := function(E, phi)
    poly_f, poly_h := HyperellipticPolynomials(E);
    poly_p, poly_q, poly_r := DecomposeHyperellipticFunction(phi);
    
    poly_a := HyperellipticNorm(phi * poly_r);
    poly_a := Numerator(Coefficients(poly_a)[1]);
    poly_b := HyperellipticNorm((phi - 1) * poly_r);
    poly_b := Numerator(Coefficients(poly_b)[1]);
    
    return poly_f, poly_h, poly_p, poly_q, poly_r, poly_a, poly_b;
end function;

/********************************************************************
 * Convert a passport, curve, and a cover into a Belyi record
 ********************************************************************/

MakeHypBelyiRecord := function(phi : 
                               passport := BelyiPassport(phi), 
                               curve := Curve(Parent(phi)),
                               field := BaseRing(curve)
                               )
    poly_f, poly_h, poly_p, poly_q, poly_r := ExtractPolys(curve, phi);
    return rec< HypBelyiRecord |
                passport := passport,
                defpoly := Coefficients(DefiningPolynomial(field)),
                coeffs_f := NFPolyToSeq(poly_f),
                coeffs_h := NFPolyToSeq(poly_h),
                coeffs_p := NFPolyToSeq(poly_p),
                coeffs_q := NFPolyToSeq(poly_q),
                coeffs_r := NFPolyToSeq(poly_r),
                field := field,
                curve := curve,
                phi := phi,
                genus := BelyiGenus(passport),
                degree := BelyiDegree(passport)
                >;
end function;

/********************************************************************
 * Convert a Belyi record into a Belyi map, curve and a field
 * of definition
 ********************************************************************/

ReadHypBelyiRecord := function(record)
    if not assigned record`field then
        QX<t> := PolynomialRing(Rationals());
        field := NumberField(QX ! record`defpoly);
    else
        field := record`field;
    end if;

    if Degree(field) gt 1 then
        AssignNames(~field, ["w"]);
    end if;

    if not assigned record`curve then
        KZ<z> := PolynomialRing(field);
        poly_h := KZ ! ReconstituteCoeffs(field, record`coeffs_h);
        poly_f := KZ ! ReconstituteCoeffs(field, record`coeffs_f);
        poly_p := KZ ! ReconstituteCoeffs(field, record`coeffs_p);
        poly_q := KZ ! ReconstituteCoeffs(field, record`coeffs_q);
        poly_r := KZ ! ReconstituteCoeffs(field, record`coeffs_r);
        curve := HyperellipticCurve(poly_f, poly_h);
    else
        curve := record`curve;
    end if;
    
    if not assigned record`phi then
        F<x, y> := FunctionField(curve);
        phi := (Evaluate(poly_p, x) + y * Evaluate(poly_q, x)) / Evaluate(poly_r, x);
    else
        phi := record`phi;
    end if;
    
    return phi, curve, field;
end function;

/********************************************************************
 * Finish loading a Belyi record by assigning the field of definition, 
 * curve, and the map.
 ********************************************************************/

FillHypBelyiRecord := procedure(~record)
    record`phi, record`curve, record`field := ReadHypBelyiRecord(record);
    record`degree := BelyiDegree(record`passport);
    record`genus := BelyiGenus(record`passport);
end procedure;

/********************************************************************
 * Compare two Belyi maps by fields.
 * Used to avoid loading duplicate records.
 ********************************************************************/

HypBelyiRecordIsEqual := function(A, B)
    return  A`passport cmpeq B`passport
        and A`defpoly  cmpeq B`defpoly
        and A`coeffs_f cmpeq B`coeffs_f
        and A`coeffs_h cmpeq B`coeffs_h
        and A`coeffs_p cmpeq B`coeffs_p
        and A`coeffs_q cmpeq B`coeffs_q
        and A`coeffs_r cmpeq B`coeffs_r;
end function;

/********************************************************************
 * Insert Belyi record into an associative array thereof
 ********************************************************************/

InsertHypBelyiRecord := procedure(~assoc, record)
    passport := record`passport;
    record`genus = BelyiGenus(passport);
    
    if IsDefined(assoc, passport) then
        for r in assoc[passport] do
            if HypBelyiRecordIsEqual(r, record) then
                return;
            end if;
        end for;
        Append(~assoc[passport], record);
    else
        assoc[passport] := [record];
    end if;
end procedure;

/********************************************************************
 * Convert a passport, curve, and a cover into a Belyi record
 ********************************************************************/

MakeG0BelyiRecord := function(phi :
                              passport := BelyiPassport(phi), 
                              curve := Curve(Parent(phi)),
                              field := BaseRing(curve)
                              )
    KX := PolynomialRing(field);
    num := KX ! Coefficients(Numerator(phi),1);
    den := KX ! Coefficients(Denominator(phi),1);
    return rec< G0BelyiRecord |
                passport := passport,
                defpoly := Coefficients(DefiningPolynomial(field)),
                coeffs_p := NFPolyToSeq(num),
                coeffs_r := NFPolyToSeq(den),
                field := field,
                phi := phi,
                genus := BelyiGenus(passport),
                degree := BelyiDegree(passport)
                >;
end function;

/********************************************************************
 * Convert a Belyi record into a curve and a cover
 ********************************************************************/

ReadG0BelyiRecord := function(record)
    if assigned record`phi then
        return record`phi;
    end if;
    
    if not assigned record`field then
        QX<t> := PolynomialRing(Rationals());
        field := NumberField(QX ! record`defpoly);
    else
        field := record`field;
    end if;
    
    if Degree(field) gt 1 then
        AssignNames(~field, ["w"]);
    end if;
    
    KZ := PolynomialRing(field);
    poly_p := KZ ! ReconstituteCoeffs(field, record`coeffs_p);
    poly_r := KZ ! ReconstituteCoeffs(field, record`coeffs_r);
    phi := poly_p / poly_r;

    curve := Curve(ProjectiveSpace(field, 1));
    F<x> := FunctionField(curve);

    return Evaluate(phi, x), curve, field;
end function;

/********************************************************************
 * Finish loading a Belyi record by assigning the field of definition, 
 * curve, and the map.
 ********************************************************************/

FillG0BelyiRecord := procedure(~record)
    record`phi, _, record`field := ReadG0BelyiRecord(record);
    record`degree := BelyiDegree(record`passport);
    record`genus := BelyiGenus(record`passport);
end procedure;

/********************************************************************
 * Compare two Belyi maps by fields.
 * Used to avoid loading duplicate records.
 ********************************************************************/

G0BelyiRecordIsEqual := function(A, B)
    return  A`passport cmpeq B`passport
        and A`defpoly  cmpeq B`defpoly
        and A`coeffs_p cmpeq B`coeffs_p
        and A`coeffs_r cmpeq B`coeffs_r;
end function;

/********************************************************************
 * Insert Belyi record into an associative array thereof
 ********************************************************************/

InsertG0BelyiRecord := procedure(~assoc, record)
    passport := record`passport;
    if IsDefined(assoc, passport) then
        for r in assoc[passport] do
            if G0BelyiRecordIsEqual(r, record) then
                return;
            end if;
        end for;
        Append(~assoc[passport], record);
    else
        assoc[passport] := [record];
    end if;
end procedure;






















/********************************************************************
 * Convert a passport, curve, and a cover into a Belyi record
 ********************************************************************/

MakeBelyiRecord := function(phi : 
                                passport := BelyiPassport(phi)
                                )
                                
    if Type(phi) cmpeq FldFunFracSchElt then
        return MakeHypBelyiRecord(phi : passport := passport);
    end if;
    
    if Type(phi) cmpeq FldFunRatElt then
        return MakeHypBelyiRecord(phi : passport := passport);
    end if;
    
    error "Invalid type in MakeBelyiRecord";
end function;

/********************************************************************
 * Convert a Belyi record into a curve and a cover
 ********************************************************************/

ReadBelyiRecord := function(record)
    if IsG0BelyiRecord(record) then
        return ReadG0BelyiRecord(record);
    elif IsHypBelyiRecord(record) then
        return ReadHypBelyiRecord(record);    
    end if;

    error "Invalid type in ReadBelyiRecord";
end function;

/********************************************************************
 * Finish loading a Belyi record by assigning the field of definition, 
 * curve, and the map.
 ********************************************************************/

FillBelyiRecord := procedure(~record)
    if IsG0BelyiRecord(record) then
        FillG0BelyiRecord(~record);
        return;
    elif IsHypBelyiRecord(record) then
        FillHypBelyiRecord(~record);    
        return;
    end if;
    
    error "Invalid type in ReadBelyiRecord";    
end procedure;

/********************************************************************
 * Compare two Belyi maps by fields.
 * Used to avoid loading duplicate records.
 ********************************************************************/

BelyiRecordIsEqual := function(A, B)
    if IsG0BelyiRecord(A) and IsG0BelyiRecord(B) then
        G0BelyiRecordIsEqual(A, B);
    end if;
    
    if IsHypBelyiRecord(A) and IsHypBelyiRecord(B) then
        HypBelyiRecordIsEqual(A, B);
    end if;

    return false;
end function;

InsertBelyiRecord := procedure(~D, record)
    passport := record`passport;
    if IsDefined(D, passport) then
        for r in D[passport] do
            if BelyiRecordIsEqual(r, record) then
                return;
            end if;
        end for;
        Append(~D[passport], record);
    else
        D[passport] := [record];
    end if;
end procedure;

/********************************************************************
 * Name of the database containing Belyi maps with desired passport
 ********************************************************************/

BelyiPassportToCompactString := function(passport, separator)
    result := "";
    for list in passport do
        result cat:= separator;
        for i in list do
            result cat:= Sprintf("%o", i);
        end for;
    end for;
    return result;
end function;

BelyiFileName := function(passport)
    result := "belyi";
    result cat:= BelyiPassportToCompactString(passport, "-");
    result cat:= ".m";
    return result;
end function;

/********************************************************************
 * The number of Belyi maps with a given passport
 ********************************************************************/

NumberOfBelyiMaps := function(DB, passport)    
    ordered := NormalizeBelyiPassport(passport);
    return IsDefined(DB, ordered) select #DB[ordered] else 0;
end function;

/********************************************************************
 * Obtain the i-th Belyi map with a given passport
 ********************************************************************/

BelyiMap := function(DB, passport, i)
    ordered, alpha := SortingMobiusTransform(passport);
    record := DB[ordered][i];
    //FillBelyiRecord(~DB[ordered][i]);
    phi := ReadBelyiRecord(record);
    return Evaluate(alpha, phi);
end function;

