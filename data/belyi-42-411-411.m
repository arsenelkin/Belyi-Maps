// This is   belyi-42-411-411.m
//load "format.m";

BelyiRecords_42_411_411 := function()
records := [ ];
passport := [[4,2],[4,1,1],[4,1,1]];

/**************** Begin Solution *********************
    passport = [[4,2],[4,1,1],[4,1,1]]
    field = Number Field with defining polynomial z^2 - z - 1 over the Rational Field
    phi = (1/5*(-2*w + 1)*x^6 + 1/5*(6*w - 4)*x^5 + (-w + 1)*x^4)/(x^2 + 1/5*(-2*w - 4)*x + 1/5*(w + 1))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2],[4,1,1],[4,1,1]],
        p        := 0,
        defpoly  := [-1,-1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[1,-1],[-4/5,6/5],[1/5,-2/5]],
        coeffs_r := [[1/5,1/5],[-4/5,-2/5],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;


