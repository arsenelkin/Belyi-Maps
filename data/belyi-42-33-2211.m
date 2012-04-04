// This is   belyi-42-33-2211.m
//load "format.m";

BelyiRecords_42_33_2211 := function()
records := [ ];
passport := [[4,2],[3,3],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[4,2],[3,3],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 + 2 over the Rational Field
    phi = (1/27*(4*w - 7)*x^6 + 1/9*(-10*w + 4)*x^5 + 1/9*(16*w + 8)*x^4 + 1/27*(-16*w - 32)*x^3)/(x^2 + 1/3*(2*w - 4)*x + 1/9*(-4*w + 2))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2],[3,3],[2,2,1,1]],
        p        := 0,
        defpoly  := [2,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-32/27,-16/27],[8/9,16/9],[4/9,-10/9],[-7/27,4/27]],
        coeffs_r := [[2/9,-4/9],[-4/3,2/3],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;
