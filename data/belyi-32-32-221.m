// This is   belyi-32-32-221.m
//load "format.m";

BelyiRecords_32_32_221 := function()
records := [ ];
passport := [[3,2],[3,2],[2,2,1]];

/**************** Begin Solution *********************
    passport = [[3,2],[3,2],[2,2,1]]
    field = Number Field with defining polynomial z^2 + z + 4 over the Rational Field
    phi = (1/100*(-33*w - 20)*x^5 + 1/10*(7*w + 12)*x^4 + 1/4*(-w - 4)*x^3)/(x^2 + 1/5*(2*w - 6)*x + 1/25*(-7*w + 5))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,2],[3,2],[2,2,1]],
        defpoly  := [4,1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-1,-1/4],[6/5,7/10],[-1/5,-33/100]],
        coeffs_r := [[1/5,-7/25],[-6/5,2/5],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3,2],[3,2],[2,2,1]]
    field = Number Field with defining polynomial z^2 + z + 4 over the Rational Field
    phi = (1/100*(33*w + 13)*x^5 + 1/10*(-7*w + 5)*x^4 + 1/4*(w - 3)*x^3)/(x^2 + 1/5*(-2*w - 8)*x + 1/25*(7*w + 12))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[3,2],[3,2],[2,2,1]],
        defpoly  := [4,1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-3/4,1/4],[1/2,-7/10],[13/100,33/100]],
        coeffs_r := [[12/25,7/25],[-8/5,-2/5],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;