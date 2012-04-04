// This is   belyi-7-421-31111.m
//load "format.m";

BelyiRecords_7_421_31111 := function()
records := [ ];
passport := [[7],[4,2,1],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[4,2,1],[3,1,1,1,1]]
    field = Number Field with defining polynomial z^2 + 14 over the Rational 
Field
    phi = 1/27*(28*w - 232)*x^7 + 1/9*(-28*w + 322)*x^6 + 1/9*(28*w - 448)*x^5 +
1/27*(-28*w + 637)*x^4
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,2,1],[3,1,1,1,1]],
        p        := 0,
        defpoly  := [14,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[637/27,-28/27],[-448/9,28/9],[322/9,-28/9],[-232/27,28/27]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

