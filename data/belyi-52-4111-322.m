// This is   belyi-52-4111-322.m
//load "format.m";

BelyiRecords_52_4111_322 := function()
records := [ ];
passport := [[5,2],[4,1,1,1],[3,2,2]];

/**************** Begin Solution *********************
    passport = [[5,2],[4,1,1,1],[3,2,2]]
    field = Rational Field
    phi = (9*x^7 + 21*x^6 + 91*x^5 - 105*x^4)/(784*x^2 - 1344*x + 576)
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,2],[4,1,1,1],[3,2,2]],
        p        := 0,
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[0],[-105],[91],[21],[9]],
        coeffs_r := [[576],[-1344],[784]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

