// This is   belyi-6-411-3111.m
//load "format.m";

BelyiRecords_6_411_3111 := function()
records := [ ];
passport := [[6],[4,1,1],[3,1,1,1]];



/**************** Begin Solution *********************
    passport = [[6],[4,1,1],[3,1,1,1]]
    field = Rational Field
    phi = 10*x^6 - 24*x^5 + 15*x^4
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6],[4,1,1],[3,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[15],[-24],[10]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;