// This is   belyi-7-43-211111.m
//load "format.m";

BelyiRecords_7_43_211111 := function()
records := [ ];
passport := [[7],[4,3],[2,1,1,1,1,1]];



/**************** Begin Solution *********************
    passport = [[7],[4,3],[2,1,1,1,1,1]]
    field = Rational Field
    phi = -64/27*x^7 + 112/9*x^6 - 196/9*x^5 + 343/27*x^4
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,3],[2,1,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[343/27],[-196/9],[112/9],[-64/27]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;