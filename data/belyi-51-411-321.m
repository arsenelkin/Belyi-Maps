// This is   belyi-51-411-321.m
//load "format.m";

BelyiRecords_51_411_321 := function()
records := [ ];
passport := [[5,1],[4,1,1],[3,2,1]];

/**************** Begin Solution *********************
    passport = [[5,1],[4,1,1],[3,2,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 + 9*z^2 - 28*z + 26 over the Rational Field
    phi = (1/6*(w^3 - 4*w^2 + 7*w - 6)*x^6 + 1/5*(-2*w^3 + 8*w^2 - 14*w + 9)*x^5 + 1/4*(w^3 - 4*w^2 + 7*w - 2)*x^4)/(x + 1/60*(w^3 - 4*w^2 + 7*w - 42))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[4,1,1],[3,2,1]],
        p        := 0,
        defpoly  := [26,-28,9,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[-1/2,7/4,-1,1/4],[9/5,-14/5,8/5,-2/5],[-1,7/6,-2/3,1/6]],
        coeffs_r := [[-7/10,7/60,-1/15,1/60],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

