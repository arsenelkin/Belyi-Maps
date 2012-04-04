// This is   belyi-61-421-4111.m
//load "format.m";

BelyiRecords_61_421_4111 := function()
records := [ ];
passport := [[6,1],[4,2,1],[4,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6,1],[4,2,1],[4,1,1,1]]
    field = Number Field with defining polynomial z^4 + 2*z^2 + 21 over the Rational Field
    phi = (1/7*(4*w^3 - 2*w^2 - 6*w + 38)*x^7 + (-2*w^3 + w^2 + 3*w - 18)*x^6 + 1/5*(12*w^3 - 6*w^2 - 18*w + 99)*x^5 + 1/2*(-2*w^3 + w^2 + 3*w - 14)*x^4)/(x + 1/70*(-2*w^3 + w^2 + 3*w - 54))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[4,2,1],[4,1,1,1]],
        p        := 0,
        defpoly  := [21,0,2,0,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[-7,3/2,1/2,-1],[99/5,-18/5,-6/5,12/5],[-18,3,1,-2],[38/7,-6/7,-2/7,4/7]],
        coeffs_r := [[-27/35,3/70,1/70,-1/35],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

