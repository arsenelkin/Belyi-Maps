load "format.m";
load "belyi-1-1-1.m";
load "belyi-2-2-11.m";
load "belyi-3-3-111.m";
load "belyi-3-21-21.m";
load "belyi-3-3-3.m";
load "belyi-4-4-1111.m";
load "belyi-4-31-211.m";
load "belyi-4-22-211.m";
load "belyi-31-31-31.m";
load "belyi-31-31-22.m";
load "belyi-31-22-22.m";
load "belyi-22-22-22.m";
load "belyi-4-4-31.m";
load "belyi-4-4-22.m";
load "belyi-5-5-11111.m";
load "belyi-5-41-2111.m";
load "belyi-5-32-2111.m";
load "belyi-5-311-311.m";
load "belyi-5-311-221.m";
load "belyi-5-221-221.m";
load "belyi-41-41-311.m";
load "belyi-41-41-221.m";
load "belyi-41-32-311.m";
load "belyi-41-32-221.m";
load "belyi-32-32-311.m";
load "belyi-32-32-221.m";
load "belyi-5-5-311.m";
load "belyi-5-5-221.m";
load "belyi-5-5-5.m";
load "belyi-6-6-111111.m";
load "belyi-6-51-21111.m";
load "belyi-6-42-21111.m";
load "belyi-6-411-3111.m";
load "belyi-6-411-2211.m";
load "belyi-6-33-21111.m";
load "belyi-6-3111-222.m";
load "belyi-51-51-3111.m";
load "belyi-51-411-411.m";
load "belyi-51-222-222.m";
load "belyi-42-42-3111.m";
load "belyi-42-222-222.m";
load "belyi-33-321-222.m";
load "belyi-6-6-3111.m";
load "belyi-6-6-2211.m";
load "belyi-6-51-222.m";
load "belyi-6-42-411.m";
load "belyi-6-42-222.m";
load "belyi-6-33-222.m";
load "belyi-42-33-33.m";
load "belyi-33-33-33.m";
load "belyi-6-6-33.m";
load "belyi-7-7-1111111.m";
load "belyi-7-61-211111.m";
load "belyi-7-52-211111.m";
load "belyi-7-511-31111.m";
load "belyi-7-43-211111.m";
load "belyi-7-4111-4111.m";
load "belyi-7-322-31111.m";
load "belyi-61-61-31111.m";
load "belyi-61-511-4111.m";
load "belyi-52-52-31111.m";
load "belyi-52-4111-322.m";
load "belyi-511-511-511.m";
load "belyi-511-322-322.m";
load "belyi-43-43-31111.m";
load "belyi-322-322-322.m";
load "belyi-7-7-511.m";
load "belyi-7-7-331.m";
load "belyi-7-7-322.m";

