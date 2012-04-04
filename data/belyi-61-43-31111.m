// This is   belyi-61-43-31111.m
//load "format.m";

BelyiRecords_61_43_31111 := function()
records := [ ];
passport := [[6,1],[4,3],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[6,1],[4,3],[3,1,1,1,1]]
    field = Number Field with defining polynomial z^2 - 2 over the Rational Field
    phi = (1/7*(-16*w + 22)*x^7 + (9*w - 12)*x^6 + (-12*w + 15)*x^5 + 1/2*(11*w - 12)*x^4)/(x + 1/14*(3*w - 12))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[4,3],[3,1,1,1,1]],
        p        := 0,
        defpoly  := [-2,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[-6,11/2],[15,-12],[-12,9],[22/7,-16/7]],
        coeffs_r := [[-6/7,3/14],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;
