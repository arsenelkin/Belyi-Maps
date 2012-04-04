// This is   belyi-42-321-222.m
//load "format.m";

BelyiRecords_42_321_222 := function()
records := [ ];
passport := [[4,2],[3,2,1],[2,2,2]];

/**************** Begin Solution *********************
    passport = [[4,2],[3,2,1],[2,2,2]]
    field = Number Field with defining polynomial z^3 + 3*z - 2 over the Rational Field
    phi = (1/9*(-5*w^2 - 2*w - 16)*x^6 + 1/3*(2*w^2 + 8)*x^4 + 1/9*(4*w^2 + 4*w + 8)*x^3)/(x^2 + 1/3*(2*w^2 + 2)*x + 1/9*(-w^2 + 2*w + 1))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2],[3,2,1],[2,2,2]],
        p        := 0,
        defpoly  := [-2,3,0,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[8/9,4/9,4/9],[8/3,0,2/3],[0,0,0],[-16/9,-2/9,-5/9]],
        coeffs_r := [[1/9,2/9,-1/9],[2/3,0,2/3],[1,0,0]]>;
Append(~records, record);;
/**************** Record *****************************/
return records, passport;
end function;

