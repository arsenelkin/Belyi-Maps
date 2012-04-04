// This is   belyi-7-3211-3211.m
//load "format.m";

BelyiRecords_7_3211_3211 := function()
records := [ ];
passport := [[7],[3,2,1,1],[3,2,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[3,2,1,1],[3,2,1,1]]
    field = Number Field with defining polynomial z^3 + z^2 + 5*z - 1 over the 
Rational Field
    phi = 1/27*(2128*w^2 + 2576*w + 11080)*x^7 + 1/27*(-7448*w^2 - 9016*w - 
38780)*x^6 + 1/3*(1064*w^2 + 1288*w + 5558)*x^5 + 1/27*(-5320*w^2 - 6440*w - 
28105)*x^4 + 1/27*(1064*w^2 + 1288*w + 5810)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[3,2,1,1],[3,2,1,1]],
        p        := 0,
        defpoly  := [-1,5,1,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[5810/27,1288/27,1064/27],[-28105/27,-6440/27,-5320/27],[5558/3,1288/3,1064/3],[-38780/27,-9016/27,-7448/27],[11080/27,2576/27,2128/27]],
        coeffs_r := [[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

