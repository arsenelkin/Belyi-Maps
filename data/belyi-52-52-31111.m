// This is   belyi-52-52-31111.m
//load "format.m";

BelyiRecords_52_52_31111 := function()
records := [ ];
passport := [[5,2],[5,2],[3,1,1,1,1]];



/**************** Begin Solution *********************
    passport = [[5,2],[5,2],[3,1,1,1,1]]
    field = Rational Field
    phi = (9/49*x^7 - 6/7*x^6 + x^5)/(x^2 - 6/7*x + 9/49)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5,2],[5,2],[3,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[1],[-6/7],[9/49]],
        coeffs_r := [[9/49],[-6/7],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;