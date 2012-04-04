// This is   belyi-43-4111-331.m
//load "format.m";

BelyiRecords_43_4111_331 := function()
records := [ ];
passport := [[4,3],[4,1,1,1],[3,3,1]];

/**************** Begin Solution *********************
    passport = [[4,3],[4,1,1,1],[3,3,1]]
    field = Number Field with defining polynomial z^2 - 7 over the Rational Field
    phi = (1/343*(264*w + 699)*x^7 + 1/49*(-95*w - 250)*x^6 + 1/49*(60*w + 165)*x^5 + 1/49*(9*w + 18)*x^4)/(x^3 + 1/7*(3*w - 6)*x^2 + 1/49*(-12*w + 33)*x + 1/343*(19*w - 50))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,3],[4,1,1,1],[3,3,1]],
        p        := 0,
        defpoly  := [-7,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[18/49,9/49],[165/49,60/49],[-250/49,-95/49],[699/343,264/343]],
        coeffs_r := [[-50/343,19/343],[33/49,-12/49],[-6/7,3/7],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

