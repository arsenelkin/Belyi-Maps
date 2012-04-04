// This is   belyi-52-511-4111.m
//load "format.m";

BelyiRecords_52_511_4111 := function()
records := [ ];
passport := [[5,2],[5,1,1],[4,1,1,1]];

/**************** Begin Solution *********************
    passport = [[5,2],[5,1,1],[4,1,1,1]]
    field = Number Field with defining polynomial z^2 - 2 over the Rational Field
    phi = (1/49*(-20*w + 4)*x^7 + 1/7*(8*w - 3)*x^6 + 1/7*(-6*w + 4)*x^5)/(x^2 + 1/7*(-2*w - 8)*x + 1/49*(8*w + 18))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,2],[5,1,1],[4,1,1,1]],
        p        := 0,
        defpoly  := [-2,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[0,0],[4/7,-6/7],[-3/7,8/7],[4/49,-20/49]],
        coeffs_r := [[18/49,8/49],[-8/7,-2/7],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

