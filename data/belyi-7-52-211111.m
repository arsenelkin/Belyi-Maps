// This is   belyi-7-52-211111.m
//load "format.m";

BelyiRecords_7_52_211111 := function()
records := [ ];
passport := [[7],[5,2],[2,1,1,1,1,1]];



/**************** Begin Solution *********************
    passport = [[7],[5,2],[2,1,1,1,1,1]]
    field = Rational Field
    phi = 25/4*x^7 - 35/2*x^6 + 49/4*x^5
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[5,2],[2,1,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[49/4],[-35/2],[25/4]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;