// This is   belyi-51-42-3111.m
//load "format.m";

BelyiRecords_51_42_3111 := function()
records := [ ];
passport := [[5,1],[4,2],[3,1,1,1]];

/************ Begin Global Solution ******************
    passport = [[5,1],[4,2],[3,1,1,1]]
    field = Number Field with defining polynomial z^2 - 5/3*z + 5/8 over the Rational Field
    phi = (1/3*(30*w - 32)*x^6 + (-24*w + 25)*x^5 + (15*w - 15)*x^4)/(x + 1/3*(3*w - 5))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[4,2],[3,1,1,1]],
        defpoly  := [5/8,-5/3,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[-15,15],[25,-24],[-32/3,10]],
        coeffs_r := [[-5/3,1],[1,0]]>;
Append(~records, record);
/************* End Global Solution *******************/

/************ Begin Global Solution ******************
    passport = [[5,1],[4,2],[3,1,1,1]]
    field = Number Field with defining polynomial z^2 - 5/3*z + 5/8 over the Rational Field
    phi = ((-10*w + 6)*x^6 + (24*w - 15)*x^5 + (-15*w + 10)*x^4)/(x - w)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[4,2],[3,1,1,1]],
        defpoly  := [5/8,-5/3,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[10,-15],[-15,24],[6,-10]],
        coeffs_r := [[0,-1],[1,0]]>;
Append(~records, record);
/************* End Global Solution *******************/

return records, passport;
end function;

