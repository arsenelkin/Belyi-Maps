// This is   belyi-5-5-5.m
//load "format.m";

BelyiRecords_5_5_5 := function()
records := [ ];
passport := [[5],[5],[5]];

/**************** Begin Solution *********************
    passport = [[5],[5],[5]]
    field = Number Field with defining polynomial z^2 + z + 1 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 3*x^5 - 3 over F
    map = 1/3*(-4*w - 2)/x^5*y + 2/x^5
    igusa = [0,0,0,0,47239200000]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[5],[5],[5]],
        defpoly  := [1,1,1],
        coeffs_f := [[-3,0],[0,0],[0,0],[0,0],[0,0],[3,0]],
        coeffs_h := [],
        coeffs_p := [[2,0]],
        coeffs_q := [[-2/3,-4/3]],
        coeffs_r := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[5],[5]]
    field = Number Field with defining polynomial z^2 + 2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 2*x^5 - 2 over F
    map = -w/x^5*y + 2/x^5
    igusa = [0,0,0,0,819200000]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[5],[5],[5]],
        defpoly  := [2,0,1],
        coeffs_f := [[-2,0],[0,0],[0,0],[0,0],[0,0],[2,0]],
        coeffs_h := [],
        coeffs_p := [[2,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[5],[5]]
    field = Number Field with defining polynomial z^2 + 1/2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 4*x^5 - 2 over F
    map = -w/x^5*y + 1/x^5
    igusa = [0,0,0,0,52428800000]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[5],[5],[5]],
        defpoly  := [1/2,0,1],
        coeffs_f := [[-2,0],[0,0],[0,0],[0,0],[0,0],[4,0]],
        coeffs_h := [],
        coeffs_p := [[1,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[5],[5]]
    field = Number Field with defining polynomial z^2 + 3/2 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 8*x^5 - 24 over F
    map = -w/x^5*y + 6/x^5
    igusa = [0,0,0,0,69578470195200000]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[5],[5],[5]],
        defpoly  := [3/2,0,1],
        coeffs_f := [[-24,0],[0,0],[0,0],[0,0],[0,0],[8,0]],
        coeffs_h := [],
        coeffs_p := [[6,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[5],[5]]
    field = Number Field with defining polynomial z^2 + z + 9 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 10*x^5 - 35 over F
    map = 1/5*(-2*w - 1)/x^5*y + 7/x^5
    igusa = [0,0,0,0,1200500000000000000]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[5],[5],[5]],
        defpoly  := [9,1,1],
        coeffs_f := [[-35,0],[0,0],[0,0],[0,0],[0,0],[10,0]],
        coeffs_h := [],
        coeffs_p := [[7,0]],
        coeffs_q := [[-1/5,-2/5]],
        coeffs_r := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

/**************** Begin Solution *********************
    passport = [[5],[5],[5]]
    field = Number Field with defining polynomial z^2 + 6/5 over the Rational Field
    curve = Hyperelliptic Curve defined by y^2 = 5*x^5 - 15/2 over F
    map = -w/x^5*y + 3/x^5
    igusa = [0,0,0,0,39550781250000]
 **************** Record *****************************/
record := rec< HypBelyiRecord |
        passport := [[5],[5],[5]],
        defpoly  := [6/5,0,1],
        coeffs_f := [[-15/2,0],[0,0],[0,0],[0,0],[0,0],[5,0]],
        coeffs_h := [],
        coeffs_p := [[3,0]],
        coeffs_q := [[0,-1]],
        coeffs_r := [[0,0],[0,0],[0,0],[0,0],[0,0],[1,0]]>;
Append(~records, record);
/**************** End Solution ***********************/

return records, passport;
end function;