// This is   belyi-33-33-2211.m
//load "format.m";

BelyiRecords_33_33_2211 := function()
records := [ ];
passport := [[3,3],[3,3],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[3,3],[3,3],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 - z + 1 over the Rational Field
    phi = (1/8*(6*w - 3)*x^6 + 1/4*(-9*w + 9)*x^5 + 1/2*(3*w - 6)*x^4 + x^3)/(x^3 + 1/2*(-3*w - 3)*x^2 + 9/4*w*x + 1/8*(-6*w + 3))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[3,3],[3,3],[2,2,1,1]],
        p        := 0,
        defpoly  := [1,-1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[1,0],[-3,3/2],[9/4,-9/4],[-3/8,3/4]],
        coeffs_r := [[3/8,-3/4],[0,9/4],[-3/2,-3/2],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[3,3],[3,3],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 - z + 1 over the Rational Field
    phi = (-1/8*x^6 + 3/4*w*x^5 + 1/2*(-3*w + 3)*x^4 - x^3)/(x^3 - 3/2*w*x^2 + 1/4*(3*w - 3)*x + 1/8)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[3,3],[3,3],[2,2,1,1]],
        p        := 0,
        defpoly  := [1,-1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-1,0],[3/2,-3/2],[0,3/4],[-1/8,0]],
        coeffs_r := [[1/8,0],[-3/4,3/4],[0,-3/2],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[3,3],[3,3],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 - z + 1 over the Rational Field
    phi = (-1/8*x^6 + 1/4*(-3*w + 3)*x^5 + 3/2*w*x^4 - x^3)/(x^3 + 1/2*(3*w - 3)*x^2 - 3/4*w*x + 1/8)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[3,3],[3,3],[2,2,1,1]],
        p        := 0,
        defpoly  := [1,-1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-1,0],[0,3/2],[3/4,-3/4],[-1/8,0]],
        coeffs_r := [[1/8,0],[0,-3/4],[-3/2,3/2],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

