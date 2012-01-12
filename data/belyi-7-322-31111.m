// This is   belyi-7-322-31111.m
//load "format.m";

BelyiRecords_7_322_31111 := function()
records := [ ];
passport := [[7],[3,2,2],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[3,2,2],[3,1,1,1,1]]
    field = Rational Field
    phi = 225/64*x^7 - 315/16*x^6 + 1407/32*x^5 - 735/16*x^4 + 1225/64*x^3
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[7],[3,2,2],[3,1,1,1,1]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[1225/64],[-735/16],[1407/32],[-315/16],[225/64]],
        coeffs_r := [[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;