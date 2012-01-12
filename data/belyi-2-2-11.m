// This is   belyi-2-2-11.m
//load "format.m";

BelyiRecords_2_2_11 := function()
records := [ ];
passport := [[2],[2],[1,1]];

/**************** Begin Solution *********************
    passport = [[2],[2],[1,1]]
    field = Rational Field
    phi = x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[2],[2],[1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
