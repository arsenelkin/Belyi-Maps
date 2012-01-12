// This is   belyi-7-61-211111.m
//load "format.m";

BelyiRecords_7_61_211111 := function()
records := [ ];
passport := [[7],[6,1],[2,1,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[6,1],[2,1,1,1,1,1]]
    field = Rational Field
    phi = -6*x^7 + 7*x^6
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[6,1],[2,1,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[0],[7],[-6]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/


return records, passport;
end function;