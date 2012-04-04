// This is   belyi-43-322-3211.m
//load "format.m";

BelyiRecords_43_322_3211 := function()
records := [ ];
passport := [[4,3],[3,2,2],[3,2,1,1]];

/**************** Begin Solution *********************
    passport = [[4,3],[3,2,2],[3,2,1,1]]
    field = Number Field with defining polynomial z^3 - z^2 + 5*z + 15 over the Rational Field
    phi = (1/92610*(1033*w^2 + 3122*w + 2585)*x^7 + 1/6615*(-434*w^2 - 1378*w - 808)*x^6 + 1/11025*(2057*w^2 + 2878*w + 805)*x^5 + 1/945*(-224*w^2 + 104*w + 440)*x^4 + 1/378*(17*w^2 - 86*w - 125)*x^3)/(x^3 + 1/35*(-6*w^2 + 6*w - 60)*x^2 + 1/245*(36*w^2 - 72*w + 276)*x + 1/8575*(-304*w^2 + 784*w - 2560))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,3],[3,2,2],[3,2,1,1]],
        p        := 0,
        defpoly  := [15,5,-1,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[-125/378,-43/189,17/378],[88/189,104/945,-32/135],[23/315,2878/11025,2057/11025],[-808/6615,-1378/6615,-62/945],[517/18522,223/6615,1033/92610]],
        coeffs_r := [[-512/1715,16/175,-304/8575],[276/245,-72/245,36/245],[-12/7,6/35,-6/35],[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;
