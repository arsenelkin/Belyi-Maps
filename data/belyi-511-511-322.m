// This is   belyi-511-511-322.m
//load "format.m";

BelyiRecords_511_511_322 := function()
records := [ ];
passport := [[5,1,1],[5,1,1],[3,2,2]];

/**************** Begin Solution *********************
    passport = [[5,1,1],[5,1,1],[3,2,2]]
    field = Number Field with defining polynomial z^2 - 3 over the Rational Field
    phi = (1/6*(15*w + 26)*x^7 + 1/6*(-37*w - 64)*x^6 + (4*w + 7)*x^5)/(x^2 + 1/6*(3*w - 4)*x + 1/6*(-w + 2))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[5,1,1],[3,2,2]],
        p        := 0,
        defpoly  := [-3,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[7,4],[-32/3,-37/6],[13/3,5/2]],
        coeffs_r := [[1/3,-1/6],[-2/3,1/2],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[5,1,1],[5,1,1],[3,2,2]]
    field = Number Field with defining polynomial z^2 + 5 over the Rational Field
    phi = (1/42*(5*w - 8)*x^7 + 1/6*(-w - 2)*x^6 + x^5)/(x^2 + 1/6*(-w - 2)*x + 1/42*(5*w - 8))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[5,1,1],[3,2,2]],
        p        := 0,
        defpoly  := [5,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0],[-1/3,-1/6],[-4/21,5/42]],
        coeffs_r := [[-4/21,5/42],[-1/3,-1/6],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;
