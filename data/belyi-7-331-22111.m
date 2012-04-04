// This is   belyi-7-331-22111.m
//load "format.m";

BelyiRecords_7_331_22111 := function()
records := [ ];
passport := [[7],[3,3,1],[2,2,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[3,3,1],[2,2,1,1,1]]
    field = Number Field with defining polynomial z^4 - z^3 + 3*z^2 - 4*z + 2 
over the Rational Field
    phi = 1/27*(6790*w^3 + 210*w^2 + 18928*w - 8380)*x^7 + 1/27*(-20069*w^3 - 
2464*w^2 - 56770*w + 19236)*x^6 + 1/9*(7014*w^3 + 1792*w^2 + 20258*w - 3892)*x^5
+ 1/27*(-9037*w^3 - 4200*w^2 - 26950*w - 917)*x^4 + 1/27*(1274*w^3 + 1078*w^2 + 
4018*w + 1764)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[3,3,1],[2,2,1,1,1]],
        p        := 0,
        defpoly  := [2,-4,3,-1,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[196/3,4018/27,1078/27,1274/27],[-917/27,-26950/27,-1400/9,-9037/27],[-3892/9,20258/9,1792/9,2338/3],[6412/9,-56770/27,-2464/27,-20069/27],[-8380/27,18928/27,70/9,6790/27]],
        coeffs_r := [[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[7],[3,3,1],[2,2,1,1,1]]
    field = Number Field with defining polynomial z^4 - z^3 + 3*z^2 - 4*z + 2 
over the Rational Field
    phi = 1/1728*(707*w^3 - 546*w^2 + 1820*w - 2507)*x^7 + 1/432*(-1015*w^3 + 
644*w^2 - 2394*w + 3101)*x^6 + 1/288*(1155*w^3 - 406*w^2 + 2968*w - 3143)*x^5 + 
1/432*(-1127*w^3 - 168*w^2 - 3542*w + 1337)*x^4 + 1/1728*(931*w^3 + 1078*w^2 + 
4116*w + 5341)*x^3
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[3,3,1],[2,2,1,1,1]],
        p        := 0,
        defpoly  := [2,-4,3,-1,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[5341/1728,343/144,539/864,931/1728],[1337/432,-1771/216,-7/18,-1127/432],[-3143/288,371/36,-203/144,385/96],[3101/432,-133/24,161/108,-1015/432],[-2507/1728,455/432,-91/288,707/1728]],
        coeffs_r := [[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

