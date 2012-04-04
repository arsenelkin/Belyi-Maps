// This is   belyi-61-61-22111.m
//load "format.m";

BelyiRecords_61_61_22111 := function()
records := [ ];
passport := [[6,1],[6,1],[2,2,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6,1],[6,1],[2,2,1,1,1]]
    field = Number Field with defining polynomial z^8 + 2*z^7 + 4*z^6 + 6*z^5 + 9*z^4 + 6*z^3 + 4*z^2 + 2*z + 1 over the Rational Field
    phi = (1/7*(-6*w^7 + 36*w^2 - 35)*x^7 + (w^7 - 6*w^2 + 6)*x^6)/(x + 1/7*(w^7 - 6*w^2))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[6,1],[2,2,1,1,1]],
        p        := 0,
        defpoly  := [1,2,4,6,9,6,4,2,1],
        coeffs_p := [[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0],[6,0,-6,0,0,0,0,1],[-5,0,36/7,0,0,0,0,-6/7]],
        coeffs_r := [[0,0,-6/7,0,0,0,0,1/7],[1,0,0,0,0,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

