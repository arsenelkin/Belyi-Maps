// This is   belyi-7-7-1111111.m
//load "format.m";

BelyiRecords_7_7_1111111 := function()
records := [ ];
passport := [[7],[7],[1,1,1,1,1,1,1]];



/**************** Begin Solution *********************
    passport = [[7],[7],[1,1,1,1,1,1,1]]
    field = Rational Field
    phi = x^7
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[7],[1,1,1,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[0],[0],[1]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;