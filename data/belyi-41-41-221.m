// This is   belyi-41-41-221.m
//load "format.m";

BelyiRecords_41_41_221 := function()
records := [ ];
passport := [[4,1],[4,1],[2,2,1]];



/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[2,2,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 2*z + 1 over the Rational Field
    phi = (1/5*(-4*w^2 + 12*w - 11)*x^5 + (w^2 - 3*w + 3)*x^4)/(x + 1/5*(w^2 - 3*w - 1))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[2,2,1]],
        defpoly  := [1,2,0,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[3,-3,1,0],[-11/5,12/5,-4/5,0]],
        coeffs_r := [[-1/5,-3/5,1/5,0],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[2,2,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 2*z + 1 over the Rational Field
    phi = (1/5*(4*w^3 - 4*w^2 - 8*w - 3)*x^5 + (-w^3 + w^2 + 2*w + 1)*x^4)/(x + 1/5*(-w^3 + w^2 + 2*w - 3))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[2,2,1]],
        defpoly  := [1,2,0,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[1,2,1,-1],[-3/5,-8/5,-4/5,4/5]],
        coeffs_r := [[-3/5,2/5,1/5,-1/5],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[2,2,1]]
    field = Number Field with defining polynomial z^4 + 2*z^3 + 4*z^2 + 2*z + 1 over the Rational Field
    phi = (1/5*(-4*w^3 + 1)*x^5 + w^3*x^4)/(x + 1/5*(w^3 - 4))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[2,2,1]],
        defpoly  := [1,2,4,2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,1],[1/5,0,0,-4/5]],
        coeffs_r := [[-4/5,0,0,1/5],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[2,2,1]]
    field = Number Field with defining polynomial z^4 + 2*z^3 + 4*z^2 + 2*z + 1 over the Rational Field
    phi = (1/5*(-8*w^2 - 12*w - 23)*x^5 + (2*w^2 + 3*w + 6)*x^4)/(x + 1/5*(2*w^2 + 3*w + 2))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[2,2,1]],
        defpoly  := [1,2,4,2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[6,3,2,0],[-23/5,-12/5,-8/5,0]],
        coeffs_r := [[2/5,3/5,2/5,0],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[2,2,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 4*z^2 - 4*z + 2 over the Rational Field
    phi = (1/5*(-8*w^2 + 4*w - 19)*x^5 + (2*w^2 - w + 5)*x^4)/(x + 1/5*(2*w^2 - w + 1))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[2,2,1]],
        defpoly  := [2,-4,4,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[5,-1,2,0],[-19/5,4/5,-8/5,0]],
        coeffs_r := [[1/5,-1/5,2/5,0],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[4,1],[2,2,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 4*z^2 - 4*z + 2 over the Rational Field
    phi = (1/5*(-4*w^3 + 12*w^2 - 12*w + 5)*x^5 + (w^3 - 3*w^2 + 3*w - 1)*x^4)/(x + 1/5*(w^3 - 3*w^2 + 3*w - 5))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[4,1],[2,2,1]],
        defpoly  := [2,-4,4,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[-1,3,-3,1],[1,-12/5,12/5,-4/5]],
        coeffs_r := [[-1,3/5,-3/5,1/5],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;