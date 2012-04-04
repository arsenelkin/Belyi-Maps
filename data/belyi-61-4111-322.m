// This is   belyi-61-4111-322.m
//load "format.m";

BelyiRecords_61_4111_322 := function()
records := [ ];
passport := [[6,1],[4,1,1,1],[3,2,2]];

/**************** Begin Solution *********************
    passport = [[6,1],[4,1,1,1],[3,2,2]]
    field = Number Field with defining polynomial z^3 + 3*z - 6 over the Rational Field
    phi = (1/28*(-27*w^2 + 18*w + 19)*x^7 + 1/4*(7*w^2 - 10*w + 1)*x^6 + 1/20*(-3*w^2 + 66*w - 81)*x^5 + 1/4*(-3*w^2 - 6*w + 15)*x^4)/(x + 1/35*(-4*w^2 - 2*w - 13))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[4,1,1,1],[3,2,2]],
        p        := 0,
        defpoly  := [-6,3,0,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[15/4,-3/2,-3/4],[-81/20,33/10,-3/20],[1/4,-5/2,7/4],[19/28,9/14,-27/28]],
        coeffs_r := [[-13/35,-2/35,-4/35],[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

