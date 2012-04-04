// This is   belyi-52-43-31111.m
//load "format.m";

BelyiRecords_52_43_31111 := function()
records := [ ];
passport := [[5,2],[4,3],[3,1,1,1,1]];

/**************** Begin Solution *********************
    passport = [[5,2],[4,3],[3,1,1,1,1]]
    field = Number Field with defining polynomial z^2 - 30 over the Rational Field
    phi = (1/441*(200*w - 1104)*x^7 + 1/21*(-32*w + 180)*x^6 + 1/3*(5*w - 30)*x^5 + 1/18*(-10*w + 75)*x^4)/(x^2 + 1/7*(w - 10)*x + 1/98*(-10*w + 65))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,2],[4,3],[3,1,1,1,1]],
        p        := 0,
        defpoly  := [-30,0,1],
        coeffs_p := [[0,0],[0,0],[0,0],[0,0],[25/6,-5/9],[-10,5/3],[60/7,-32/21],[-368/147,200/441]],
        coeffs_r := [[65/98,-5/49],[-10/7,1/7],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;


