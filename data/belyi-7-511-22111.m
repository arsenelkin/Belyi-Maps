// This is   belyi-7-511-22111.m
//load "format.m";

BelyiRecords_7_511_22111 := function()
records := [ ];
passport := [[7],[5,1,1],[2,2,1,1,1]];

/**************** Begin Solution *********************
    passport = [[7],[5,1,1],[2,2,1,1,1]]
    field = Number Field with defining polynomial z^4 - z^3 + 3*z^2 - 4*z + 16 
over the Rational Field
    phi = 1/6250*(-77*w^3 + 3129*w^2 - 4935*w - 8632)*x^7 + 1/3125*(77*w^3 - 
3129*w^2 + 4935*w - 6993)*x^6 + 1/6250*(-77*w^3 + 3129*w^2 - 4935*w + 28868)*x^5
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[7],[5,1,1],[2,2,1,1,1]],
        p        := 0,
        defpoly  := [16,-4,3,-1,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[14434/3125,-987/1250,3129/6250,-77/6250],[-6993/3125,987/625,-3129/3125,77/3125],[-4316/3125,-987/1250,3129/6250,-77/6250]],
        coeffs_r := [[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

