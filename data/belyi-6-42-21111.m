// This is   belyi-6-42-2111.m
//load "format.m";

BelyiRecords_6_42_21111 := function()
records := [ ];
passport := [[6],[4,2],[2,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,1,1,1,1]]
    field = Rational Field
    phi = 4*x^6 - 12*x^5 + 9*x^4
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6],[4,2],[2,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[9],[-12],[4]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;