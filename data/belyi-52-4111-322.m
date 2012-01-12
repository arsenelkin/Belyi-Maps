// This is   belyi-52-4111-322.m
//load "format.m";

BelyiRecords_52_4111_322 := function()
records := [ ];
passport := [[5,2],[4,1,1,1],[3,2,2]];



/**************** Begin Solution *********************
    passport = [[5,2],[4,1,1,1],[3,2,2]]
    field = Rational Field
    phi = (9/784*x^7 + 3/112*x^6 + 13/112*x^5 - 15/112*x^4)/(x^2 - 12/7*x + 36/49)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5,2],[4,1,1,1],[3,2,2]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[-15/112],[13/112],[3/112],[9/784]],
        coeffs_r := [[36/49],[-12/7],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;