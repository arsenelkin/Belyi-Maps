// This is   belyi-51-51-2211.m
//load "format.m";

BelyiRecords_51_51_2211 := function()
records := [ ];
passport := [[5,1],[5,1],[2,2,1,1]];

/************ Begin Global Solution ******************
    passport = [[5,1],[5,1],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 - 1/2*z - 1/4 over the Rational Field
    phi = (1/2*(-10*w - 3)*x^6 + (6*w + 2)*x^5)/(x + 1/2*(2*w - 1))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[5,1],[2,2,1,1]],
        defpoly  := [-1/4,-1/2,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[2,6],[-3/2,-5]],
        coeffs_r := [[-1/2,1],[1,0]]>;
Append(~records, record);
/************* End Global Solution *******************/

/************ Begin Global Solution ******************
    passport = [[5,1],[5,1],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 - 1/2*z - 1/4 over the Rational Field
    phi = ((5*w - 4)*x^6 + (-6*w + 5)*x^5)/(x - w)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[5,1],[2,2,1,1]],
        defpoly  := [-1/4,-1/2,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[5,-6],[-4,5]],
        coeffs_r := [[0,-1],[1,0]]>;
Append(~records, record);
/************* End Global Solution *******************/

return records, passport;
end function;

