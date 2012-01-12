// This is   belyi-6-33-21111.m
//load "format.m";

BelyiRecords_6_33_21111 := function()
records := [ ];
passport := [[6],[3,3],[2,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6],[3,3],[2,1,1,1,1]]
    field = Rational Field
    phi = -x^6 + 6*x^5 - 12*x^4 + 8*x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6],[3,3],[2,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[8],[-12],[6],[-1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
