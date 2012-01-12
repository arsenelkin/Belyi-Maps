// This is   belyi-6-6-33.m
//load "format.m";

BelyiRecords_6_6_33 := function()
records := [ ];
passport := [[6],[6],[3,3]];

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Number Field with defining polynomial z^2 - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^6 - 3/2*w*x^3 + 1/8 over F
    map = (-4*x^3 + w)*y + 4*x^6 - 4*w*x^3 + 1/2
    igusa = [-6,-552,2848,-80448,186624]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-2,0,1],
        coeffs_f := [[1/8,0],[0,0],[0,0],[0,-3/2],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[1/2,0],[0,0],[0,0],[0,-4],[0,0],[0,0],[4,0]],
        coeffs_q := [[0,1],[0,0],[0,0],[-4,0]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Number Field with defining polynomial z^2 - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^6 - 3/2*w*x^3 + 1/8 over F
    map = (4*x^3 - w)*y + 4*x^6 - 4*w*x^3 + 1/2
    igusa = [-6,-552,2848,-80448,186624]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-2,0,1],
        coeffs_f := [[1/8,0],[0,0],[0,0],[0,-3/2],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[1/2,0],[0,0],[0,0],[0,-4],[0,0],[0,0],[4,0]],
        coeffs_q := [[0,-1],[0,0],[0,0],[4,0]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^6 + 3*x^3 + 1/4 over Rational Field
    map = (-2*x^3 - 1)*y + (4*x^6 + 8*x^3 + 1)/2
    igusa = [-12,-2208,22784,-1287168,5971968]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-1,1],
        coeffs_f := [[1/4],[0],[0],[3],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[1],[0],[0],[8],[0],[0],[4]],
        coeffs_q := [[-2],[0],[0],[-4]],
        coeffs_r := [[2]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^6 + 3*x^3 + 1/4 over Rational Field
    map = (2*x^3 + 1)*y + (4*x^6 + 8*x^3 + 1)/2
    igusa = [-12,-2208,22784,-1287168,5971968]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-1,1],
        coeffs_f := [[1/4],[0],[0],[3],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[1],[0],[0],[8],[0],[0],[4]],
        coeffs_q := [[2],[0],[0],[4]],
        coeffs_r := [[2]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Number Field with defining polynomial z^4 + 2*z^3 - 4*z^2 - 16*z - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 4*x^5 + 6*x^4 + 4*x^3 + 1/9075*(-676*w^3 - 676*w^2 + 5408*w + 20504)*x^2 + 1/15125*(-676*w^3 - 676*w^2 + 5408*w + 14879)*x + 1/24956250*(-215792*w^3 - 215792*w^2 + 1726336*w + 4548643) over F
    map = (1/33*(2*w^3 + 2*w^2 - 4*w - 16)*x^2 + 1/605*(29*w^3 + 71*w^2 - 58*w - 358)*x + 1/9075*(133*w^3 + 322*w^2 - 266*w - 1631))/(x^6 + 1/55*(-3*w^3 - 3*w^2 + 24*w + 132)*x^5 + 1/110*(-9*w^3 - 9*w^2 + 72*w + 261)*x^4 + 1/3025*(-153*w^3 - 153*w^2 + 1224*w + 3762)*x^3 + 1/60500*(-972*w^3 - 972*w^2 + 7776*w + 22113)*x^2 + 1/16637500*(-43497*w^3 - 43497*w^2 + 347976*w + 951588)*x + 1/166375000*(-28917*w^3 - 28917*w^2 + 231336*w + 619893))*y + (x^6 + 1/55*(-3*w^3 - 3*w^2 + 24*w + 132)*x^5 + 1/110*(-9*w^3 - 9*w^2 + 72*w + 261)*x^4 + 1/9075*(-859*w^3 - 859*w^2 + 6872*w + 15686)*x^3 + 1/60500*(-3372*w^3 - 3372*w^2 + 26976*w + 67713)*x^2 + 1/16637500*(-369497*w^3 - 369497*w^2 + 2955976*w + 7705588)*x + 1/166375000*(-610917*w^3 - 610917*w^2 + 4887336*w + 12797893))/(x^6 + 1/55*(-3*w^3 - 3*w^2 + 24*w + 132)*x^5 + 1/110*(-9*w^3 - 9*w^2 + 72*w + 261)*x^4 + 1/3025*(-153*w^3 - 153*w^2 + 1224*w + 3762)*x^3 + 1/60500*(-972*w^3 - 972*w^2 + 7776*w + 22113)*x^2 + 1/16637500*(-43497*w^3 - 43497*w^2 + 347976*w + 951588)*x + 1/166375000*(-28917*w^3 - 28917*w^2 + 231336*w + 619893))
    igusa = [8832/121,3242496/14641,1587806208/1771561,877431029760/214358881,452984832/25937424601]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-2,-16,-4,2,1],
        coeffs_f := [[413513/2268750,863168/12478125,-107896/12478125,-107896/12478125],[14879/15125,5408/15125,-676/15125,-676/15125],[1864/825,5408/9075,-676/9075,-676/9075],[4,0,0,0],[6,0,0,0],[4,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[12797893/166375000,610917/20796875,-610917/166375000,-610917/166375000],[175127/378125,738994/4159375,-369497/16637500,-369497/16637500],[67713/60500,6744/15125,-843/15125,-843/15125],[1426/825,6872/9075,-859/9075,-859/9075],[261/110,36/55,-9/110,-9/110],[12/5,24/55,-3/55,-3/55],[1,0,0,0]],
        coeffs_q := [[-1631/9075,-266/9075,322/9075,133/9075],[-358/605,-58/605,71/605,29/605],[-16/33,-4/33,2/33,2/33]],
        coeffs_r := [[619893/166375000,28917/20796875,-28917/166375000,-28917/166375000],[21627/378125,86994/4159375,-43497/16637500,-43497/16637500],[22113/60500,1944/15125,-243/15125,-243/15125],[342/275,1224/3025,-153/3025,-153/3025],[261/110,36/55,-9/110,-9/110],[12/5,24/55,-3/55,-3/55],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Number Field with defining polynomial z^4 + 2*z^3 - 4*z^2 - 16*z - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 4*x^5 + 6*x^4 + 4*x^3 + 1/9075*(-676*w^3 - 676*w^2 + 5408*w + 20504)*x^2 + 1/15125*(-676*w^3 - 676*w^2 + 5408*w + 14879)*x + 1/24956250*(-215792*w^3 - 215792*w^2 + 1726336*w + 4548643) over F
    map = (1/33*(-2*w^3 - 2*w^2 + 4*w + 16)*x^2 + 1/605*(-29*w^3 - 71*w^2 + 58*w + 358)*x + 1/9075*(-133*w^3 - 322*w^2 + 266*w + 1631))/(x^6 + 1/55*(-3*w^3 - 3*w^2 + 24*w + 132)*x^5 + 1/110*(-9*w^3 - 9*w^2 + 72*w + 261)*x^4 + 1/3025*(-153*w^3 - 153*w^2 + 1224*w + 3762)*x^3 + 1/60500*(-972*w^3 - 972*w^2 + 7776*w + 22113)*x^2 + 1/16637500*(-43497*w^3 - 43497*w^2 + 347976*w + 951588)*x + 1/166375000*(-28917*w^3 - 28917*w^2 + 231336*w + 619893))*y + (x^6 + 1/55*(-3*w^3 - 3*w^2 + 24*w + 132)*x^5 + 1/110*(-9*w^3 - 9*w^2 + 72*w + 261)*x^4 + 1/9075*(-859*w^3 - 859*w^2 + 6872*w + 15686)*x^3 + 1/60500*(-3372*w^3 - 3372*w^2 + 26976*w + 67713)*x^2 + 1/16637500*(-369497*w^3 - 369497*w^2 + 2955976*w + 7705588)*x + 1/166375000*(-610917*w^3 - 610917*w^2 + 4887336*w + 12797893))/(x^6 + 1/55*(-3*w^3 - 3*w^2 + 24*w + 132)*x^5 + 1/110*(-9*w^3 - 9*w^2 + 72*w + 261)*x^4 + 1/3025*(-153*w^3 - 153*w^2 + 1224*w + 3762)*x^3 + 1/60500*(-972*w^3 - 972*w^2 + 7776*w + 22113)*x^2 + 1/16637500*(-43497*w^3 - 43497*w^2 + 347976*w + 951588)*x + 1/166375000*(-28917*w^3 - 28917*w^2 + 231336*w + 619893))
    igusa = [8832/121,3242496/14641,1587806208/1771561,877431029760/214358881,452984832/25937424601]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-2,-16,-4,2,1],
        coeffs_f := [[413513/2268750,863168/12478125,-107896/12478125,-107896/12478125],[14879/15125,5408/15125,-676/15125,-676/15125],[1864/825,5408/9075,-676/9075,-676/9075],[4,0,0,0],[6,0,0,0],[4,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[12797893/166375000,610917/20796875,-610917/166375000,-610917/166375000],[175127/378125,738994/4159375,-369497/16637500,-369497/16637500],[67713/60500,6744/15125,-843/15125,-843/15125],[1426/825,6872/9075,-859/9075,-859/9075],[261/110,36/55,-9/110,-9/110],[12/5,24/55,-3/55,-3/55],[1,0,0,0]],
        coeffs_q := [[1631/9075,266/9075,-322/9075,-133/9075],[358/605,58/605,-71/605,-29/605],[16/33,4/33,-2/33,-2/33]],
        coeffs_r := [[619893/166375000,28917/20796875,-28917/166375000,-28917/166375000],[21627/378125,86994/4159375,-43497/16637500,-43497/16637500],[22113/60500,1944/15125,-243/15125,-243/15125],[342/275,1224/3025,-153/3025,-153/3025],[261/110,36/55,-9/110,-9/110],[12/5,24/55,-3/55,-3/55],[1,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Number Field with defining polynomial z^2 - 14 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^6 - 3/7*w*x^3 + 1/14 over F
    map = (-7*x^3 + 1/2*w)*y + 7*x^6 - 2*w*x^3 + 1/2
    igusa = [-24/7,-8832/49,182272/343,-20594688/2401,191102976/16807]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-14,0,1],
        coeffs_f := [[1/14,0],[0,0],[0,0],[0,-3/7],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[1/2,0],[0,0],[0,0],[0,-2],[0,0],[0,0],[7,0]],
        coeffs_q := [[0,1/2],[0,0],[0,0],[-7,0]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[6],[3,3]]
    field = Number Field with defining polynomial z^2 - 14 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^6 - 3/7*w*x^3 + 1/14 over F
    map = (7*x^3 - 1/2*w)*y + 7*x^6 - 2*w*x^3 + 1/2
    igusa = [-24/7,-8832/49,182272/343,-20594688/2401,191102976/16807]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[6],[3,3]],
        defpoly  := [-14,0,1],
        coeffs_f := [[1/14,0],[0,0],[0,0],[0,-3/7],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[1/2,0],[0,0],[0,0],[0,-2],[0,0],[0,0],[7,0]],
        coeffs_q := [[0,-1/2],[0,0],[0,0],[7,0]],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;