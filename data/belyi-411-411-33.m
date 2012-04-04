// This is   belyi-411-411-33.m
//load "format.m";

BelyiRecords_411_411_33 := function()
records := [ ];
passport := [[4,1,1],[4,1,1],[3,3]];

/**************** Begin Solution *********************
    passport = [[4,1,1],[4,1,1],[3,3]]
    field = Rational Field
    phi = (-x^6 + 3*x^4)/(3*x^2 - 1)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,1,1],[4,1,1],[3,3]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[3],[0],[-1]],
        coeffs_r := [[-1],[0],[3]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[4,1,1],[4,1,1],[3,3]]
    field = Number Field with defining polynomial z^2 - 15 over the Rational Field
    phi = (1/15*(8*w + 31)*x^6 + 1/5*(-7*w - 27)*x^5 + (w + 4)*x^4)/(x^2 + 1/5*(w - 3)*x + 1/15*(-w + 4))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,1,1],[4,1,1],[3,3]],
        p        := 0,
        defpoly  := [-15,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[4,1],[-27/5,-7/5],[31/15,8/15]],
        coeffs_r := [[4/15,-1/15],[-3/5,1/5],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

