// This is   belyi-7-421-22111.m
//load "format.m";

BelyiRecords_7_421_22111 := function()
records := [ ];
passport := [[7],[4,2,1],[2,2,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[4,2,1],[2,2,1,1,1]]
    field = Number Field with defining polynomial z^4 + z^3 + 3*z^2 - 3*z + 2 
over the Rational Field
    phi = 1/256*(147*w^3 + 217*w^2 + 203*w - 3)*x^7 + 1/256*(-21*w^3 - 287*w^2 +
483*w - 987)*x^6 + 1/256*(-399*w^3 - 77*w^2 - 1575*w + 959)*x^5 + 1/256*(273*w^3
+ 147*w^2 + 889*w + 287)*x^4
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,2,1],[2,2,1,1,1]],
        p        := 0,
        defpoly  := [2,-3,3,1,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[287/256,889/256,147/256,273/256],[959/256,-1575/256,-77/256,-399/256],[-987/256,483/256,-287/256,-21/256],[-3/256,203/256,217/256,147/256]],
        coeffs_r := [[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[7],[4,2,1],[2,2,1,1,1]]
    field = Number Field with defining polynomial z^4 - 2*z^3 - 9*z^2 + 10*z + 4
over the Rational Field
    phi = 1/256*(-1372*w^3 - 2499*w^2 + 3948*w + 2111)*x^7 + 1/256*(3710*w^3 + 
6657*w^2 - 11382*w - 5397)*x^6 + 1/256*(-3304*w^3 - 5817*w^2 + 10920*w + 
3437)*x^5 + 1/256*(966*w^3 + 1659*w^2 - 3486*w + 105)*x^4
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,2,1],[2,2,1,1,1]],
        p        := 0,
        defpoly  := [4,10,-9,-2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[105/256,-1743/128,1659/256,483/128],[3437/256,1365/32,-5817/256,-413/32],[-5397/256,-5691/128,6657/256,1855/128],[2111/256,987/64,-2499/256,-343/64]],
        coeffs_r := [[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

