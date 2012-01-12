// This is   belyi-3-3-3.m
//load "format.m";

BelyiRecords_3_3_3 := function()
records := [ ];
passport := [[3],[3],[3]];

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 + 10 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 5/2 over field
    phi = -w/x^3*y + 5/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [10,0,1],
        coeffs_f := [[-5/2,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[5,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over Rational Field
    phi = -2/x^3*y + (x^3 + 2)/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1],
        coeffs_f := [[1],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2],[0],[0],[1]],
        coeffs_q := [[-2]],
        coeffs_r := [[0],[0],[0],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over Rational Field
    phi = 2/x^3*y + (x^3 + 2)/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1],
        coeffs_f := [[1],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2],[0],[0],[1]],
        coeffs_q := [[2]],
        coeffs_r := [[0],[0],[0],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over Rational Field
    phi = (-6*x - 6)/(x^3 - 6*x^2 + 12*x - 8)*y + (2*x^3 + 6*x^2 + 6*x + 2)/(x^3 - 6*x^2 + 12*x - 8)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1],
        coeffs_f := [[1],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2],[6],[6],[2]],
        coeffs_q := [[-6],[-6]],
        coeffs_r := [[-8],[12],[-6],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over Rational Field
    phi = (6*x + 6)/(x^3 - 6*x^2 + 12*x - 8)*y + (2*x^3 + 6*x^2 + 6*x + 2)/(x^3 - 6*x^2 + 12*x - 8)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1],
        coeffs_f := [[1],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2],[6],[6],[2]],
        coeffs_q := [[6],[6]],
        coeffs_r := [[-8],[12],[-6],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 - z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (6*w*x - 6)/(x^3 + (-6*w + 6)*x^2 - 12*w*x - 8)*y + (2*x^3 + (6*w - 6)*x^2 - 6*w*x + 2)/(x^3 + (-6*w + 6)*x^2 - 12*w*x - 8)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [1,-1,1],
        coeffs_f := [[1,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[2,0],[0,-6],[-6,6],[2,0]],
        coeffs_q := [[-6,0],[0,6]],
        coeffs_r := [[-8,0],[0,-12],[6,-6],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 - z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (-6*w*x + 6)/(x^3 + (-6*w + 6)*x^2 - 12*w*x - 8)*y + (2*x^3 + (6*w - 6)*x^2 - 6*w*x + 2)/(x^3 + (-6*w + 6)*x^2 - 12*w*x - 8)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [1,-1,1],
        coeffs_f := [[1,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[2,0],[0,-6],[-6,6],[2,0]],
        coeffs_q := [[6,0],[0,-6]],
        coeffs_r := [[-8,0],[0,-12],[6,-6],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 + 6 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 3/2 over field
    phi = -w/x^3*y + 3/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [6,0,1],
        coeffs_f := [[-3/2,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[3,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 2 over field
    phi = -2*w/x^3*y + (x^3 + 4)/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-2,0,1],
        coeffs_f := [[2,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[4,0],[0,0],[0,0],[1,0]],
        coeffs_q := [[0,-2]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 - 6*z^4 - 12*z^3 + 12*z^2 - 72*z + 28 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 2 over field
    phi = (1/371*(48*w^5 + 54*w^4 + 51*w^3 - 936*w^2 - 1590*w - 4410)*x + 1/53*(24*w^5 + 27*w^4 - 160*w^3 - 468*w^2 + 318*w - 1092))/(x^3 + 1/371*(72*w^5 + 81*w^4 - 480*w^3 - 1404*w^2 - 1272*w - 3276)*x^2 + 1/371*(-324*w^5 + 192*w^4 + 
2160*w^3 + 4092*w^2 - 7632*w + 16968)*x - 48)*y + (3*x^3 + 1/371*(-144*w^5 - 162*w^4 + 960*w^3 + 2808*w^2 + 2544*w + 6552)*x^2 + 1/371*(-162*w^5 + 96*w^4 + 1080*w^3 + 2046*w^2 - 3816*w + 8484)*x - 4)/(x^3 + 1/371*(72*w^5 + 81*w^4 - 
480*w^3 - 1404*w^2 - 1272*w - 3276)*x^2 + 1/371*(-324*w^5 + 192*w^4 + 2160*w^3 + 4092*w^2 - 7632*w + 16968)*x - 48)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [28,-72,12,-12,-6,0,1],
        coeffs_f := [[2,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[-4,0,0,0,0,0],[1212/53,-72/7,2046/371,1080/371,96/371,-162/371],[936/53,48/7,2808/371,960/371,-162/371,-144/371],[3,0,0,0,0,0]],
        coeffs_q := [[-1092/53,6,-468/53,-160/53,27/53,24/53],[-630/53,-30/7,-936/371,51/371,54/371,48/371]],
        coeffs_r := [[-48,0,0,0,0,0],[2424/53,-144/7,4092/371,2160/371,192/371,-324/371],[-468/53,-24/7,-1404/371,-480/371,81/371,72/371],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 - 50 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 2 over field
    phi = (6/5*w^5*x + 42/5*w^3)/(x^3 - 6/5*w^4*x^2 + 24*w^2*x - 160)*y + (5*x^3 + 24/5*w^4*x^2 + 12*w^2*x - 44)/(x^3 - 6/5*w^4*x^2 + 24*w^2*x - 160)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-50,0,0,0,0,0,1],
        coeffs_f := [[2,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[-44,0,0,0,0,0],[0,0,12,0,0,0],[0,0,0,0,24/5,0],[5,0,0,0,0,0]],
        coeffs_q := [[0,0,0,42/5,0,0],[0,0,0,0,0,6/5]],
        coeffs_r := [[-160,0,0,0,0,0],[0,0,24,0,0,0],[0,0,0,0,-6/5,0],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 + z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 3 over field
    phi = (-4*w - 2)/x^3*y + 6/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [1,1,1],
        coeffs_f := [[-3,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[6,0]],
        coeffs_q := [[-2,-4]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over Rational Field
    phi = -4/x^3*y + (x^3 + 8)/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1],
        coeffs_f := [[4],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[8],[0],[0],[1]],
        coeffs_q := [[-4]],
        coeffs_r := [[0],[0],[0],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over Rational Field
    phi = 4/x^3*y + (x^3 + 8)/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1],
        coeffs_f := [[4],[0],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[8],[0],[0],[1]],
        coeffs_q := [[4]],
        coeffs_r := [[0],[0],[0],[1]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 + 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 9/2 over field
    phi = -3*w/x^3*y + 9/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [2,0,1],
        coeffs_f := [[-9/2,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[9,0]],
        coeffs_q := [[0,-3]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - z^2 + 5*z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = ((-12*w^2 + 36*w - 48)*x - 114)/(x^3 + (-6*w^2 - 18)*x^2 + (24*w^2 - 72*w + 96)*x - 224)*y + (8*x^3 + (42*w^2 + 126)*x^2 + (12*w^2 - 36*w + 48)*x - 82)/(x^3 + (-6*w^2 - 18)*x^2 + (24*w^2 - 72*w + 96)*x - 224)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [1,5,-1,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-82,0,0],[48,-36,12],[126,0,42],[8,0,0]],
        coeffs_q := [[-114,0,0],[-48,36,-12]],
        coeffs_r := [[-224,0,0],[96,-72,24],[-18,0,-6],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 6 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (6*w^2*x + 26)/(x^3 - 6*w*x^2 + 12*w^2*x - 48)*y + (4*x^3 + 18*w*x^2 + 6*w^2*x - 10)/(x^3 - 6*w*x^2 + 12*w^2*x - 48)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-6,0,0,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-10,0,0],[0,0,6],[0,18,0],[4,0,0]],
        coeffs_q := [[26,0,0],[0,0,6]],
        coeffs_r := [[-48,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - z^2 + 5*z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = ((12*w^2 - 36*w + 48)*x + 114)/(x^3 + (-6*w^2 - 18)*x^2 + (24*w^2 - 72*w + 96)*x - 224)*y + (8*x^3 + (42*w^2 + 126)*x^2 + (12*w^2 - 36*w + 48)*x - 82)/(x^3 + (-6*w^2 - 18)*x^2 + (24*w^2 - 72*w + 96)*x - 224)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [1,5,-1,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-82,0,0],[48,-36,12],[126,0,42],[8,0,0]],
        coeffs_q := [[114,0,0],[48,-36,12]],
        coeffs_r := [[-224,0,0],[96,-72,24],[-18,0,-6],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 6 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (-6*w^2*x - 26)/(x^3 - 6*w*x^2 + 12*w^2*x - 48)*y + (4*x^3 + 18*w*x^2 + 6*w^2*x - 10)/(x^3 - 6*w*x^2 + 12*w^2*x - 48)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-6,0,0,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-10,0,0],[0,0,6],[0,18,0],[4,0,0]],
        coeffs_q := [[-26,0,0],[0,0,-6]],
        coeffs_r := [[-48,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 21 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (-6*w^2*x - 86)/(x^3 - 6*w*x^2 + 12*w^2*x - 168)*y + (7*x^3 + 36*w*x^2 + 6*w^2*x - 58)/(x^3 - 6*w*x^2 + 12*w^2*x - 168)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-21,0,0,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-58,0,0],[0,0,6],[0,36,0],[7,0,0]],
        coeffs_q := [[-86,0,0],[0,0,-6]],
        coeffs_r := [[-168,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 21 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (6*w^2*x + 86)/(x^3 - 6*w*x^2 + 12*w^2*x - 168)*y + (7*x^3 + 36*w*x^2 + 6*w^2*x - 58)/(x^3 - 6*w*x^2 + 12*w^2*x - 168)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-21,0,0,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-58,0,0],[0,0,6],[0,36,0],[7,0,0]],
        coeffs_q := [[86,0,0],[0,0,6]],
        coeffs_r := [[-168,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 3 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (-6*w^2*x - 14)/(x^3 - 6*w*x^2 + 12*w^2*x - 24)*y + (3*x^3 + 12*w*x^2 + 6*w^2*x - 2)/(x^3 - 6*w*x^2 + 12*w^2*x - 24)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-3,0,0,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-2,0,0],[0,0,6],[0,12,0],[3,0,0]],
        coeffs_q := [[-14,0,0],[0,0,-6]],
        coeffs_r := [[-24,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 3 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 1 over field
    phi = (6*w^2*x + 14)/(x^3 - 6*w*x^2 + 12*w^2*x - 24)*y + (3*x^3 + 12*w*x^2 + 6*w^2*x - 2)/(x^3 - 6*w*x^2 + 12*w^2*x - 24)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-3,0,0,1],
        coeffs_f := [[1,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-2,0,0],[0,0,6],[0,12,0],[3,0,0]],
        coeffs_q := [[14,0,0],[0,0,6]],
        coeffs_r := [[-24,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 18*z - 30 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = ((-6*w^2 + 18*w + 72)*x + 28)/(x^3 + (-6*w^2 + 12*w + 72)*x^2 + (-24*w^2 + 72*w + 288)*x - 96)*y + (3*x^3 + (12*w^2 - 24*w - 144)*x^2 + (-12*w^2 + 36*w + 144)*x - 8)/(x^3 + (-6*w^2 + 12*w + 72)*x^2 + (-24*w^2 + 72*w + 288)*x - 96)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-30,-18,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-8,0,0],[144,36,-12],[-144,-24,12],[3,0,0]],
        coeffs_q := [[28,0,0],[72,18,-6]],
        coeffs_r := [[-96,0,0],[288,72,-24],[72,12,-6],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 18*z - 30 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = ((6*w^2 - 18*w - 72)*x - 28)/(x^3 + (-6*w^2 + 12*w + 72)*x^2 + (-24*w^2 + 72*w + 288)*x - 96)*y + (3*x^3 + (12*w^2 - 24*w - 144)*x^2 + (-12*w^2 + 36*w + 144)*x - 8)/(x^3 + (-6*w^2 + 12*w + 72)*x^2 + (-24*w^2 + 72*w + 288)*x - 96)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-30,-18,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-8,0,0],[144,36,-12],[-144,-24,12],[3,0,0]],
        coeffs_q := [[-28,0,0],[-72,-18,6]],
        coeffs_r := [[-96,0,0],[288,72,-24],[72,12,-6],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (6*w*x + 12)/(x^3 - 6*w^2*x^2 + 24*w*x - 32)*y + (2*x^3 + 6*w^2*x^2 + 12*w*x + 8)/(x^3 - 6*w^2*x^2 + 24*w*x - 32)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-2,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[8,0,0],[0,12,0],[0,0,6],[2,0,0]],
        coeffs_q := [[12,0,0],[0,6,0]],
        coeffs_r := [[-32,0,0],[0,24,0],[0,0,-6],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (-6*w*x - 12)/(x^3 - 6*w^2*x^2 + 24*w*x - 32)*y + (2*x^3 + 6*w^2*x^2 + 12*w*x + 8)/(x^3 - 6*w^2*x^2 + 24*w*x - 32)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-2,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[8,0,0],[0,12,0],[0,0,6],[2,0,0]],
        coeffs_q := [[-12,0,0],[0,-6,0]],
        coeffs_r := [[-32,0,0],[0,24,0],[0,0,-6],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 3 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (-12*w^2*x - 52)/(x^3 - 12*w*x^2 + 48*w^2*x - 192)*y + (4*x^3 + 36*w*x^2 + 24*w^2*x - 40)/(x^3 - 12*w*x^2 + 48*w^2*x - 192)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-3,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-40,0,0],[0,0,24],[0,36,0],[4,0,0]],
        coeffs_q := [[-52,0,0],[0,0,-12]],
        coeffs_r := [[-192,0,0],[0,0,48],[0,-12,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 14 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (12*w^2*x + 228)/(x^3 - 12*w*x^2 + 48*w^2*x - 896)*y + (8*x^3 + 84*w*x^2 + 24*w^2*x - 328)/(x^3 - 12*w*x^2 + 48*w^2*x - 896)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-14,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-328,0,0],[0,0,24],[0,84,0],[8,0,0]],
        coeffs_q := [[228,0,0],[0,0,12]],
        coeffs_r := [[-896,0,0],[0,0,48],[0,-12,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 3 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (12*w^2*x + 52)/(x^3 - 12*w*x^2 + 48*w^2*x - 192)*y + (4*x^3 + 36*w*x^2 + 24*w^2*x - 40)/(x^3 - 12*w*x^2 + 48*w^2*x - 192)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-3,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-40,0,0],[0,0,24],[0,36,0],[4,0,0]],
        coeffs_q := [[52,0,0],[0,0,12]],
        coeffs_r := [[-192,0,0],[0,0,48],[0,-12,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 14 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (-12*w^2*x - 228)/(x^3 - 12*w*x^2 + 48*w^2*x - 896)*y + (8*x^3 + 84*w*x^2 + 24*w^2*x - 328)/(x^3 - 12*w*x^2 + 48*w^2*x - 896)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-14,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-328,0,0],[0,0,24],[0,84,0],[8,0,0]],
        coeffs_q := [[-228,0,0],[0,0,-12]],
        coeffs_r := [[-896,0,0],[0,0,48],[0,-12,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 84 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (-3*w^2*x - 172)/(x^3 - 6*w*x^2 + 12*w^2*x - 672)*y + (7*x^3 + 36*w*x^2 + 6*w^2*x - 232)/(x^3 - 6*w*x^2 + 12*w^2*x - 672)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-84,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-232,0,0],[0,0,6],[0,36,0],[7,0,0]],
        coeffs_q := [[-172,0,0],[0,0,-3]],
        coeffs_r := [[-672,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^3 - 84 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 4 over field
    phi = (3*w^2*x + 172)/(x^3 - 6*w*x^2 + 12*w^2*x - 672)*y + (7*x^3 + 36*w*x^2 + 6*w^2*x - 232)/(x^3 - 6*w*x^2 + 12*w^2*x - 672)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-84,0,0,1],
        coeffs_f := [[4,0,0],[0,0,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[-232,0,0],[0,0,6],[0,36,0],[7,0,0]],
        coeffs_q := [[172,0,0],[0,0,3]],
        coeffs_r := [[-672,0,0],[0,0,12],[0,-6,0],[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 + 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 1/2 over field
    phi = -w/x^3*y + 1/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [2,0,1],
        coeffs_f := [[-1/2,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[1,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^2 + z - 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 5 over field
    phi = (-4*w - 2)/x^3*y + (x^3 + 10)/x^3
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-1,1,1],
        coeffs_f := [[5,0],[0,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[10,0],[0,0],[0,0],[1,0]],
        coeffs_q := [[-2,-4]],
        coeffs_r := [[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 + 3*z^5 - 285*z^3 - 420*z^2 - 1257*z + 19039 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 5 over field
    phi = (1/105865*(-12*w^5 - 534*w^4 - 85680*w^3 - 122274*w^2 + 329784*w + 12049626)*x + 1/105865*(-1368*w^5 - 60876*w^4 - 112632*w^3 + 543096*w^2 + 8630712*w + 5076990))/(x^3 + 1/105865*(36*w^5 + 1602*w^4 + 2964*w^3 - 14292*w^2 - 
862314*w - 451200)*x^2 + 1/105865*(-6048*w^5 - 15060*w^4 + 10200*w^3 + 2146980*w^2 + 2078040*w + 4914396)*x - 1120)*y + (8*x^3 + 1/105865*(-252*w^5 - 11214*w^4 - 20748*w^3 + 100044*w^2 + 6036198*w + 3158400)*x^2 + 1/105865*(-3024*w^5 -
7530*w^4 + 5100*w^3 + 1073490*w^2 + 1039020*w + 2457198)*x - 410)/(x^3 + 1/105865*(36*w^5 + 1602*w^4 + 2964*w^3 - 14292*w^2 - 862314*w - 451200)*x^2 + 1/105865*(-6048*w^5 - 15060*w^4 + 10200*w^3 + 2146980*w^2 + 2078040*w + 4914396)*x -
1120)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [19039,-1257,-420,-285,0,3,1],
        coeffs_f := [[5,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[-410,0,0,0,0,0],[2457198/105865,207804/21173,214698/21173,1020/21173,-1506/21173,-3024/105865],[631680/21173,6036198/105865,100044/105865,-20748/105865,-11214/105865,-252/105865],[8,0,0,0,0,0]],
        coeffs_q := [[1015398/21173,8630712/105865,543096/105865,-112632/105865,-60876/105865,-1368/105865],[12049626/105865,329784/105865,-122274/105865,-17136/21173,-534/105865,-12/105865]],
        coeffs_r := [[-1120,0,0,0,0,0],[4914396/105865,415608/21173,429396/21173,2040/21173,-3012/21173,-6048/105865],[-90240/21173,-862314/105865,-14292/105865,2964/105865,1602/105865,36/105865],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 - 3*z^5 + 65*z^3 - 90*z^2 + 267*z + 779 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 5 over field
    phi = (1/4885*(12*w^5 - 138*w^4 + 4104*w^3 - 4794*w^2 - 16020*w + 127650)*x + 1/4885*(312*w^5 - 3588*w^4 + 5096*w^3 + 27768*w^2 - 111696*w + 92846))/(x^3 + 1/4885*(-36*w^5 + 414*w^4 - 588*w^3 - 3204*w^2 + 42198*w - 25368)*x^2 + 
1/4885*(1296*w^5 - 3180*w^4 - 2280*w^3 + 103620*w^2 - 88800*w + 221532)*x - 240)*y + (4*x^3 + 1/4885*(108*w^5 - 1242*w^4 + 1764*w^3 + 9612*w^2 - 126594*w + 76104)*x^2 + 1/4885*(648*w^5 - 1590*w^4 - 1140*w^3 + 51810*w^2 - 44400*w + 
110766)*x - 50)/(x^3 + 1/4885*(-36*w^5 + 414*w^4 - 588*w^3 - 3204*w^2 + 42198*w - 25368)*x^2 + 1/4885*(1296*w^5 - 3180*w^4 - 2280*w^3 + 103620*w^2 - 88800*w + 221532)*x - 240)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [779,267,-90,65,0,-3,1],
        coeffs_f := [[5,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[-50,0,0,0,0,0],[110766/4885,-8880/977,10362/977,-228/977,-318/977,648/4885],[76104/4885,-126594/4885,9612/4885,1764/4885,-1242/4885,108/4885],[4,0,0,0,0,0]],
        coeffs_q := [[92846/4885,-111696/4885,27768/4885,5096/4885,-3588/4885,312/4885],[25530/977,-3204/977,-4794/4885,4104/4885,-138/4885,12/4885]],
        coeffs_r := [[-240,0,0,0,0,0],[221532/4885,-17760/977,20724/977,-456/977,-636/977,1296/4885],[-25368/4885,42198/4885,-3204/4885,-588/4885,414/4885,-36/4885],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 + 3*z^5 + 205*z^3 + 315*z^2 + 948*z + 11444 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 5 over field
    phi = (1/14890*(3*w^5 - 87*w^4 + 11718*w^3 + 18735*w^2 - 44667*w + 1226706)*x + 1/7445*(129*w^5 - 3741*w^4 - 8342*w^3 + 37281*w^2 - 384033*w - 137944))/(x^3 + 1/14890*(-9*w^5 + 261*w^4 + 582*w^3 - 2601*w^2 + 116133*w + 54294)*x^2 +
1/7445*(567*w^5 + 1425*w^4 - 930*w^3 + 145995*w^2 + 152445*w + 349626)*x - 840)*y + (7*x^3 + 1/7445*(27*w^5 - 783*w^4 - 1746*w^3 + 7803*w^2 - 348399*w - 162882)*x^2 + 1/14890*(567*w^5 + 1425*w^4 - 930*w^3 + 145995*w^2 + 152445*w + 
349626)*x - 290)/(x^3 + 1/14890*(-9*w^5 + 261*w^4 + 582*w^3 - 2601*w^2 + 116133*w + 54294)*x^2 + 1/7445*(567*w^5 + 1425*w^4 - 930*w^3 + 145995*w^2 + 152445*w + 349626)*x - 840)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [11444,948,315,205,0,3,1],
        coeffs_f := [[5,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[-290,0,0,0,0,0],[174813/7445,30489/2978,29199/2978,-93/1489,285/2978,567/14890],[-162882/7445,-348399/7445,7803/7445,-1746/7445,-783/7445,27/7445],[7,0,0,0,0,0]],
        coeffs_q := [[-137944/7445,-384033/7445,37281/7445,-8342/7445,-3741/7445,129/7445],[613353/7445,-44667/14890,3747/2978,5859/7445,-87/14890,3/14890]],
        coeffs_r := [[-840,0,0,0,0,0],[349626/7445,30489/1489,29199/1489,-186/1489,285/1489,567/7445],[27147/7445,116133/14890,-2601/14890,291/7445,261/14890,-9/14890],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 + 3*z^5 + 25*z^3 + 45*z^2 + 138*z + 284 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 5 over field
    phi = (1/310*(3*w^5 - 6*w^4 + 216*w^3 + 483*w^2 - 792*w + 3444)*x + 1/155*(21*w^5 - 42*w^4 - 224*w^3 + 777*w^2 - 336*w + 1106))/(x^3 + 1/310*(-9*w^5 + 18*w^4 + 96*w^3 - 333*w^2 + 2004*w + 456)*x^2 + 1/155*(81*w^5 + 210*w^4 - 120*w^3 + 2625*w^2 + 3540*w + 7428)*x - 120)*y + (3*x^3 + 1/155*(9*w^5 - 18*w^4 - 96*w^3 + 333*w^2 - 2004*w - 456)*x^2 + 1/310*(81*w^5 + 210*w^4 - 120*w^3 + 2625*w^2 + 3540*w + 7428)*x - 10)/(x^3 + 1/310*(-9*w^5 + 18*w^4 + 96*w^3 - 333*w^2 + 2004*w + 456)*x^2 + 1/155*(81*w^5 + 210*w^4 - 120*w^3 + 2625*w^2 + 3540*w + 7428)*x - 120)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [284,138,45,25,0,3,1],
        coeffs_f := [[5,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[-10,0,0,0,0,0],[3714/155,354/31,525/62,-12/31,21/31,81/310],[-456/155,-2004/155,333/155,-96/155,-18/155,9/155],[3,0,0,0,0,0]],
        coeffs_q := [[1106/155,-336/155,777/155,-224/155,-42/155,21/155],[1722/155,-396/155,483/310,108/155,-3/155,3/310]],
        coeffs_r := [[-120,0,0,0,0,0],[7428/155,708/31,525/31,-24/31,42/31,81/155],[228/155,1002/155,-333/310,48/155,9/155,-9/310],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[3],[3],[3]]
    field = Number Field with defining polynomial z^6 - 5 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 5 over field
    phi = (6*w*x + 6*w^3)/(x^3 - 6*w^2*x^2 + 12*w^4*x - 40)*y + (2*x^3 + 6*w^2*x^2 + 6*w^4*x + 10)/(x^3 - 6*w^2*x^2 + 12*w^4*x - 40)
    j = 0
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[3],[3],[3]],
        defpoly  := [-5,0,0,0,0,0,1],
        coeffs_f := [[5,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[1,0,0,0,0,0]],
        coeffs_h := [],
        coeffs_p := [[10,0,0,0,0,0],[0,0,0,0,6,0],[0,0,6,0,0,0],[2,0,0,0,0,0]],
        coeffs_q := [[0,0,0,6,0,0],[0,6,0,0,0,0]],
        coeffs_r := [[-40,0,0,0,0,0],[0,0,0,0,12,0],[0,0,-6,0,0,0],[1,0,0,0,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;
