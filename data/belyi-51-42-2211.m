// This is   belyi-51-42-2211.m
//load "format.m";

BelyiRecords_51_42_2211 := function()
records := [ ];
passport := [[5,1],[4,2],[2,2,1,1]];

/**************** Begin Solution *********************
    passport = [[5,1],[4,2],[2,2,1,1]]
    field = Number Field with defining polynomial z^4 + z^3 - 2*z + 4 over the Rational Field
    phi = (1/768*(-315*w^3 - 330*w^2 + 350*w + 1628)*x^6 + 1/128*(169*w^3 + 174*w^2 - 202*w - 884)*x^5 + 1/256*(-265*w^3 - 270*w^2 + 330*w + 1460)*x^4)/(x + 1/24*(-3*w^3 - 3*w^2 + 4*w - 2))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[5,1],[4,2],[2,2,1,1]],
        p        := 0,
        defpoly  := [4,-2,0,1,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[365/64,165/128,-135/128,-265/256],[-221/32,-101/64,87/64,169/128],[407/192,175/384,-55/128,-105/256]],
        coeffs_r := [[-1/12,1/6,-1/8,-1/8],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

