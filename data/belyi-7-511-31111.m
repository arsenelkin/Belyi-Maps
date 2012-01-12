// This is   belyi-7-511-31111.m
//load "format.m";

BelyiRecords_7_511_31111 := function()
records := [ ];
passport := [[7],[5,1,1],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[5,1,1],[3,1,1,1,1]]
    field = Rational Field
    phi = 15*x^7 - 35*x^6 + 21*x^5
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[5,1,1],[3,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[21],[-35],[15]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;