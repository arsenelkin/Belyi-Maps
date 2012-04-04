// This is   belyi-61-421-3211.m
//load "format.m";

BelyiRecords_61_421_3211 := function()
records := [ ];
passport := [[6,1],[4,2,1],[3,2,1,1]];

/**************** Begin Solution *********************
    passport = [[6,1],[4,2,1],[3,2,1,1]]
    field = Number Field with defining polynomial z^12 + 201/10*z^11 + 171081/400*z^10 + 9107/500*z^9 - 80376867/2000*z^8 + 1117011549/5000*z^7 + 30154172371/80000*z^6 + 10369407237/40000*z^5 + 4060763721/40000*z^4 + 7827822863/320000*z^3 + 9298979361/2560000*z^2 + 24756711/80000*z + 117649/10000 over the Rational Field
    phi = (1/30118144*(-2560000*w^11 - 51456000*w^10 - 1094918400*w^9 - 46627840*w^8 + 102882389760*w^7 - 571909913088*w^6 - 964933515872*w^5 - 663642063168*w^4 - 259888878144*w^3 - 62622582904*w^2 - 9298979361*w - 792214752)*x^7 + 1/386939694440891767966603979954888698665984*(-263855825581172145583425490802121854720000*w^11 - 5224855735282305269138484441564138351872000*w^10 - 111293533718788374094038738084776906747580800*w^9 + 28385777634673415168837119549655911298649920*w^8 + 10595892369046324750500453866939246030123873120*w^7 - 62104029958929936347273725439874678324964026256*w^6 - 80979997593142037285308850806747139805012994664*w^5 - 44080719232448573425845499606409511814966099316*w^4 - 13187053399887984623278453348133449588369180238*w^3 - 2077863507748068634541472682227351205552553023*w^2 - 120687493389528662285654569740026118077142412*w + 11013855992490791286606585811439700444007040)*x^6 + 1/32244974536740980663883664996240724888832*(64282431089962392702292404043535238400000*w^11 + 
1276347593128393121898403736563356106240000*w^10 + 27182103978886059164280956361426607137616000*w^9 - 5467489328489201905019172440576200919886400*w^8 - 2581798220895243961750691542985409075907544800*w^7 + 14992449399038960451329707258017032264144855120*w^6 + 20534908248381159599851944115302521398147077160*w^5 + 11800268963864879622015821587891964989783074340*w^4 + 3806023961200003265946771306693851847327945142*w^3 + 697160673334681572839070557481875409347508875*w^2 + 65951180204733037773975403814357502892049801*w + 1340145378726256993122900529174009558359008)*x^5 + 1/257959796293927845311069319969925799110656*(-340597598739358569487474196689527637760000*w^11 - 6767365375761852389609863429900994590976000*w^10 - 144116181952977603063860129714585078668246400*w^9 + 26988002978370207643848776420622702366359360*w^8 + 13680024016286184828171125664256311829342340960*w^7 - 79248319340616424226440139906821988985977692048*w^6 - 109906055791493718237243343833101096052642849512*w^5 - 
63974886681616339671490310717143262660231795828*w^4 - 20977808608037360231885657595247862452729907534*w^3 - 3955116652981854274079979489136718993799208159*w^2 - 399445370235044031064617835515707979921284536*w - 12476607957525013127032664138321667637507072)*x^4)/(x + 1/110554198411683362276172565701396771047424*(-10357823418334215649879252198373489920000*w^11 - 205945211882824738645762457085635406592000*w^10 - 4385545184241721140353729352088619977628800*w^9 + 759675394024428728395774484433846933469120*w^8 + 416034413912175567153221319365013528178911520*w^7 - 2404191078153828348340464523598565486628045616*w^6 - 3376304109947589345161519970956798305566365944*w^5 - 1990255272121020041598864478536613633927159036*w^4 - 662963961928817440164955149636587195501350234*w^3 - 128327848413634902847497428725615381767705173*w^2 - 13688299368719750836776536245556406461784800*w - 624041995656610226852669958798404355761408))
 *********************** Record **********************/
