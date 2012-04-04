// This is   belyi-511-322-322.m
//load "format.m";

BelyiRecords_511_322_322 := function()
records := [ ];
passport := [[5,1,1],[3,2,2],[3,2,2]];



/**************** Begin Solution *********************
    passport = [[5,1,1],[3,2,2],[3,2,2]]
    field = Rational Field
    phi = (-768/7*x^7 + 384*x^6 - 496*x^5 + 280*x^4 - 175/3*x^3)/(x^2 - x - 1/21)
 **************** Record *****************************/
record := rec< G0BelyiRecord |
        passport := [[5,1,1],[3,2,2],[3,2,2]],
        defpoly  := [-1,1],
        coeffs_p := [[0],[0],[0],[-175/3],[280],[-496],[384],[-768/7]],
        coeffs_r := [[-1/21],[-1],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
