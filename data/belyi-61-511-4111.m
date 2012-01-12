// This is   belyi-61-511-4111.m
//load "format.m";

BelyiRecords_61_511_4111 := function()
records := [ ];
passport := [[6,1],[5,1,1],[4,1,1,1]];



/**************** Begin Solution *********************
    passport = [[6,1],[5,1,1],[4,1,1,1]]
    field = Rational Field
    phi = (10/7*x^7 - 4*x^6 + 3*x^5)/(x - 4/7)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[5,1,1],[4,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[3],[-4],[10/7]],
        coeffs_r := [[-4/7],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
