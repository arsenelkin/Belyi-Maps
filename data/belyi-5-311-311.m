// This is   belyi-5-311-311.m
//load "format.m";

BelyiRecords_5_311_311 := function()
records := [ ];
passport := [[5],[3,1,1],[3,1,1]];

/**************** Begin Solution *********************
    passport = [[5],[3,1,1],[3,1,1]]
    field = Rational Field
    phi = 6*x^5 - 15*x^4 + 10*x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[3,1,1],[3,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[10],[-15],[6]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;