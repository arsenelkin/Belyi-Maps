// This is   belyi-6-321-2211.m
//load "format.m";

BelyiRecords_6_321_2211 := function()
records := [ ];
passport := [[6],[3,2,1],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[6],[3,2,1],[2,2,1,1]]
    field = Number Field with defining polynomial z^6 - 3*z^4 - 6*z^3 - 3*z^2 + 1 over the Rational Field
    phi = (30*w^5 + 12*w^4 - 86*w^3 - 213*w^2 - 174*w - 69)*x^6 + (-78*w^5 - 30*w^4 + 222*w^3 + 552*w^2 + 450*w + 180)*x^5 + (66*w^5 + 24*w^4 - 186*w^3 - 465*w^2 - 378*w - 156)*x^4 + (-18*w^5 - 6*w^4 + 50*w^3 + 126*w^2 + 102*w + 
46)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6],[3,2,1],[2,2,1,1]],
        p        := 0,
        defpoly  := [1,0,-3,-6,-3,0,1],
        coeffs_p := [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[46,102,126,50,-6,-18],[-156,-378,-465,-186,24,66],[180,450,552,222,-30,-78],[-69,-174,-213,-86,12,30]],
        coeffs_r := [[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

