// This is   belyi-421-322-322.m
//load "format.m";

BelyiRecords_421_322_322 := function()
records := [ ];
passport := [[4,2,1],[3,2,2],[3,2,2]];

/**************** Begin Solution *********************
    passport = [[4,2,1],[3,2,2],[3,2,2]]
    field = Number Field with defining polynomial z^2 - z - 26 over the Rational Field
    phi = (1/245*(-128*w + 64)*x^7 + 1/35*(64*w - 256)*x^6 + 1/175*(-544*w + 3632)*x^5 + 1/15*(48*w - 304)*x^4 + 1/9*(-13*w + 59)*x^3)/(x^3 + 1/21*(5*w - 34)*x^2 + 1/105*(-25*w + 58)*x + 1/11025*(-517*w + 626))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2,1],[3,2,2],[3,2,2]],
        p        := 0,
        defpoly  := [-26,-1,1],
        coeffs_p := [[0,0],[0,0],[0,0],[59/9,-13/9],[-304/15,16/5],[3632/175,-544/175],[-256/35,64/35],[64/245,-128/245]],
        coeffs_r := [[626/11025,-517/11025],[58/105,-5/21],[-34/21,5/21],[1,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;
