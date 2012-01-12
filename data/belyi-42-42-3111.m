// This is   belyi-42-42-3111.m
//load "format.m";

BelyiRecords_42_42_3111 := function()
records := [ ];
passport := [[4,2],[4,2],[3,1,1,1]];

/**************** Begin Solution *********************
    passport = [[4,2],[4,2],[3,1,1,1]]
    field = Rational Field
    phi = (1/9*x^6 - 2/3*x^5 + x^4)/(x^2 - 2/3*x + 1/9)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,2],[4,2],[3,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[1],[-2/3],[1/9]],
        coeffs_r := [[1/9],[-2/3],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;