// This is   belyi-511-511-511.m
//load "format.m";

BelyiRecords_511_511_511 := function()
records := [ ];
passport := [[5,1,1],[5,1,1],[5,1,1]];



/**************** Begin Solution *********************
    passport = [[5,1,1],[5,1,1],[5,1,1]]
    field = Rational Field
    phi = (2/7*x^7 - x^6 + x^5)/(x^2 - x + 2/7)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[5,1,1],[5,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[1],[-1],[2/7]],
        coeffs_r := [[2/7],[-1],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;