// This is   belyi-511-331-331.m
//load "format.m";

BelyiRecords_511_331_331 := function()
records := [ ];
passport := [[5,1,1],[3,3,1],[3,3,1]];

/**************** Begin Solution *********************
    passport = [[5,1,1],[3,3,1],[3,3,1]]
    field = Number Field with defining polynomial z^2 + 5*z + 10/3 over the Rational Field
    phi = (-3/112*x^7 + 1/16*(-3*w - 6)*x^6 + 9/16*w*x^5 + 1/16*(-25*w - 10)*x^4 + 1/48*(105*w + 175)*x^3)/(x^2 + (2*w + 4)*x + 1/21*(-21*w - 50))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[3,3,1],[3,3,1]],
        p        := 0,
        defpoly  := [10/3,5,1],
        coeffs_p := [[0,0],[0,0],[0,0],[175/48,35/16],[-5/8,-25/16],[0,9/16],[-3/8,-3/16],[-3/112,0]],
        coeffs_r := [[-50/21,-1],[4,2],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[5,1,1],[3,3,1],[3,3,1]]
    field = Number Field with defining polynomial z^2 + z - 26 over the Rational Field
    phi = (1/63*(-290*w - 1492)*x^7 + 1/9*(145*w + 746)*x^6 + 1/2*(-41*w - 218)*x^5 + 1/36*(395*w + 2350)*x^4 + 1/18*(-35*w - 280)*x^3)/(x^2 - x + 1/28*(w - 2))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[3,3,1],[3,3,1]],
        p        := 0,
        defpoly  := [-26,1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-140/9,-35/18],[1175/18,395/36],[-109,-41/2],[746/9,145/9],[-1492/63,-290/63]],
        coeffs_r := [[-1/14,1/28],[-1,0],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

