// This is   belyi-6-222-2211.m
//load "format.m";

BelyiRecords_6_222_2211 := function()
records := [ ];
passport := [[6],[2,2,2],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[6],[2,2,2],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 - 3 over the Rational Field
    phi = (30*w + 52)*x^6 + (-114*w - 198)*x^5 + (156*w + 273)*x^4 + (-90*w - 162)*x^3 + (18*w + 36)*x^2
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6],[2,2,2],[2,2,1,1]],
        p        := 0,
        defpoly  := [-3,0,1],
        coeffs_p := [[0,0],[0,0],[36,18],[-162,-90],[273,156],[-198,-114],[52,30]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[6],[2,2,2],[2,2,1,1]]
    field = Rational Field
    phi = (x^6 - 6*x^4 + 9*x^2)/4
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6],[2,2,2],[2,2,1,1]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[9],[0],[-6],[0],[1]],
        coeffs_r := [[4]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

