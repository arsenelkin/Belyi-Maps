// This is   belyi-31-31-31.m
//load "format.m";

BelyiRecords_31_31_31 := function()
records := [ ];
passport := [[3,1],[3,1],[3,1]];

/**************** Begin Solution *********************
    passport = [[3,1],[3,1],[3,1]]
    field = Rational Field
    map = (-1/2*x^4 + x^3)/(x - 1/2)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,1],[3,1],[3,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[1],[-1/2]],
        coeffs_r := [[-1/2],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;