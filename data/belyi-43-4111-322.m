// This is   belyi-43-4111-322.m
//load "format.m";

BelyiRecords_43_4111_322 := function()
records := [ ];
passport := [[4,3],[4,1,1,1],[3,2,2]];

/**************** Begin Solution *********************
    passport = [[4,3],[4,1,1,1],[3,2,2]]
    field = Number Field with defining polynomial z^2 - 15 over the Rational Field
    phi = (1/1715*(-918*w + 3375)*x^7 + 1/245*(324*w - 1269)*x^6 + 1/1225*(-1002*w + 4635)*x^5 + 1/245*(-24*w + 45)*x^4)/(x^3 + 1/35*(-6*w - 15)*x^2 + 1/245*(12*w + 51)*x + 1/8575*(-54*w - 205))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,3],[4,1,1,1],[3,2,2]],
        p        := 0,
        defpoly  := [-15,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[9/49,-24/245],[927/245,-1002/1225],[-1269/245,324/245],[675/343,-918/1715]],
        coeffs_r := [[-41/1715,-54/8575],[51/245,12/245],[-3/7,-6/35],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

