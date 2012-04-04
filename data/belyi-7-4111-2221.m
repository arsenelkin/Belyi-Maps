// This is   belyi-7-4111-2221.m
//load "format.m";

BelyiRecords_7_4111_2221 := function()
records := [ ];
passport := [[7],[4,1,1,1],[2,2,2,1]];

/**************** Begin Solution *********************
    passport = [[7],[4,1,1,1],[2,2,2,1]]
    field = Number Field with defining polynomial z^3 + z^2 + 5*z - 15 over the 
Rational Field
    phi = 1/12500*(21*w^2 - 4130*w - 16865)*x^7 + 1/25000*(2891*w^2 + 14770*w + 
11585)*x^6 + 1/6250*(-1477*w^2 - 1190*w - 5495)*x^5 + 1/1000*(119*w^2 - 70*w + 
2765)*x^4
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,1,1,1],[2,2,2,1]],
        p        := 0,
        defpoly  := [-15,5,1,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[553/200,-7/100,119/1000],[-1099/1250,-119/625,-1477/6250],[2317/5000,1477/2500,2891/25000],[-3373/2500,-413/1250,21/12500]],
        coeffs_r := [[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

