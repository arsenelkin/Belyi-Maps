// This is   belyi-7-4111-4111.m
//load "format.m";

BelyiRecords_7_4111_4111 := function()
records := [ ];
passport := [[7],[4,1,1,1],[4,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[4,1,1,1],[4,1,1,1]]
    field = Rational Field
    phi = -20*x^7 + 70*x^6 - 84*x^5 + 35*x^4
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,1,1,1],[4,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[35],[-84],[70],[-20]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;