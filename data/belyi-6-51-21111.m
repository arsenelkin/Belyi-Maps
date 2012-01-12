// This is   belyi-6-51-21111.m
//load "format.m";

BelyiRecords_6_51_21111 := function()
records := [ ];
passport := [[6],[5,1],[2,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6],[5,1],[2,1,1,1,1]]
    field = Rational Field
    phi = -5*x^6 + 6*x^5
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6],[5,1],[2,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[6],[-5]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;