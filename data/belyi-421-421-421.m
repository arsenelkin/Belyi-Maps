// This is   belyi-421-421-421.m
//load "format.m";

BelyiRecords_421_421_421 := function()
records := [ ];
passport := [[4,2,1],[4,2,1],[4,2,1]];

/**************** Begin Solution *********************
    passport = [[4,2,1],[4,2,1],[4,2,1]]
    field = Number Field with defining polynomial z^4 + 2*z^3 + z^2 + 2*z + 1 over the Rational Field
    phi = (1/49*(-4*w^3 + 2*w^2 + 12*w - 3)*x^7 + 1/7*(2*w^3 - w^2 - 6*w - 2)*x^6 + 1/7*(-2*w^3 + w^2 + 6*w + 9)*x^5 - x^4)/(x^3 + 1/7*(-2*w^3 + w^2 + 6*w - 12)*x^2 + 1/7*(2*w^3 - w^2 - 6*w + 5)*x + 1/49*(-4*w^3 + 2*w^2 + 12*w - 3))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2,1],[4,2,1],[4,2,1]],
        p        := 0,
        defpoly  := [1,2,1,2,1],
        coeffs_p := [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0],[-1,0,0,0],[9/7,6/7,1/7,-2/7],[-2/7,-6/7,-1/7,2/7],[-3/49,12/49,2/49,-4/49]],
        coeffs_r := [[-3/49,12/49,2/49,-4/49],[5/7,-6/7,-1/7,2/7],[-12/7,6/7,1/7,-2/7],[1,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

/**************** Begin Solution *********************
    passport = [[4,2,1],[4,2,1],[4,2,1]]
    field = Number Field with defining polynomial z^12 - 11679722/3*z^10 + 115571664263261/27*z^8 - 736943751013796*z^6 + 1498046324499369855*z^4 - 111035800619304750*z^2 + 2482125145565625 over the Rational Field
    phi = (1/67017378930271875*(27*w^11 - 105117498*w^9 + 115571664263261*w^7 - 19897481277372492*w^5 + 40447250761482986085*w^3 - 2997966616721228250*w)*x^7 + 1/8961347279254036921590482236018057165986683820441600000*(-12636234532099612998500864960934976684032*w^11 + 79980876152566297950904199607793617675*w^10 + 49195902153907852043358839834420462581991866368*w^9 - 311384801918116765398485437528397199607626075*w^8 - 54088542773912645449920395798995794876129013557886976*w^7 + 342352711504305119943979979833079497887741915453150*w^6 + 9312194074775548200368431061983208117629142822364905472*w^5 - 58951360097935183255968871280318263652669502718280550*w^4 - 18929664696323839860267414854166537577456527069501440655360*w^3 + 119816618338355088427513247596387707825556297278150678375*w^2 + 1403074418084986276822260144762712433508435847160266752000*w - 10425690644667775232579886490877931724590189908101599375)*x^6 + 1/8961347279254036921590482236018057165986683820441600000*(15195500556487839877897445759868105928143*w^11 
- 239942628457698893852712598823380853025*w^10 - 59159740712460416413565855089165061271962850207*w^9 + 934154405754350296195456312585191598822878225*w^8 + 65043306968985915641863727359322246800735545751871174*w^7 - 1027058134512915359831939939499238493663225746359450*w^6 - 11198210284870015492252982238111560407201465301542668078*w^5 + 176854080293805549767906613840954790958008508154841650*w^4 + 22763560604420107086530593332765160499241735346872652027515*w^3 - 359449855015065265282539742789163123476668891834452035125*w^2 - 1680706240476684797075866169505011815479689823038253943875*w + 31277071934003325697739659472633795173770569724304798125)*x^5 + 1/1194846303900538256212064298135740955464891176058880000*(-853088674796075626465526932977709748037*w^11 + 26660292050855432650301399869264539225*w^10 + 3321279519517521456735671751581532896656994613*w^9 - 103794933972705588466161812509465733202542025*w^8 - 3651588065024423397314443853442150641535510731328066*w^7 + 
114117570501435039981326659944359832629247305151050*w^6 + 628672070031489097294850392042784096524107493059254202*w^5 - 19650453365978394418656290426772754550889834239426850*w^4 - 1277965302698755742087726159532874307261736092457070457385*w^3 + 39938872779451696142504415865462569275185432426050226125*w^2 + 92543940797232840084535341580766460657084658625995730625*w - 3176518638914123846806946089092042002663840508685813125)*x^4)/(x^3 + 1/8961347279254036921590482236018057165986683820441600000*(-160095589841521398482039033730669536523*w^11 + 623290638854969807676236439302530867863052827*w^9 - 685278201453705509796262002636464746903647412034014*w^7 + 117886975696788259054324818658553330232469573523907558*w^5 - 239814844157496271048477538826577031469514317354616205415*w^3 - 14915306126493675554230021051215523652165967770330792625*w - 13442020918881055382385723354027085748980025730662400000)*x^2 + 1/8961347279254036921590482236018057165986683820441600000*(160095589841521398482039033730669536523*w^11 + 
79980876152566297950904199607793617675*w^10 - 623290638854969807676236439302530867863052827*w^9 - 311384801918116765398485437528397199607626075*w^8 + 685278201453705509796262002636464746903647412034014*w^7 + 342352711504305119943979979833079497887741915453150*w^6 - 117886975696788259054324818658553330232469573523907558*w^5 - 58951360097935183255968871280318263652669502718280550*w^4 + 239814844157496271048477538826577031469514317354616205415*w^3 + 119816618338355088427513247596387707825556297278150678375*w^2 + 14915306126493675554230021051215523652165967770330792625*w - 1464343365413738310989404254859874558603506087659999375)*x + 1/125458861909556516902266751304252800323813573486182400000*(-3199648383754312473324736933855807390203*w^11 - 559866133067964085656329397254555323725*w^10 + 12457001113972443600911961011954722161423195147*w^9 + 2179693613426817357789398062698780397253382525*w^8 - 13695877000888092231128379570872310912221121842120254*w^7 - 2396468980530135839607859858831556485214193408172050*w^6 + 
2357564112881620328101850450762565610502200773273392838*w^5 + 412659520685546282791782098962227845568686519027963850*w^4 - 4793155284726252310457088633904931047663265546789676193815*w^3 - 838716328368485618992592733174713954778894080947054748625*w^2 + 217970597885723818036685940537437287362590104796664021375*w + 41615119035285297402492517610082321991177935985165595625))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[4,2,1],[4,2,1],[4,2,1]],
        p        := 0,
        defpoly  := [2482125145565625,0,-111035800619304750,0,1498046324499369855,0,-736943751013796,0,115571664263261/27,0,-11679722/3,0,1],
        coeffs_p := [[0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0],[-313540623817585123058281659121466144774929/117938188966263054652674739635393115717632,63942327304003417548735713629785915570768907/825567322763841382568723177447751810023424,182543385978072447602728016803526967902310628121/5461127840082810745692103818816878223304949760,-1022180072305411176369023551198674095079513925347691/955697372014491880496118168292953689078366208000,-2079413054600888298270506923468016354591516850733/126438762317517275789636433665157773065067849318400,34926226112860505405269466224599116473561527392180789/66380350216696569789559127674207830859160620892160000,326050201432671542803790456983885236083563729003/3413846582572966446320183708959259872756831931596800,-202866003612467966517469102969008368974195040629337/66380350216696569789559127674207830859160620892160000,-65901545379495611724547182545692529017487/758632573905103654737818601990946638390407095910400,41003450858241005638711996933105344403172773/14751188937043682175457583927601740190924582420480000,5642389852032895799005587273918421/252877524635034551579272867330315546130135698636800,-3510652982699899697388999724188105959/4917062979014560725152527975867246730308194140160000],[343025171059150886721450344030314423704337/98281824138552545543895616362827596431360,-5806337379013725174167603906960511194476377253/30958774603644051846327119154290692875878400,-182543385978072447602728016803526967902310628121/4550939866735675621410086515680731852754124800,289006753770546465347442850049145179744198380823423/113773496668391890535252162892018296318853120000,2079413054600888298270506923468016354591516850733/105365635264597729824697028054298144220889874432000,-23041584948292212947022597197760412360496842184244173/18438986171304602719321979909502175238655728025600000,-326050201432671542803790456983885236083563729003/2844872152144138705266819757466049893964026609664000,32521653484492957820931863679661123400367772875935587/4480673639627018460795241118009028582993341910220800000,65901545379495611724547182545692529017487/632193811587586378948182168325788865325339246592000,-6573304523606712934840650565462784585773650023/995705253250448546843386915113117462887409313382400000,-5642389852032895799005587273918421/210731270529195459649394056108596288441779748864000,562796316906957032514720213328448367709/331901751083482848947795638371039154295803104460800000],[-343025171059150886721450344030314423704337/294845472415657636631686849088482789294080,5178539/33075,182543385978072447602728016803526967902310628121/13652819600207026864230259547042195558262374400,-10783906162037/5105126250,-2079413054600888298270506923468016354591516850733/316096905793793189474091084162894432662669623296000,368471875506898/354589306509375,326050201432671542803790456983885236083563729003/8534616456432416115800459272398149681892079828992000,-115571664263261/19147822551506250,-65901545379495611724547182545692529017487/1896581434762759136844546504977366595976017739776000,5839861/1063767919528125,5642389852032895799005587273918421/632193811587586378948182168325788865325339246592000,-1/709178613018750],[0,-10357078/231525,0,10783906162037/17867941875,0,-736943751013796/2482125145565625,0,115571664263261/67017378930271875,0,-11679722/7446375436696875,0,1/2482125145565625]],
        coeffs_r := [[195602434851322068405606919486073029057297/589690944831315273263373698176965578588160,753023222946380884105476983327673561132831113/433422844451016725848579668160069700262297600,-182543385978072447602728016803526967902310628121/27305639200414053728460519094084391116524748800,-1277934490909376320040389375838657278475184144524743/33449408020507215817364135890253379117742817280000,2079413054600888298270506923468016354591516850733/632193811587586378948182168325788865325339246592000,43658594682992969038923156495603066861151866171729497/2323312257584379942634569468597274080070621731225600000,-326050201432671542803790456983885236083563729003/17069232912864832231600918544796299363784159657984000,-6847938500444046115564189785436155456110560921060127/62729430954778258451133375652126400161906786743091200000,65901545379495611724547182545692529017487/3793162869525518273689093009954733191952035479552000,1384111234885827066767995667994969129047021683/13939873545506279655807416811583644480423730387353600000,-5642389852032895799005587273918421/1264387623175172757896364336651577730650678493184000,-118505495694604165678693960513178051489/4646624515168759885269138937194548160141243462451200000],[-48179698643493250089763494941831634410257/294845472415657636631686849088482789294080,51527921653417594781389680279778793107175623/30958774603644051846327119154290692875878400,182543385978072447602728016803526967902310628121/13652819600207026864230259547042195558262374400,2368096468555232811771905783703547994404353881269/88490497408749248194085015582680897136885760000,-2079413054600888298270506923468016354591516850733/316096905793793189474091084162894432662669623296000,-727697380844371969471140855916995865632528231629059/55316958513913808157965939728506525715967184076800000,326050201432671542803790456983885236083563729003/8534616456432416115800459272398149681892079828992000,342639100726852754898131001318232373451823706017007/4480673639627018460795241118009028582993341910220800000,-65901545379495611724547182545692529017487/1896581434762759136844546504977366595976017739776000,-69254515428329978630692937700281207540339203/995705253250448546843386915113117462887409313382400000,5642389852032895799005587273918421/632193811587586378948182168325788865325339246592000,5929466290426718462297741990024797649/331901751083482848947795638371039154295803104460800000],[-3/2,-51527921653417594781389680279778793107175623/30958774603644051846327119154290692875878400,0,-2368096468555232811771905783703547994404353881269/88490497408749248194085015582680897136885760000,0,727697380844371969471140855916995865632528231629059/55316958513913808157965939728506525715967184076800000,0,-342639100726852754898131001318232373451823706017007/4480673639627018460795241118009028582993341910220800000,0,69254515428329978630692937700281207540339203/995705253250448546843386915113117462887409313382400000,0,-5929466290426718462297741990024797649/331901751083482848947795638371039154295803104460800000],[1,0,0,0,0,0,0,0,0,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

