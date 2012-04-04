// This is   belyi-7-331-31111.m
//load "format.m";

BelyiRecords_7_331_31111 := function()
records := [ ];
passport := [[7],[3,3,1],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[3,3,1],[3,1,1,1,1]]
    field = Number Field with defining polynomial z^2 - z + 2 over the Rational 
Field
    phi = 1/16*(21*w + 9)*x^7 + (-7*w - 7)*x^6 + 1/8*(105*w + 189)*x^5 + 
1/2*(-21*w - 63)*x^4 + 1/16*(49*w + 245)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[3,3,1],[3,1,1,1,1]],
        p        := 0,
        defpoly  := [2,-1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[245/16,49/16],[-63/2,-21/2],[189/8,105/8],[-7,-7],[9/16,21/16]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

