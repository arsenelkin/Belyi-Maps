// This is   belyi-43-331-2221.m
//load "format.m";

BelyiRecords_43_331_2221 := function()
records := [ ];
passport := [[4,3],[3,3,1],[2,2,2,1]];

/**************** Begin Solution *********************
    passport = [[4,3],[3,3,1],[2,2,2,1]]
    field = Number Field with defining polynomial z^6 + 7*z^4 + 7*z^2 - 63 over the Rational Field
    phi = (1/111132*(8828*w^5 - 18423*w^4 + 81584*w^3 - 165978*w^2 + 250292*w - 488787)*x^7 + 1/5292*(-1193*w^5 + 1744*w^4 - 11164*w^3 + 15916*w^2 - 33971*w + 47148)*x^6 + 1/1323*(254*w^5 - 273*w^4 + 2348*w^3 - 2910*w^2 + 7070*w - 8709)*x^5 + 1/3969*(-218*w^5 + 252*w^4 - 1352*w^3 + 4032*w^2 - 4046*w + 13524)*x^4 + 1/567*(16*w^5 + 64*w^3 + 112*w - 96)*x^3)/(x^3 + 1/84*(w^5 + 3*w^4 + 16*w^3 + 30*w^2 + 7*w - 33)*x^2 + 1/1764*(8*w^5 - 57*w^4 - 88*w^3 - 102*w^2 + 560*w + 1167)*x + 1/111132*(316*w^5 + 1947*w^4 + 3436*w^3 + 3450*w^2 - 5096*w - 11373))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,3],[3,3,1],[2,2,2,1]],
        p        := 0,
        defpoly  := [-63,0,7,0,7,0,1],
        coeffs_p := [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[-32/189,16/81,0,64/567,0,16/567],[92/27,-578/567,64/63,-1352/3969,4/63,-218/3969],[-2903/441,1010/189,-970/441,2348/1323,-13/63,254/1323],[3929/441,-4853/756,3979/1323,-2791/1323,436/1323,-1193/5292],[-162929/37044,1277/567,-9221/6174,20396/27783,-2047/12348,2207/27783]],
        coeffs_r := [[-3791/37044,-26/567,575/18522,859/27783,649/37044,79/27783],[389/588,20/63,-17/294,-22/441,-19/588,2/441],[-11/28,1/12,5/14,4/21,1/28,1/84],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;
