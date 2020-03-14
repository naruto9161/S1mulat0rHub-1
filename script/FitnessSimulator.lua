--[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
local h=string.byte;local k=string.char;local e=string.sub;local n=table.concat;local a=table.insert;local m=math.ldexp;local p=getfenv or function()return _ENV end;local a=setmetatable;local l=select;local f=unpack or table.unpack;local i=tonumber;local function o(h)local b,c,f="","",{}local g=256;local d={}for a=0,g-1 do d[a]=k(a)end;local a=1;local function j()local b=i(e(h,a,a),36)a=a+1;local c=i(e(h,a,a+b-1),36)a=a+b;return c end;b=k(j())f[1]=b;while a<#h do local a=j()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[g]=b..e(c,1,1)f[#f+1],b,g=c,c,g+1 end;return table.concat(f)end;local j=o('21121I27521G21O27521I22I22H22F22A21X21U21W22N22G22921G21E27922922F22J22B21G21D27923I21U21U21Y23522B21U21G1N27922M27W21Y21X1C1P1P21Y22F27F22B22C27I1O22D22H22J1P21W22F21T1P1F22K22T1E22R23H2341221G21N27923921W22B22F21U22B22T22B22D21U22N22H22G21G21R27923B21V21U22H1M23422F21W22J21G21C27922Q22H22922922I27R29G27529I29K1M23E22N2282812A021I2A229L29822I22I21G21K29T22B29Y21Y22H21W21U1M23922H27I21X21G21Q29H29J29L23821V22721G21L2AW2A32AZ2271M22P22B22N2292852B22B42AY2B01M23822H22A22N22B2AT2902A12AX2BI2BH22Q2BM21W27L27923F22N21X22D2AU27923H22N2AE1M22F2AE29R2792AZ27W29D28Z29122H2AE2992AO23922M2BN28121F27922S29422A2271527921023727921J2CX2752D121G2791M2D321I2D121H21I2102752DB27M2792D82DB2DH2DK2D52DK2D421I2D72D92792CQ2DD21I2DB29S2DN2DV21I2D51M1U2E02DR27T2101B21I27M2AV27623421I2CQ2DK1S2E42CQ2D12E22E42D12E62E827M2A921G2ED2EJ2DH2EH2D52EU2EL2D52EN2DC2EP21I2782EC2EE2E4279182EI2DR2DQ2DM2F72DU27M21P2DK2E427M2E12DE2E42E62752CQ21M2792ES21I29S2DJ2752EH2DW2FC2E32DB2D52EO2F72BP2E02ED29S2DG2FY2DZ29S2EK2G22FO2F22F72AH2F629S2EF2752FA2G02EK2FN2FQ2DC2GT2B32DK2DB2CQ2FM2E92DZ2FP2FV21I2122FT2ED27T2DX2GC27M27T2GF2H12DB2132GI29S2DU2G821I27T27T2792EH2HC2G12H127527421I2192H12F02751V2D02DH2EB21I2I421G2FE22X23529F2BF22T21T27I27K2GB27O27Q27727927Z21U29821W21S22N22D27R2F521I22S21V22G2IO2IQ2IS2CG2752CS22G22A22B21W22T29621Y21Y22B22A27S27928J22G22G2CK2752HK2101Z2DR2D12752H62DR2FE2DU2D12JQ2DP2D82DO2DX2D12B32JX21E23A2792K32DC23B2DR2FX2DQ2JW2H12DU2GY2FJ2DA2E42KD2DR29S2KL2F12FU2FX2HP2KB2DR2K52792HH2D12102KA2KE275162182JT2I52I02I22D32JX2I62I82IA2A92AB2ID2IF2BX2752II2IT2IL2802IZ2IR27R2HH2J322B21Y22I2IR2952JD2J92AM22F22927R2HA23721S22B22G21U2AT2GB2A52A72IK27523422N2932IZ2J72G72KZ2L82DP2162DL2FV2392792FS2K42K62752MU2K92792KC1Y2DK27M2DU2EX2FJ2762KK2FJ2KN2FJ27T2KL2752I42L52JQ2I12D82N72LB2792I92C32BQ29K2AD2AF2IH27P2LL2752IM2LO2J12IU2IW2IY2J72J027R2G72J42J62J82JA2JC2JE2HO21I2JH2JJ29A2HU2CX2FI2L12H52D82JU2JZ2D62OQ2D52K12HM2JP2E92MW2OV2D12KV2JR2DR2MM2KJ2752KO2KF2FN2GN2I22G32JY2OW2NB2OW27T2KQ2FJ2EH2KJ2P02OY2DD2KY2L02DR2L22L42DO2EB2NJ2PR2D92LA2FT2LC2NP2AA2AX2NS2LI21I2LK2ME21I2NY2O42LP21G2LR2IV2LT2LV22D2LX22A2LZ28N2M22CB2752M52M72M92Q62Q52IU2MG2MI2O42MK2CX2KA2NK2MO2MQ21C2MS2MX2PX2P121I2MY2MM2GS2DP2N22DH2N42N82PA2DH2D52H02DH2PF2DH2ND2R32NG2DO2NI2MN2DK2NM2752NO2G722Q2AJ2LT2AM21U2AQ2AS2Q62Q82IU2QB2IP2QD2O12IX2NZ2O62CR2M72O92J92LT2OC2JF2752OG2JK2GU2JL2JO2OM2JS2DO2JL2OQ2P62OS2H42DR2K82752RA2K82P42DZ2T12OW2RI2DZ2RK2KT2H02KE2PF2KE2PH2ED2KR2GC2PL2OX2KW2P32PQ2JX2L32L52PV2MN21J2JX2JS2E02Q12S12S32AL2AN2S722G2AT2GN28C2MH2MA27N2NV2IB27522P2AM22L21X28C2J12I422U22H21T2J721V28721G2FI2NX2802CM2C622A29329E2GB23C2UG2GB2U82Q623F22F27I2QP21I23923428N2IJ2SB2LN2QC2J12OE22U22I22F2272J72AT2UX21I23E22H2QJ22I2VP2VR2J72UH2VF22M29O22F29A2W32U123I21V22J22F22G2AR22A22S22H22H21U22U29O21U2172R12MN1M2MP2RL2FV2CW2GT2KE2RA2EU2RA2MP2PP2N02CX172KU2OR2OW2CQ2P72TJ2E52DH2SY2N72FK2DH2PT2R42CQ2EA21I1G2152F72XK29G2RA2XK2WT2F727M2782102AH2GA2X929S29S2FS2DU2AV2G727929S2AV2H02Y421I2AH2DQ2YE2B32YH2H42H62YK29S2FI2JS2CQ2FI2Y42U12902DO2RA2YV2L72R32RX2Q02NN2IA2G72AB2B62B92BB2BD2NU2VJ2LM2IN2VM2NW2IV2SG2ZF2J22QG2J52J72SM2JB2JD2SP2OF29D2OH21U2OJ2JL2OL2PX2SX2F82ST2OM2P72OT2D82HD2KU2OY31072RA2H62X42P52PD2WZ2ST2KH2DY2PC2XC310F2XE2PI2EG2KT2PM2D2310D2PX2TV2PU2YZ2PX2TZ2792ER2U32BF2Z72BA2BC2812OE2Z831162UE2LJ2UG2VK2ZE2SD2J12QF2CS2LU2LW2962QL29K2QN2M32792QR2M82AT2OE2B61M23B2CA2QW2MH2972QZ21W2U12RD2PX2XW2WV21C2WX2F72WZ2OY2X12OY2T82E82RE2102K82GB2P72DT2FN2HA2PB2N92PG310M2D12AV2FD2DR2A92HT2FJ2D527M2RV2Z02I32Z22RZ2Z431132B02BJ2BL2BN2S9311D2ZD2SH2Q92O2313I2O72SK2ZN2OB2ZQ2OE2SR2OI21I2HV2DC2ZY2U02OO2D22OW2TB2KE31052XE312D279310A2OY310C2MZ310E2P72TD310I2XF2DZ2TH2KM312U2OV310O2EV310Q2TQ2SZ310T2TU2XK2D52TX2R3310Z27531112Z32ZK2Z6313B2BK2BM2AT2HA313C3155313F2ZC2UY311F2O52QE2SJ311K2QJ311M2QM2M1311Q2QQ2M6311T2ZR311W311Y2AF31202QY2IP2J72GW2MZ2R331282FT2MR2792AH2MV31642P3312I2TA2DC312L2X92KE312O2GD2KI314H314K2RR2OW312W2N82D1312Z2GB2MQ3133310X2JX2Z12762Q12VV31522272BU2W32ZB2ZG2SC315E2SF2O3311G2SI2LS2ZM2OA2SN313Q2JG2ZT2SS2JM2SV2ZZ313Z2SZ3141314K31442K22R9312G2TS2KT31422X82KG2F7310J312S2TI316J2HL2TN21I2PK2DZ310R2752KX314B310U314T2L621I2PW2JX314X21I314Z31382UW313A31702BV21G2GN317121W311B2Q7313G315C313I311I2QH311L2LY311O315L2VE311S2QT311V2BH315S2Q92QX3122315W21W315Y31262JX31612N82R63167316627531652GI312J316C317W2D1316F2G03180314I2F12P7316M2EM318K2RH2XH31322PR318H2XH2RY21I2NO2OE2C52AE319B31732Q931752SE2CR2ZI31792ZK2O8313O317E2OD317G2JI317I2CX317K313Y2L5317N31032T22OU2T5314P21I2T82PQ2KC2OQ314E317Z314G310K2OQ2XD2KP2TM2PJ314O2RA318B2T9314S2TW316T2D02JX2FS316W315031AE2C622I319B2UB2VC318U315A31742VL31AO2VO2VQ2VS31C32VV2IM2V022I2V22M72W42CM2W72W92BW3190315H2QK315K2QO2M4315O2QT2HA23627P3195315U319E2M621W2XQ2JL2R231272WU3162312A2DS2TC312E3108279214317U312J1X2X8319U2FF312P316H31BF312T2I22FE2N731A72792X32XL2H12AV31D9312O3146314Q31B631DV2XW2XM2L6312K2H4312M2752YE316F2AV312Z31EB2L62YD2H42782YN21I2FI2DQ2H92RB2DH29G2TF27T29G2D121C2U1319Q31322OY319Q318G2RW2DH2G731C42ZR2W131CA2VU2792VX2VZ31F92W32A931CJ28N31CL21G2WB2WD2WF2WH2WJ2WL2WN2AN2VE2VG2VI29Z2792UJ21W2UL2UN27R2FX2VB21Y2VE2CS21T29O31AT27522O2CK2AM1521G2FX2JJ21T316U314G2DK1I23A313V21016317O3104314K2DB314D314K316F2HZ2TB2RM2OV312X314U2PD31H229G31H42H4317Y2IU2DQ2DB2DB2FI2FG31EQ317N2CQ2ML31EG31BU2DH2G031DR31H22DB310029S31DR314W2DH');local a=bit32 or require('bit');local d=a and a.bxor or function(a,c)local b,d=1,0 while a>0 and c>0 do local f,e=a%2,c%2 if f~=e then d=d+b end a,c,b=(a-f)/2,(c-e)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,e,c,b=h(j,a,a+3);f=d(f,54)e=d(e,54)c=d(c,54)b=d(b,54)a=a+4;return(b*16777216)+(c*65536)+(e*256)+f;end;local function i()local b=d(h(j,a,a),54);a=a+1;return b;end;local function g()local b,c=h(j,a,a+2);b=d(b,54)c=d(c,54)a=a+2;return(c*256)+b;end;local function q()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return m(b,a-1023)*(e+(d/(2^52)));end;local o=b;local function m(b)local c;if(not b)then b=o();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),54))end return n(b);end;local a=b;local function r(...)return{...},l('#',...)end local function o()local k={};local h={};local a={};local j={k,h,nil,a};local a=b()local e={}for c=1,a do local b=i();local a;if(b==0)then a=(i()~=0);elseif(b==1)then a=q();elseif(b==2)then a=m();end;e[c]=a;end;for h=1,b()do local a=i();if(c(a,1,1)==0)then local d=c(a,2,3);local f=c(a,4,6);local a={g(),g(),nil,nil};if(d==0)then a[3]=g();a[4]=g();elseif(d==1)then a[3]=b();elseif(d==2)then a[3]=b()-(2^16)elseif(d==3)then a[3]=b()-(2^16)a[4]=g();end;if(c(f,1,1)==1)then a[2]=e[a[2]]end if(c(f,2,2)==1)then a[3]=e[a[3]]end if(c(f,3,3)==1)then a[4]=e[a[4]]end k[h]=a;end end;j[3]=i();for a=1,b()do h[a-1]=o();end;return j;end;local function m(a,b,g)local b=a[1];local c=a[2];local a=a[3];return function(...)local d=b;local n=c;local e=a;local j=r local b=1;local h=-1;local o={};local k={...};local i=l('#',...)-1;local a={};local c={};for a=0,i do if(a>=e)then o[a-e]=k[a+1];else c[a]=k[a+1];end;end;local a=i-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=35 then if e<=17 then if e<=8 then if e<=3 then if e<=1 then if e==0 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];else c[a[2]]=a[3];end;elseif e>2 then c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else local b=a[2]local e={c[b](f(c,b+1,h))};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end end;elseif e<=5 then if e==4 then if not c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]][a[3]]=c[a[4]];end;elseif e<=6 then local a=a[2]local d,b=j(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;elseif e==7 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=12 then if e<=10 then if e==9 then local a=a[2]c[a]=c[a]()else c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;end;elseif e==11 then c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;else local b=a[2]local d,a=j(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=14 then if e==13 then c[a[2]]=c[a[3]][a[4]];else local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];end;elseif e<=15 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))elseif e>16 then c[a[2]]=c[a[3]]+c[a[4]];else local e=a[2];local f=a[4];local d=e+2 local e={c[e](c[e+1],c[d])};for a=1,f do c[d+a]=e[a];end;local e=e[1]if e then c[d]=e b=a[3];else b=b+1;end;end;elseif e<=26 then if e<=21 then if e<=19 then if e>18 then c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=c[a[3]];end;elseif e>20 then c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])end;elseif e<=23 then if e>22 then local e;local i;local l,m;local k;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];e=a[2]l,m=j(c[e](c[e+1]))h=m+e-1 i=0;for a=e,h do i=i+1;c[a]=l[i];end;b=b+1;a=d[b];e=a[2]l={c[e](f(c,e+1,h))};i=0;for a=e,a[4]do i=i+1;c[a]=l[i];end b=b+1;a=d[b];b=a[3];else local b=a[2]local d,a=j(c[b](f(c,b+1,a[3])))h=a+b-1 local a=0;for b=b,h do a=a+1;c[b]=d[a];end;end;elseif e<=24 then local a=a[2]c[a]=c[a](f(c,a+1,h))elseif e==25 then c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]][a[3]]=a[4];end;elseif e<=30 then if e<=28 then if e==27 then local a=a[2]c[a](c[a+1])else c[a[2]]=c[a[3]][a[4]];end;elseif e==29 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))else local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];end;elseif e<=32 then if e>31 then b=a[3];else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=33 then local a=a[2]c[a]=c[a]()elseif e==34 then c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];if not c[a[2]]then b=b+1;else b=a[3];end;else c[a[2]]=m(n[a[3]],nil,g);end;elseif e<=53 then if e<=44 then if e<=39 then if e<=37 then if e>36 then if c[a[2]]then b=b+1;else b=a[3];end;else local d=a[2];local f=a[4];local e=d+2 local d={c[d](c[d+1],c[e])};for a=1,f do c[e+a]=d[a];end;local d=d[1]if d then c[e]=d b=a[3];else b=b+1;end;end;elseif e==38 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];end;elseif e<=41 then if e>40 then do return end;else local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];end;elseif e<=42 then local b=a[2]c[b](f(c,b+1,a[3]))elseif e>43 then c[a[2]]=g[a[3]];else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];end;elseif e<=48 then if e<=46 then if e>45 then local b=a[2]local e={c[b](f(c,b+1,h))};local d=0;for a=b,a[4]do d=d+1;c[a]=e[d];end else c[a[2]][a[3]]=c[a[4]];end;elseif e==47 then c[a[2]][a[3]]=a[4];else local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]]+c[a[4]];b=b+1;a=d[b];c[a[2]][a[3]]=c[a[4]];b=b+1;a=d[b];do return end;end;elseif e<=50 then if e==49 then local e;local i;local k,m;local l;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];l=c[a[3]];c[e+1]=l;c[e]=l[a[4]];b=b+1;a=d[b];e=a[2]k,m=j(c[e](c[e+1]))h=m+e-1 i=0;for a=e,h do i=i+1;c[a]=k[i];end;b=b+1;a=d[b];e=a[2]k={c[e](f(c,e+1,h))};i=0;for a=e,a[4]do i=i+1;c[a]=k[i];end b=b+1;a=d[b];b=a[3];else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];end;elseif e<=51 then if not c[a[2]]then b=b+1;else b=a[3];end;elseif e>52 then local b=a[2]c[b]=c[b](f(c,b+1,a[3]))else do return end;end;elseif e<=62 then if e<=57 then if e<=55 then if e>54 then local b=a[2]c[b](f(c,b+1,a[3]))else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];end;elseif e>56 then local g;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];else c[a[2]]=c[a[3]]+c[a[4]];end;elseif e<=59 then if e==58 then c[a[2]]=c[a[3]];else local a=a[2]c[a]=c[a](f(c,a+1,h))end;elseif e<=60 then local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];elseif e>61 then local g;local e;e=a[2]c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];else c[a[2]]=a[3];end;elseif e<=67 then if e<=64 then if e==63 then local a=a[2]c[a](c[a+1])else b=a[3];end;elseif e<=65 then c[a[2]]=g[a[3]];elseif e==66 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else if c[a[2]]then b=b+1;else b=a[3];end;end;elseif e<=69 then if e>68 then local k;local m,l;local i;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]m,l=j(c[e](f(c,e+1,a[3])))h=l+e-1 k=0;for a=e,h do k=k+1;c[a]=m[k];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,h))b=b+1;a=d[b];e=a[2]c[e]=c[e]()b=b+1;a=d[b];e=a[2];i=c[a[3]];c[e+1]=i;c[e]=i[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))else local a=a[2]local d,b=j(c[a](c[a+1]))h=b+a-1 local b=0;for a=a,h do b=b+1;c[a]=d[b];end;end;elseif e<=70 then c[a[2]]=m(n[a[3]],nil,g);elseif e==71 then local h;local e;c[a[2]]=g[a[3]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];h=c[a[3]];c[e+1]=h;c[e]=h[a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]];b=b+1;a=d[b];e=a[2]c[e](f(c,e+1,a[3]))else local g;local e;e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]c[e]=c[e](f(c,e+1,a[3]))b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];c[a[2]]=c[a[3]][a[4]];b=b+1;a=d[b];e=a[2];g=c[a[3]];c[e+1]=g;c[e]=g[a[4]];b=b+1;a=d[b];e=a[2]c[e](c[e+1])end;b=b+1;end;end;end;return m(o(),{},p())();
