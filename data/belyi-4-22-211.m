// This is   belyi-4-22-211.m
//load "format.m";

BelyiRecords_4_22_211 := function()
records := [ ];
passport := [[4],[2,2],[2,1,1]];

/**************** Begin Solution *********************
    passport = [[4],[2,2],[2,1,1]]
    field = Rational Field
    phi = x^4 - 4*x^3 + 4*x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4],[2,2],[2,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[4],[-4],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
