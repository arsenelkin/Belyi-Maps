// This is   belyi-41-32-221.m
//load "format.m";

BelyiRecords_41_32_221 := function()
records := [ ];
passport := [[4,1],[3,2],[2,2,1]];

/**************** Begin Solution *********************
    passport = [[4,1],[3,2],[2,2,1]]
    field = Number Field with defining polynomial z^2 - 10 over the Rational Field
    phi = (1/135*(28*w + 89)*x^5 + 1/27*(-22*w - 68)*x^4 + 1/27*(20*w + 70)*x^3)/(x + 1/15*(2*w - 4))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[3,2],[2,2,1]],
        defpoly  := [-10,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[70/27,20/27],[-68/27,-22/27],[89/135,28/135]],
        coeffs_r := [[-4/15,2/15],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[4,1],[3,2],[2,2,1]]
    field = Number Field with defining polynomial z^2 - 10 over the Rational Field
    phi = (1/135*(-28*w + 89)*x^5 + 1/27*(22*w - 68)*x^4 + 1/27*(-20*w + 70)*x^3)/(x + 1/15*(-2*w - 4))
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[4,1],[3,2],[2,2,1]],
        defpoly  := [-10,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[70/27,-20/27],[-68/27,22/27],[89/135,-28/135]],
        coeffs_r := [[-4/15,-2/15],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;