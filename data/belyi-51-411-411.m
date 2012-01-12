// This is   belyi-51-411-411.m
//load "format.m";

BelyiRecords_51_411_411 := function()
records := [ ];
passport := [[5,1],[4,1,1],[4,1,1]];



/**************** Begin Solution *********************
    passport = [[5,1],[4,1,1],[4,1,1]]
    field = Rational Field
    phi = (x^6 - 3*x^5 + 5/2*x^4)/(x - 1/2)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[4,1,1],[4,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[5/2],[-3],[1]],
        coeffs_r := [[-1/2],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;