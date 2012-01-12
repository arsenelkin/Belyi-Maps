// This is   belyi-6-6-111111.m
//load "format.m";

BelyiRecords_6_6_111111 := function()
records := [ ];
passport := [[6],[6],[1,1,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6],[6],[1,1,1,1,1,1]]
    field = Rational Field
    phi = x^6
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6],[6],[1,1,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[0],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;