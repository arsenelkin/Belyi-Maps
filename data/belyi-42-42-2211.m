// This is   belyi-42-42-2211.m
//load "format.m";

BelyiRecords_42_42_2211 := function()
records := [ ];
passport := [[4,2],[4,2],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[4,2],[4,2],[2,2,1,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 4*z - 2 over the Rational Field
    phi = (1/9*(4*w^3 - 8*w^2 - 4*w + 17)*x^6 + 1/3*(-6*w^3 + 10*w^2 + 6*w - 22)*x^5 + (2*w^3 - 3*w^2 - 2*w + 7)*x^4)/(x^2 + 1/3*(2*w^3 - 2*w^2 - 2*w + 2)*x + 1/9*(-2*w^3 + w^2 + 2*w - 1))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2],[4,2],[2,2,1,1]],
        p        := 0,
        defpoly  := [-2,4,0,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[7,-2,-3,2],[-22/3,2,10/3,-2],[17/9,-4/9,-8/9,4/9]],
        coeffs_r := [[-1/9,2/9,1/9,-2/9],[2/3,-2/3,-2/3,2/3],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

