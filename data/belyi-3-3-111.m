// This is   belyi-3-3-111.m
//load "format.m";

BelyiRecords_3_3_111 := function()
records := [ ];
passport := [[3],[3],[1,1,1]];

/**************** Begin Solution *********************
    passport = [[3],[3],[1,1,1]]
    field = Rational Field
    phi = x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3],[3],[1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;