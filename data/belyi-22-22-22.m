// This is   belyi-22-22-22.m
//load "format.m";

BelyiRecords_22_22_22 := function()
records := [ ];
passport := [[2,2],[2,2],[2,2]];



/**************** Begin Solution *********************
    passport = [[2,2],[2,2],[2,2]]
    field = Number Field with defining polynomial z^2 - z + 1/2 over the Rational Field
    map = (1/2*(-2*w + 1)*x^4 + 2*w*x^3 - x^2)/(x^2 + (2*w - 2)*x + 1/2*(-2*w + 1))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[2,2],[2,2],[2,2]],
        defpoly  := [1/2,-1,1],
        coeffs_p := [[0,0],[0,0],[-1,0],[0,2],[1/2,-1]],
        coeffs_r := [[1/2,-1],[-2,2],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[2,2],[2,2],[2,2]]
    field = Number Field with defining polynomial z^2 - z + 1/2 over the Rational Field
    map = (1/2*(2*w - 1)*x^4 + (-2*w + 2)*x^3 - x^2)/(x^2 - 2*w*x + 1/2*(2*w - 1))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[2,2],[2,2],[2,2]],
        defpoly  := [1/2,-1,1],
        coeffs_p := [[0,0],[0,0],[-1,0],[2,-2],[-1/2,1]],
        coeffs_r := [[-1/2,1],[0,-2],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;