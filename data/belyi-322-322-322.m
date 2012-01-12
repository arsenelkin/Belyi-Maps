// This is   belyi-322-322-322.m
//load "format.m";

BelyiRecords_322_322_322 := function()
records := [ ];
passport := [[3,2,2],[3,2,2],[3,2,2]];



/**************** Begin Solution *********************
    passport = [[3,2,2],[3,2,2],[3,2,2]]
    field = Rational Field
    phi = (16/49*x^7 - 8/7*x^6 + 15/7*x^5 - 2*x^4 + x^3)/(x^4 - 2*x^3 + 15/7*x^2 - 8/7*x + 16/49)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,2,2],[3,2,2],[3,2,2]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[1],[-2],[15/7],[-8/7],[16/49]],
        coeffs_r := [[16/49],[-8/7],[15/7],[-2],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
