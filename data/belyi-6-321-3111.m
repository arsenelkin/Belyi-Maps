// This is   belyi-6-321-3111.m
//load "format.m";

BelyiRecords_6_321_3111 := function()
records := [ ];
passport := [[6],[3,2,1],[3,1,1,1]];

/************ Begin Global Solution ******************
    passport = [[6],[3,2,1],[3,1,1,1]]
    field = Number Field with defining polynomial z^2 - 3*z + 5/2 over the Rational Field
    phi = (-4*w + 2)*x^6 + 12*w*x^5 + (-12*w - 9)*x^4 + (4*w + 8)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6],[3,2,1],[3,1,1,1]],
        defpoly  := [5/2,-3,1],
        coeffs_p := [[0,0],[0,0],[0,0],[8,4],[-9,-12],[0,12],[2,-4]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/************* End Global Solution *******************/

/************ Begin Global Solution ******************
    passport = [[6],[3,2,1],[3,1,1,1]]
    field = Number Field with defining polynomial z^2 - 3*z + 5/2 over the Rational Field
    phi = (4*w - 10)*x^6 + (-12*w + 36)*x^5 + (12*w - 45)*x^4 + (-4*w + 20)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6],[3,2,1],[3,1,1,1]],
        defpoly  := [5/2,-3,1],
        coeffs_p := [[0,0],[0,0],[0,0],[20,-4],[-45,12],[36,-12],[-10,4]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/************* End Global Solution *******************/

return records, passport;
end function;

