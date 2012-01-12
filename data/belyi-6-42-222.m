// This is   belyi-6-42-222.m
//load "format.m";

BelyiRecords_6_42_222 := function()
records := [ ];
passport := [[6],[4,2],[2,2,2]];

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^3 + 20 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 13/60*w*x + 7/54 over F
    map = 5*x^3 + 1/4*w^2*x^2 + 2/3*w*x + 7/27
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [20,0,0,1],
        coeffs_f := [[7/54,0,0],[0,13/60,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[7/27,0,0],[0,2/3,0],[0,0,1/4],[5,0,0]],
        coeffs_q := [],
        coeffs_r := [[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 13/12*x + 35/108 over Rational Field
    map = (54*x^3 + 27*x^2 - 36*x + 7)/27
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[35/108],[-13/12],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[7],[-36],[27],[54]],
        coeffs_q := [],
        coeffs_r := [[27]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 13/243*x + 70/19683 over Rational Field
    map = (59049*x^2 - 21870*x + 2025)/(19683*x^3 + 15309*x^2 + 3969*x + 343)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[70/19683],[-13/243],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2025],[-21870],[59049]],
        coeffs_q := [],
        coeffs_r := [[343],[3969],[15309],[19683]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 208/2187*x + 4480/531441 over Rational Field
    map = (2125764*x^2 - 1049760*x + 129600)/(531441*x^3 + 551124*x^2 + 190512*x + 21952)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[4480/531441],[-208/2187],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[129600],[-1049760],[2125764]],
        coeffs_q := [],
        coeffs_r := [[21952],[190512],[551124],[531441]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 52/27*x + 560/729 over Rational Field
    map = (2187*x - 2430)/(729*x^3 - 972*x^2 + 432*x - 64)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[560/729],[-52/27],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[-2430],[2187]],
        coeffs_q := [],
        coeffs_r := [[-64],[432],[-972],[729]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 + 13 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 3*x - 70/169*w over F
    map = (x^3 + 12/13*w*x^2 - 21/13*x + 98/169*w)/(x^3 - 15/13*w*x^2 - 75/13*x + 125/169*w)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [13,0,1],
        coeffs_f := [[0,-70/169],[3,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[0,98/169],[-21/13,0],[0,12/13],[1,0]],
        coeffs_q := [],
        coeffs_r := [[0,125/169],[-75/13,0],[0,-15/13],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 52/27*x - 560/729 over Rational Field
    map = (2187*x + 2430)/(729*x^3 + 972*x^2 + 432*x + 64)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[-560/729],[-52/27],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2430],[2187]],
        coeffs_q := [],
        coeffs_r := [[64],[432],[972],[729]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 + z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 13/12*w*x + 35/108 over F
    map = 2*x^3 + (-w - 1)*x^2 - 4/3*w*x + 7/27
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [1,1,1],
        coeffs_f := [[35/108,0],[0,-13/12],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[7/27,0],[0,-4/3],[-1,-1],[2,0]],
        coeffs_q := [],
        coeffs_r := [[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 52/2187*x + 560/531441 over Rational Field
    map = (1062882*x^2 - 262440*x + 16200)/(531441*x^3 + 275562*x^2 + 47628*x + 2744)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[560/531441],[-52/2187],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[16200],[-262440],[1062882]],
        coeffs_q := [],
        coeffs_r := [[2744],[47628],[275562],[531441]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 325/2187*x + 8750/531441 over Rational Field
    map = (2657205*x^2 - 1640250*x + 253125)/(531441*x^3 + 688905*x^2 + 297675*x + 42875)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[8750/531441],[-325/2187],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[253125],[-1640250],[2657205]],
        coeffs_q := [],
        coeffs_r := [[42875],[297675],[688905],[531441]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 - 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 104/27*x + 1120/729*w over F
    map = (6*x - 20/3*w)/(x^3 - 4/3*w*x^2 + 32/27*x - 128/729*w)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-2,0,1],
        coeffs_f := [[0,1120/729],[-104/27,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[0,-20/3],[6,0]],
        coeffs_q := [],
        coeffs_r := [[0,-128/729],[32/27,0],[0,-4/3],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 + 26 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + 6*x - 140/169*w over F
    map = (x^3 + 12/13*w*x^2 - 42/13*x + 196/169*w)/(x^3 - 15/13*w*x^2 - 150/13*x + 250/169*w)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [26,0,1],
        coeffs_f := [[0,-140/169],[6,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[0,196/169],[-42/13,0],[0,12/13],[1,0]],
        coeffs_q := [],
        coeffs_r := [[0,250/169],[-150/13,0],[0,-15/13],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^3 + 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 13/12*w^2*x + 35/54 over F
    map = x^3 - 1/2*w*x^2 - 2/3*w^2*x + 7/27
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [2,0,0,1],
        coeffs_f := [[35/54,0,0],[0,0,-13/12],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[7/27,0,0],[0,0,-2/3],[0,-1/2,0],[1,0,0]],
        coeffs_q := [],
        coeffs_r := [[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 - z + 10 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 + x + 1/1521*(-140*w + 70) over F
    map = (x^3 + 1/13*(8*w - 4)*x^2 - 7/13*x + 1/1521*(196*w - 98))/(x^3 + 1/13*(-10*w + 5)*x^2 - 25/13*x + 1/1521*(250*w - 125))
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [10,-1,1],
        coeffs_f := [[70/1521,-140/1521],[1,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[-98/1521,196/1521],[-7/13,0],[-4/13,8/13],[1,0]],
        coeffs_q := [],
        coeffs_r := [[-125/1521,250/1521],[-25/13,0],[5/13,-10/13],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^2 - 15 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 260/81*x + 2800/6561*w over F
    map = (5*x - 50/27*w)/(x^3 - 4/9*w*x^2 + 80/81*x - 320/6561*w)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-15,0,1],
        coeffs_f := [[0,2800/6561],[-260/81,0],[0,0],[1,0]],
        coeffs_h := [],
        coeffs_p := [[0,-50/27],[5,0]],
        coeffs_q := [],
        coeffs_r := [[0,-320/6561],[80/81,0],[0,-4/9],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 13/2187*x + 70/531441 over Rational Field
    map = (531441*x^2 - 65610*x + 2025)/(531441*x^3 + 137781*x^2 + 11907*x + 343)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[70/531441],[-13/2187],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2025],[-65610],[531441]],
        coeffs_q := [],
        coeffs_r := [[343],[11907],[137781],[531441]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Number Field with defining polynomial z^3 - 5 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 13/60*w*x + 7/108 over F
    map = 10*x^3 + w^2*x^2 - 4/3*w*x + 7/27
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-5,0,0,1],
        coeffs_f := [[7/108,0,0],[0,-13/60,0],[0,0,0],[1,0,0]],
        coeffs_h := [],
        coeffs_p := [[7/27,0,0],[0,-4/3,0],[0,0,1],[10,0,0]],
        coeffs_q := [],
        coeffs_r := [[1,0,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[6],[4,2],[2,2,2]]
    field = Rational Field
    curve = Hyperelliptic Curve defined by y^2 = x^3 - 1300/2187*x + 70000/531441 over Rational Field
    map = (5314410*x^2 - 6561000*x + 2025000)/(531441*x^3 + 1377810*x^2 + 1190700*x + 343000)
    j = 35152/9
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[6],[4,2],[2,2,2]],
        defpoly  := [-1,1],
        coeffs_f := [[70000/531441],[-1300/2187],[0],[1]],
        coeffs_h := [],
        coeffs_p := [[2025000],[-6561000],[5314410]],
        coeffs_q := [],
        coeffs_r := [[343000],[1190700],[1377810],[531441]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;