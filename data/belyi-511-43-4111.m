// This is   belyi-511-43-4111.m
//load "format.m";

BelyiRecords_511_43_4111 := function()
records := [ ];
passport := [[5,1,1],[4,3],[4,1,1,1]];

/**************** Begin Solution *********************
    passport = [[5,1,1],[4,3],[4,1,1,1]]
    field = Number Field with defining polynomial z^3 - 15*z + 20 over the Rational Field
    phi = (1/21*(-15*w^2 - 40*w + 116)*x^7 + 1/2*(5*w^2 + 13*w - 40)*x^6 + 1/2*(-6*w^2 - 15*w + 50)*x^5 + 1/12*(15*w^2 + 35*w - 130)*x^4)/(x^2 + 1/6*(-w - 10)*x + 1/28*(w^2 + 5*w + 10))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[4,3],[4,1,1,1]],
        p        := 0,
        defpoly  := [20,-15,0,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[-65/6,35/12,5/4],[25,-15/2,-3],[-20,13/2,5/2],[116/21,-40/21,-5/7]],
        coeffs_r := [[5/14,5/28,1/28],[-5/3,-1/6,0],[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

