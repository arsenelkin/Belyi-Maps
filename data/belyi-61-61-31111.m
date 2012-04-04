// This is   belyi-61-61-31111.m
//load "format.m";

BelyiRecords_61_61_31111 := function()
records := [ ];
passport := [[6,1],[6,1],[3,1,1,1,1]];



/**************** Begin Solution *********************
    passport = [[6,1],[6,1],[3,1,1,1,1]]
    field = Rational Field
    phi = (-5/7*x^7 + x^6)/(x - 5/7)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[6,1],[3,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[0],[1],[-5/7]],
        coeffs_r := [[-5/7],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
