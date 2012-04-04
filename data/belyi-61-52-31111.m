// This is   belyi-61-52-31111.m
//load "format.m";

BelyiRecords_61_52_31111 := function()
records := [ ];
passport := [[6,1],[5,2],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6,1],[5,2],[3,1,1,1,1]]
    field = Number Field with defining polynomial z^2 - 15 over the Rational Field
    phi = (1/7*(-6*w - 20)*x^7 + (2*w + 6)*x^6 + 1/5*(-6*w - 15)*x^5)/(x + 1/35*(-2*w - 30))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[5,2],[3,1,1,1,1]],
        p        := 0,
        defpoly  := [-15,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[-3,-6/5],[6,2],[-20/7,-6/7]],
        coeffs_r := [[-6/7,-2/35],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[6,1],[5,2],[3,1,1,1,1]]
    field = Number Field with defining polynomial z^2 - 15 over the Rational Field
    phi = (1/7*(6*w - 20)*x^7 + (-2*w + 6)*x^6 + 1/5*(6*w - 15)*x^5)/(x + 1/35*(2*w - 30))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[5,2],[3,1,1,1,1]],
        p        := 0,
        defpoly  := [-15,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[-3,6/5],[6,-2],[-20/7,6/7]],
        coeffs_r := [[-6/7,2/35],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

