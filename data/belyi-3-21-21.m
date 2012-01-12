// This is   belyi-3-21-21.m
//load "format.m";

BelyiRecords_3_21_21 := function()
records := [ ];
passport := [[3],[2,1],[2,1]];

/**************** Begin Solution *********************
    passport = [[3],[2,1],[2,1]]
    field = Rational Field
    phi = -2*x^3 + 3*x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3],[2,1],[2,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[3],[-2]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
