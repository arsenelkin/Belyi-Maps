// This is   belyi-61-4111-331.m
//load "format.m";

BelyiRecords_61_4111_331 := function()
records := [ ];
passport := [[6,1],[4,1,1,1],[3,3,1]];

/**************** Begin Solution *********************
    passport = [[6,1],[4,1,1,1],[3,3,1]]
    field = Number Field with defining polynomial z^4 + 6*z^2 + 24*z + 24 over the Rational Field
    phi = (1/56*(2*w^3 + 21*w^2 - 48*w + 290)*x^7 + 1/8*(2*w^3 - 9*w^2 + 32*w - 42)*x^6 + 1/8*(-6*w^3 + 9*w^2 - 48*w - 78)*x^5 + 1/8*(4*w^3 - 3*w^2 + 24*w + 90)*x^4)/(x + 1/28*(w^3 + 4*w + 12))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[4,1,1,1],[3,3,1]],
        p        := 0,
        defpoly  := [24,24,6,0,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[45/4,3,-3/8,1/2],[-39/4,-6,9/8,-3/4],[-21/4,4,-9/8,1/4],[145/28,-6/7,3/8,1/28]],
        coeffs_r := [[3/7,1/7,0,1/28],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

