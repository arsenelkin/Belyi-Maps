// This is   belyi-51-411-222.m
//load "format.m";

BelyiRecords_51_411_222 := function()
records := [ ];
passport := [[5,1],[4,1,1],[2,2,2]];

/**************** Begin Solution *********************
    passport = [[5,1],[4,1,1],[2,2,2]]
    field = Number Field with defining polynomial z^3 - z^2 + 2*z + 2 over the Rational Field
    phi = (1/8*(5*w^2 - 2)*x^6 + 1/4*(-w^2 - 4*w - 2)*x^5 + 1/8*(-5*w^2 + 10*w + 10)*x^4)/(x + 1/4*(-w^2 + w - 2))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[4,1,1],[2,2,2]],
        p        := 0,
        defpoly  := [2,2,-1,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[5/4,5/4,-5/8],[-1/2,-1,-1/4],[-1/4,0,5/8]],
        coeffs_r := [[-1/2,1/4,-1/4],[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

