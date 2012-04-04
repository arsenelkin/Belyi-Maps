// This is   belyi-511-511-511.m
//load "format.m";

BelyiRecords_511_511_511 := function()
records := [ ];
passport := [[5,1,1],[5,1,1],[5,1,1]];

/**************** Begin Solution *********************
    passport = [[5,1,1],[5,1,1],[5,1,1]]
    field = Rational Field
    phi = (2*x^7 - 7*x^6 + 7*x^5)/(7*x^2 - 7*x + 2)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[5,1,1],[5,1,1]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[0],[7],[-7],[2]],
        coeffs_r := [[2],[-7],[7]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;


