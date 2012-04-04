// This is   belyi-51-321-321.m
//load "format.m";

BelyiRecords_51_321_321 := function()
records := [ ];
passport := [[5,1],[3,2,1],[3,2,1]];

/**************** Begin Solution *********************
    passport = [[5,1],[3,2,1],[3,2,1]]
    field = Rational Field
    phi = (4*x^6 - 12*x^5 - 15*x^4 + 50*x^3)/(54*x - 27)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[3,2,1],[3,2,1]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[50],[-15],[-12],[4]],
        coeffs_r := [[-27],[54]]>;
Append(~records, record);;
/**************** Begin Solution *********************
    passport = [[5,1],[3,2,1],[3,2,1]]
    field = Number Field with defining polynomial z^6 + 3*z^4 + 10*z^3 + 3*z^2 + 1 over the Rational Field
    phi = (1/9*(5*w^5 + 15*w^3 + 50*w^2 + 10*w - 11)*x^6 + 1/3*(-3*w^5 - w^4 - 10*w^3 - 34*w^2 - 15*w + 3)*x^5 + 1/6*(5*w^4 + 5*w^3 + 20*w^2 + 45*w + 15)*x^4 + 1/9*(5*w^5 - 5*w^4 + 10*w^3 + 30*w^2 - 35*w - 20)*x^3)/(x + 1/18*(2*w^5 - 
w^4 + 5*w^3 + 16*w^2 - 5*w - 17))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[3,2,1],[3,2,1]],
        p        := 0,
        defpoly  := [1,0,3,10,3,0,1],
        coeffs_p := [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[-20/9,-35/9,10/3,10/9,-5/9,5/9],[5/2,15/2,10/3,5/6,5/6,0],[1,-5,-34/3,-10/3,-1/3,-1],[-11/9,10/9,50/9,5/3,0,5/9]],
        coeffs_r := [[-17/18,-5/18,8/9,5/18,-1/18,1/9],[1,0,0,0,0,0]]>;
Append(~records, record);;
return records, passport;
end function;
