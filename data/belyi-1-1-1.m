// This is   belyi-1-1-1.m
//load "format.m";

BelyiRecords_1_1_1 := function()
records := [ ];
passport := [[1],[1],[1]];

/**************** Begin Solution *********************
    passport = [[1],[1],[1]]
    field = Rational Field
    phi = x
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[1],[1],[1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
