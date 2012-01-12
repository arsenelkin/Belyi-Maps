// This is   belyi-5-32-2111.m
//load "format.m";

BelyiRecords_5_32_2111 := function()
records := [ ];
passport := [[5],[3,2],[2,1,1,1]];

/**************** Begin Solution *********************
    passport = [[5],[3,2],[2,1,1,1]]
    field = Rational Field
    phi = 9/4*x^5 - 15/2*x^4 + 25/4*x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[3,2],[2,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[25/4],[-15/2],[9/4]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;