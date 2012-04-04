// This is   belyi-42-411-321.m
//load "format.m";

BelyiRecords_42_411_321 := function()
records := [ ];
passport := [[4,2],[4,1,1],[3,2,1]];

/**************** Begin Solution *********************
    passport = [[4,2],[4,1,1],[3,2,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 6*z^2 - 10*z - 1 over the Rational Field
    phi = (1/225*(56*w^3 - 14*w^2 + 324*w + 7)*x^6 + 1/75*(-46*w^3 + 4*w^2 - 264*w - 32)*x^5 + 1/15*(6*w^3 + w^2 + 34*w + 12)*x^4)/(x^2 + 1/75*(2*w^3 + 12*w^2 + 8*w - 56)*x + 1/225*(2*w^3 - 23*w^2 + 18*w + 34))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2],[4,1,1],[3,2,1]],
        p        := 0,
        defpoly  := [-1,-10,6,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[4/5,34/15,1/15,2/5],[-32/75,-88/25,4/75,-46/75],[7/225,36/25,-14/225,56/225]],
        coeffs_r := [[34/225,2/25,-23/225,2/225],[-56/75,8/75,4/25,2/75],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

