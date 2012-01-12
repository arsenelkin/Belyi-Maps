// This is   belyi-5-5-11111.m
//load "format.m";

BelyiRecords_5_5_11111 := function()
records := [ ];
passport := [[5],[5],[1,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[5],[5],[1,1,1,1,1]]
    field = Rational Field
    phi = x^5
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[5],[1,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;