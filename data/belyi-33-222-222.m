// This is   belyi-33-222-222.m
//load "format.m";

BelyiRecords_33_222_222 := function()
records := [ ];
passport := [[3,3],[2,2,2],[2,2,2]];

/**************** Begin Solution *********************
    passport = [[3,3],[2,2,2],[2,2,2]]
    field = Rational Field
    phi = (16*x^6 - 48*x^5 + 60*x^4 - 36*x^3 + 9*x^2)/(8*x^3 - 12*x^2 + 6*x - 1)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[3,3],[2,2,2],[2,2,2]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[9],[-36],[60],[-48],[16]],
        coeffs_r := [[-1],[6],[-12],[8]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[3,3],[2,2,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 - z + 1 over the Rational Field
    phi = (-1/4*x^6 + 1/2*(-3*w + 3)*x^5 + 15/4*w*x^4 - 9/2*x^3 + 1/4*(-9*w + 9)*x^2)/(x^3 + (3*w - 3)*x^2 - 3*w*x + 1)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[3,3],[2,2,2],[2,2,2]],
        p        := 0,
        defpoly  := [1,-1,1],
        coeffs_p := [[0,0],[0,0],[9/4,-9/4],[-9/2,0],[0,15/4],[3/2,-3/2],[-1/4,0]],
        coeffs_r := [[1,0],[0,-3],[-3,3],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