BelyiMapDatabase := function()
    database := AssociativeArray();

    records, passport := BelyiRecords_1_1_1();
    database[passport] := records;

    records, passport := BelyiRecords_2_2_11();
    database[passport] := records;

    records, passport := BelyiRecords_3_3_111();
    database[passport] := records;

    records, passport := BelyiRecords_3_21_21();
    database[passport] := records;

    records, passport := BelyiRecords_3_3_3();
    database[passport] := records;

    records, passport := BelyiRecords_4_4_1111();
    database[passport] := records;

    records, passport := BelyiRecords_4_31_211();
    database[passport] := records;

    records, passport := BelyiRecords_4_22_211();
    database[passport] := records;

    records, passport := BelyiRecords_31_31_31();
    database[passport] := records;

    records, passport := BelyiRecords_31_31_22();
    database[passport] := records;

    records, passport := BelyiRecords_31_22_22();
    database[passport] := records;

    records, passport := BelyiRecords_22_22_22();
    database[passport] := records;

    records, passport := BelyiRecords_4_4_31();
    database[passport] := records;

    records, passport := BelyiRecords_4_4_22();
    database[passport] := records;

    records, passport := BelyiRecords_5_5_11111();
    database[passport] := records;

    records, passport := BelyiRecords_5_41_2111();
    database[passport] := records;

    records, passport := BelyiRecords_5_32_2111();
    database[passport] := records;

    records, passport := BelyiRecords_5_311_311();
    database[passport] := records;

    records, passport := BelyiRecords_5_311_221();
    database[passport] := records;

    records, passport := BelyiRecords_5_221_221();
    database[passport] := records;

    records, passport := BelyiRecords_41_41_311();
    database[passport] := records;

    records, passport := BelyiRecords_41_41_221();
    database[passport] := records;

    records, passport := BelyiRecords_41_32_311();
    database[passport] := records;

    records, passport := BelyiRecords_41_32_221();
    database[passport] := records;

    records, passport := BelyiRecords_32_32_311();
    database[passport] := records;

    records, passport := BelyiRecords_32_32_221();
    database[passport] := records;

    records, passport := BelyiRecords_5_5_311();
    database[passport] := records;

    records, passport := BelyiRecords_5_5_221();
    database[passport] := records;

    records, passport := BelyiRecords_5_5_5();
    database[passport] := records;

    records, passport := BelyiRecords_6_6_111111();
    database[passport] := records;

    records, passport := BelyiRecords_6_51_21111();
    database[passport] := records;

    records, passport := BelyiRecords_6_42_21111();
    database[passport] := records;

    records, passport := BelyiRecords_6_411_3111();
    database[passport] := records;

    records, passport := BelyiRecords_6_411_2211();
    database[passport] := records;

    records, passport := BelyiRecords_6_33_21111();
    database[passport] := records;

    records, passport := BelyiRecords_6_3111_222();
    database[passport] := records;

    records, passport := BelyiRecords_51_51_3111();
    database[passport] := records;

    records, passport := BelyiRecords_51_411_411();
    database[passport] := records;

    records, passport := BelyiRecords_51_222_222();
    database[passport] := records;

    records, passport := BelyiRecords_42_42_3111();
    database[passport] := records;

    records, passport := BelyiRecords_42_222_222();
    database[passport] := records;

    records, passport := BelyiRecords_33_321_222();
    database[passport] := records;

    records, passport := BelyiRecords_6_6_3111();
    database[passport] := records;

    records, passport := BelyiRecords_6_6_2211();
    database[passport] := records;

    records, passport := BelyiRecords_6_51_222();
    database[passport] := records;

    records, passport := BelyiRecords_6_42_411();
    database[passport] := records;

    records, passport := BelyiRecords_6_42_222();
    database[passport] := records;

    records, passport := BelyiRecords_6_33_222();
    database[passport] := records;

    records, passport := BelyiRecords_42_33_33();
    database[passport] := records;

    records, passport := BelyiRecords_33_33_33();
    database[passport] := records;

    records, passport := BelyiRecords_6_6_33();
    database[passport] := records;

    records, passport := BelyiRecords_7_7_1111111();
    database[passport] := records;

    records, passport := BelyiRecords_7_61_211111();
    database[passport] := records;

    records, passport := BelyiRecords_7_52_211111();
    database[passport] := records;

    records, passport := BelyiRecords_7_511_31111();
    database[passport] := records;

    records, passport := BelyiRecords_7_43_211111();
    database[passport] := records;

    records, passport := BelyiRecords_7_4111_4111();
    database[passport] := records;

    records, passport := BelyiRecords_7_322_31111();
    database[passport] := records;

    records, passport := BelyiRecords_61_61_31111();
    database[passport] := records;

    records, passport := BelyiRecords_61_511_4111();
    database[passport] := records;

    records, passport := BelyiRecords_52_52_31111();
    database[passport] := records;

    records, passport := BelyiRecords_52_4111_322();
    database[passport] := records;

    records, passport := BelyiRecords_511_511_511();
    database[passport] := records;

    records, passport := BelyiRecords_511_322_322();
    database[passport] := records;

    records, passport := BelyiRecords_43_43_31111();
    database[passport] := records;

    records, passport := BelyiRecords_322_322_322();
    database[passport] := records;

    records, passport := BelyiRecords_7_7_511();
    database[passport] := records;

    records, passport := BelyiRecords_7_7_331();
    database[passport] := records;

    records, passport := BelyiRecords_7_7_322();
    database[passport] := records;


    return database;
end function;

