// This is   belyi-51-51-3111.m
//load "format.m";

BelyiRecords_51_51_3111 := function()
records := [ ];
passport := [[5,1],[5,1],[3,1,1,1]];



/**************** Begin Solution *********************
    passport = [[5,1],[5,1],[3,1,1,1]]
    field = Rational Field
    phi = (-2/3*x^6 + x^5)/(x - 2/3)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[5,1],[3,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[1],[-2/3]],
        coeffs_r := [[-2/3],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;