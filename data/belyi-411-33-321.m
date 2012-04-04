// This is   belyi-411-33-321.m
//load "format.m";

BelyiRecords_411_33_321 := function()
records := [ ];
passport := [[4,1,1],[3,3],[3,2,1]];

/**************** Begin Solution *********************
    passport = [[4,1,1],[3,3],[3,2,1]]
    field = Number Field with defining polynomial z^2 - 10 over the Rational Field
    phi = (1/135*(44*w + 161)*x^6 + 1/45*(-62*w - 260)*x^5 + 1/9*(16*w + 88)*x^4 + 1/27*(-16*w - 160)*x^3)/(x^2 + 1/5*(2*w - 12)*x + 1/15*(-4*w + 10))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,1,1],[3,3],[3,2,1]],
        p        := 0,
        defpoly  := [-10,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-160/27,-16/27],[88/9,16/9],[-52/9,-62/45],[161/135,44/135]],
        coeffs_r := [[2/3,-4/15],[-12/5,2/5],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

