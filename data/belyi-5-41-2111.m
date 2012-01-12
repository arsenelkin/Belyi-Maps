// This is   belyi-5-41-2111.m
//load "format.m";

BelyiRecords_5_41_2111 := function()
records := [ ];
passport := [[5],[4,1],[2,1,1,1]];

/**************** Begin Solution *********************
    passport = [[5],[4,1],[2,1,1,1]]
    field = Rational Field
    phi = -4*x^5 + 5*x^4
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[4,1],[2,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[5],[-4]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;