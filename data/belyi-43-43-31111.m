// This is   belyi-43-43-31111.m
//load "format.m";

BelyiRecords_43_43_31111 := function()
records := [ ];
passport := [[4,3],[4,3],[3,1,1,1,1]];



/**************** Begin Solution *********************
    passport = [[4,3],[4,3],[3,1,1,1,1]]
    field = Rational Field
    phi = (-1/343*x^7 + 3/49*x^6 - 3/7*x^5 + x^4)/(x^3 - 3/7*x^2 + 3/49*x - 1/343)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,3],[4,3],[3,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[1],[-3/7],[3/49],[-1/343]],
        coeffs_r := [[-1/343],[3/49],[-3/7],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/


return records, passport;
end function;