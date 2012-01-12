// This is   belyi-4-31-211.m
//load "format.m";

BelyiRecords_4_31_211 := function()
records := [ ];
passport := [[4],[3,1],[2,1,1]];

/**************** Begin Solution *********************
    passport = [[4],[3,1],[2,1,1]]
    field = Rational Field
    phi = -3*x^4 + 4*x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4],[3,1],[2,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[4],[-3]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
