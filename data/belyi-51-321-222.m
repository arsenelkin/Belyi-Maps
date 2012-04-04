// This is   belyi-51-321-222.m
//load "format.m";

BelyiRecords_51_321_222 := function()
records := [ ];
passport := [[5,1],[3,2,1],[2,2,2]];

/**************** Begin Solution *********************
    passport = [[5,1],[3,2,1],[2,2,2]]
    field = Number Field with defining polynomial z^3 - 15*z - 20 over the Rational Field
    phi = (1/192*(2635*w^2 - 4260*w - 32693)*x^6 + 1/32*(-1101*w^2 + 1788*w + 13683)*x^5 + 1/64*(1785*w^2 - 2940*w - 22295)*x^4 + 1/24*(-175*w^2 + 300*w + 2225)*x^3)/(x + 1/12*(-w^2 + 3*w + 8))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[3,2,1],[2,2,2]],
        p        := 0,
        defpoly  := [-20,-15,0,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[2225/24,25/2,-175/24],[-22295/64,-735/16,1785/64],[13683/32,447/8,-1101/32],[-32693/192,-355/16,2635/192]],
        coeffs_r := [[2/3,1/4,-1/12],[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

