// This is   belyi-5-221-221.m
//load "format.m";

BelyiRecords_5_221_221 := function()
records := [ ];
passport := [[5],[2,2,1],[2,2,1]];

/**************** Begin Solution *********************
    passport = [[5],[2,2,1],[2,2,1]]
    field = Number Field with defining polynomial z^2 + z - 1 over the Rational Field
    phi = (-40*w - 64)*x^5 + (100*w + 160)*x^4 + (-80*w - 130)*x^3 + (20*w + 35)*x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[2,2,1],[2,2,1]],
        defpoly  := [-1,1,1],
        coeffs_p := [[0,0],[0,0],[35,20],[-130,-80],[160,100],[-64,-40]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[2,2,1],[2,2,1]]
    field = Number Field with defining polynomial z^2 + z - 1 over the Rational Field
    phi = (40*w - 24)*x^5 + (-100*w + 60)*x^4 + (80*w - 50)*x^3 + (-20*w + 15)*x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[2,2,1],[2,2,1]],
        defpoly  := [-1,1,1],
        coeffs_p := [[0,0],[0,0],[15,-20],[-50,80],[60,-100],[-24,40]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[2,2,1],[2,2,1]]
    field = Number Field with defining polynomial z^2 - z - 1 over the Rational Field
    phi = -1/4*x^5 + 1/4*(-5*w + 5)*x^4 + 1/4*(10*w - 15)*x^3 + 1/4*(-5*w + 15)*x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[2,2,1],[2,2,1]],
        defpoly  := [-1,-1,1],
        coeffs_p := [[0,0],[0,0],[15/4,-5/4],[-15/4,5/2],[5/4,-5/4],[-1/4,0]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[2,2,1],[2,2,1]]
    field = Number Field with defining polynomial z^2 - z - 1 over the Rational Field
    phi = -1/4*x^5 + 5/4*w*x^4 + 1/4*(-10*w - 5)*x^3 + 1/4*(5*w + 10)*x^2
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5],[2,2,1],[2,2,1]],
        defpoly  := [-1,-1,1],
        coeffs_p := [[0,0],[0,0],[5/2,5/4],[-5/4,-5/2],[0,5/4],[-1/4,0]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;