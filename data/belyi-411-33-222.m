// This is   belyi-411-33-222.m
//load "format.m";

BelyiRecords_411_33_222 := function()
records := [ ];
passport := [[4,1,1],[3,3],[2,2,2]];

/**************** Begin Solution *********************
    passport = [[4,1,1],[3,3],[2,2,2]]
    field = Number Field with defining polynomial z^2 - 6 over the Rational Field
    phi = (1/3*(20*w + 49)*x^6 + (-18*w - 44)*x^5 + (16*w + 40)*x^4 + 1/3*(-16*w - 32)*x^3)/(x^2 + (-2*w + 4)*x + 1/3*(4*w - 10))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,1,1],[3,3],[2,2,2]],
        p        := 0,
        defpoly  := [-6,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-32/3,-16/3],[40,16],[-44,-18],[49/3,20/3]],
        coeffs_r := [[-10/3,4/3],[4,-2],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[4,1,1],[3,3],[2,2,2]]
    field = Rational Field
    phi = (4*x^6 - 24*x^5 + 48*x^4 - 32*x^3)/(3*x^2 - 6*x - 1)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,1,1],[3,3],[2,2,2]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[-32],[48],[-24],[4]],
        coeffs_r := [[-1],[-6],[3]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

