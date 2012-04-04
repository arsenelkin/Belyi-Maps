// This is   belyi-32-32-311.m
//load "format.m";

BelyiRecords_32_32_311 := function()
records := [ ];
passport := [[3,2],[3,2],[3,1,1]];

/**************** Begin Solution *********************
    passport = [[3,2],[3,2],[3,1,1]]
    field = Rational Field
    phi = (1/25*x^5 - 2/5*x^4 + x^3)/(x^2 - 2/5*x + 1/25)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,2],[3,2],[3,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[1],[-2/5],[1/25]],
        coeffs_r := [[1/25],[-2/5],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;