record := rec< G0BelyiRecord |
        passport := [[6,1],[4,2,1],[3,2,1,1]],
        p        := 0,
        defpoly  := [117649/10000,24756711/80000,9298979361/2560000,7827822863/320000,4060763721/40000,10369407237/40000,30154172371/80000,1117011549/5000,-80376867/2000,9107/500,171081/400,201/10,1],
        coeffs_p := [[0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0],[-724947192153300448138741957076203579/14988627569958285918759512868633942,-20795781457467931646429499974786962719767/13429810302682624183208523530296012032,-1647278905864995532728021444871603079466559/107438482421460993465668188242368096256,-214059271510585308488629159135182269925815383/2632242819325794339908870611938018358272,-2284817381486297845410368239897973666436849851/9212849867640280189681047141783064253952,-13738256973936714779655417979137637006580356189/32244974536740980663883664996240724888832,-4953019958788526514152508744176374311623605753/16122487268370490331941832498120362444416,427500750508943275880347677008009744666948155/8061243634185245165970916249060181222208,60241078076719213490733875938889960639195/575803116727517511855065446361441515872,-1125907671507637523936407263395195927095675/2015310908546311291492729062265045305552,-3304377624883716987114191127881345015125/125956931784144455718295566391565331597,-166307421259452426507555760102308416875/125956931784144455718295566391565331597],[2491791699006100495929710331212459017/59954510279833143675038051474535768,27468213329751369335266723787737402287401/13429810302682624183208523530296012032,290362629460508776692657458343138446208875/13429810302682624183208523530296012032,38836979195918400672926237823406651503346379/329030352415724292488608826492252294784,421438177280888557929136485281855892492252655/1151606233455035023710130892722883031744,2566863531047644949981493014412815174768384645/4030621817092622582985458124530090611104,937028087439935028208106703626064516509053445/2015310908546311291492729062265045305552,-80681194402976373804709110718294033622110775/1007655454273155645746364531132522652776,-12204217251091968537989224197714734196175/71975389590939688981883180795180189484,212360187335047337220944971573645368262625/251913863568288911436591132783130663194,4985732785657785632415639595950609790000/125956931784144455718295566391565331597,251103246445165596493329703295059525000/125956931784144455718295566391565331597],[5119637647488207706706369468190198115/179863530839499431025114154423607304,-12566377903949256797756619089965235118403/40289430908047872549625570590888036096,-865415871615188935669084832247959685777823/161157723632191490198502282363552144384,-134561769386612087992637279062586220289481431/3948364228988691509863305917907027537408,-1574311401158877622351624985943196850534503547/13819274801460420284521570712674596380928,-10122499699142754660663606350843392475626624333/48367461805111470995825497494361087333248,-3881501872433121021704607839992167395310251641/24183730902555735497912748747180543666624,331121636532697648453139183341851438441371035/12091865451277867748956374373590271833312,63361110791681730287582856137624802005915/863704675091276267782598169542162273808,-869480732178034172609677641287319583965475/3022966362819466937239093593397567958328,-5102398178986626239393051212464978859250/377870795352433367154886699174695994791,-257671704669113423421313955861447123750/377870795352433367154886699174695994791],[-1473/56,-3872961/12544,-22821641/10976,-82872729/9604,-1481343891/67228,-30154172371/941192,-2234023098/117649,401884335/117649,-26020/16807,-4277025/117649,-201000/117649,-10000/117649]],
        coeffs_r := [[-1015270323004428862408680560831431493/179863530839499431025114154423607304,-1247111822951872343000777719165124495425/10072357727011968137406392647722009024,-2618935681910916384642804667869701668728677/2256208130850680862779031953089730021376,-6764938387028749389438317853434563219401533/1128104065425340431389515976544865010688,-497563818030255010399716119634153408481789759/27638549602920840569043141425349192761856,-422038013743448668145189996369599788195795743/13819274801460420284521570712674596380928,-150261942384614271771279032724910342914252851/6909637400730210142260785356337298190464,265328070097050744357921759799115770522265/70506504089083776961844748534054063168,11869928031631698881183976319278858335455/1727409350182552535565196339084324547616,-34262071751888446409013510563192343575225/863704675091276267782598169542162273808,-100559185489660516916876199748845413375/53981542193204766736412385596385142113,-722504423711929105041800516069579375/7711648884743538105201769370912163159],[1,0,0,0,0,0,0,0,0,0,0,0]]>;
Append(~records, record);
/**************** Record *****************************/

return records, passport;
end function;

