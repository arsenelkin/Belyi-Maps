// This is   belyi-41-41-311.m
//load "format.m";

BelyiRecords_41_41_311 := function()
records := [ ];
passport := [[4,1],[4,1],[3,1,1]];



/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[3,1,1]]
    field = Rational Field
    phi = (-3/5*x^5 + x^4)/(x - 3/5)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[3,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[1],[-3/5]],
        coeffs_r := [[-3/5],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;