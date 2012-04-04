// This is   belyi-51-33-2211.m
//load "format.m";

BelyiRecords_51_33_2211 := function()
records := [ ];
passport := [[5,1],[3,3],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[5,1],[3,3],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 + z - 1 over the Rational Field
    phi = (1/54*(55*w + 89)*x^6 + 1/9*(-47*w - 76)*x^5 + 1/9*(80*w + 130)*x^4 + 1/27*(-140*w - 220)*x^3)/(x + 1/2*(-w - 3))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[3,3],[2,2,1,1]],
        p        := 0,
        defpoly  := [-1,1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-220/27,-140/27],[130/9,80/9],[-76/9,-47/9],[89/54,55/54]],
        coeffs_r := [[-3/2,-1/2],[1,0]]>;
Append(~records, record);;
/**************** Begin Solution *********************
    passport = [[5,1],[3,3],[2,2,1,1]]
    field = Number Field with defining polynomial z^2 + z - 1 over the Rational Field
    phi = (1/2*(-45*w + 27)*x^6 + (63*w - 36)*x^5 + (-60*w + 30)*x^4 + 1/3*(60*w - 20)*x^3)/(x + 1/6*(3*w - 1))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[3,3],[2,2,1,1]],
        p        := 0,
        defpoly  := [-1,1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[-20/3,20],[30,-60],[-36,63],[27/2,-45/2]],
        coeffs_r := [[-1/6,1/2],[1,0]]>;
Append(~records, record);;
return records, passport;
end function;

