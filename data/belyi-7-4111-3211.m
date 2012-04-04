// This is   belyi-7-4111-3211.m
//load "format.m";

BelyiRecords_7_4111_3211 := function()
records := [ ];
passport := [[7],[4,1,1,1],[3,2,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[4,1,1,1],[3,2,1,1]]
    field = Number Field with defining polynomial z^3 - 21*z + 70 over the 
Rational Field
    phi = 1/256*(77*w^2 + 238*w + 515)*x^7 + 1/256*(-231*w^2 - 714*w + 1015)*x^6
+ 1/256*(231*w^2 + 714*w - 4599)*x^5 + 1/256*(-77*w^2 - 238*w + 3325)*x^4
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[4,1,1,1],[3,2,1,1]],
        p        := 0,
        defpoly  := [70,-21,0,1],
        coeffs_p := [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[3325/256,-119/128,-77/256],[-4599/256,357/128,231/256],[1015/256,-357/128,-231/256],[515/256,119/128,77/256]],
        coeffs_r := [[1,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

