// This is   belyi-6-3111-222.m
//load "format.m";

BelyiRecords_6_3111_222 := function()
records := [ ];
passport := [[6],[3,1,1,1],[2,2,2]];



/**************** Begin Solution *********************
    passport = [[6],[3,1,1,1],[2,2,2]]
    field = Rational Field
    phi = -x^6 + 2*x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6],[3,1,1,1],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[2],[0],[0],[-1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;