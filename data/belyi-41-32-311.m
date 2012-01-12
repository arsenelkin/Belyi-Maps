// This is   belyi-41-32-311.m
//load "format.m";

BelyiRecords_41_32_311 := function()
records := [ ];
passport := [[4,1],[3,2],[3,1,1]];



/**************** Begin Solution *********************
    passport = [[4,1],[3,2],[3,1,1]]
    field = Number Field with defining polynomial z^2 - 6 over the Rational Field
    phi = (1/5*(4*w - 9)*x^5 + (-2*w + 4)*x^4 + 1/3*(4*w - 6)*x^3)/(x + 1/15*(2*w - 12))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[3,2],[3,1,1]],
        defpoly  := [-6,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-2,4/3],[4,-2],[-9/5,4/5]],
        coeffs_r := [[-4/5,2/15],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[3,2],[3,1,1]]
    field = Number Field with defining polynomial z^2 - 6 over the Rational Field
    phi = (1/5*(-4*w - 9)*x^5 + (2*w + 4)*x^4 + 1/3*(-4*w - 6)*x^3)/(x + 1/15*(-2*w - 12))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[3,2],[3,1,1]],
        defpoly  := [-6,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-2,-4/3],[4,2],[-9/5,-4/5]],
        coeffs_r := [[-4/5,-2/15],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;