// This is   belyi-31-31-22.m
//load "format.m";

BelyiRecords_31_31_22 := function()
records := [ ];
passport := [[3,1],[3,1],[2,2]];

/**************** Begin Solution *********************
    passport = [[3,1],[3,1],[2,2]]
    field = Number Field with defining polynomial z^2 - 3 over the Rational Field
    phi = (1/4*(-3*w - 5)*x^4 + (w + 2)*x^3)/(x + 1/4*(w - 1))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,1],[3,1],[2,2]],
        defpoly  := [-3,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[2,1],[-5/4,-3/4]],
        coeffs_r := [[-1/4,1/4],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3,1],[3,1],[2,2]]
    field = Number Field with defining polynomial z^2 - 3 over the Rational Field
    phi = (1/4*(3*w - 5)*x^4 + (-w + 2)*x^3)/(x + 1/4*(-w - 1))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,1],[3,1],[2,2]],
        defpoly  := [-3,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[2,-1],[-5/4,3/4]],
        coeffs_r := [[-1/4,-1/4],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;