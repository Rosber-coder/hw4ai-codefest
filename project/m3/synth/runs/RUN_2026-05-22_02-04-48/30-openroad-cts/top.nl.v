module top (clk,
    ready,
    rst,
    valid,
    write,
    addr,
    rdata,
    wdata);
 input clk;
 output ready;
 input rst;
 input valid;
 input write;
 input [7:0] addr;
 output [31:0] rdata;
 input [31:0] wdata;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire _0635_;
 wire _0636_;
 wire _0637_;
 wire _0638_;
 wire _0639_;
 wire _0640_;
 wire _0641_;
 wire _0642_;
 wire _0643_;
 wire _0644_;
 wire _0645_;
 wire _0646_;
 wire _0647_;
 wire _0648_;
 wire _0649_;
 wire _0650_;
 wire _0651_;
 wire _0652_;
 wire _0653_;
 wire _0654_;
 wire _0655_;
 wire _0656_;
 wire _0657_;
 wire _0658_;
 wire _0659_;
 wire _0660_;
 wire _0661_;
 wire _0662_;
 wire _0663_;
 wire _0664_;
 wire _0665_;
 wire _0666_;
 wire _0667_;
 wire _0668_;
 wire _0669_;
 wire _0670_;
 wire _0671_;
 wire _0672_;
 wire _0673_;
 wire _0674_;
 wire _0675_;
 wire _0676_;
 wire _0677_;
 wire _0678_;
 wire _0679_;
 wire _0680_;
 wire _0681_;
 wire _0682_;
 wire _0683_;
 wire _0684_;
 wire _0685_;
 wire _0686_;
 wire _0687_;
 wire _0688_;
 wire _0689_;
 wire _0690_;
 wire _0691_;
 wire \core_a[0] ;
 wire \core_a[1] ;
 wire \core_a[2] ;
 wire \core_a[3] ;
 wire \core_a[4] ;
 wire \core_a[5] ;
 wire \core_a[6] ;
 wire \core_a[7] ;
 wire \core_b[0] ;
 wire \core_b[1] ;
 wire \core_b[2] ;
 wire \core_b[3] ;
 wire \core_b[4] ;
 wire \core_b[5] ;
 wire \core_b[6] ;
 wire \core_b[7] ;
 wire \core_out[0] ;
 wire \core_out[10] ;
 wire \core_out[11] ;
 wire \core_out[12] ;
 wire \core_out[13] ;
 wire \core_out[14] ;
 wire \core_out[15] ;
 wire \core_out[16] ;
 wire \core_out[17] ;
 wire \core_out[18] ;
 wire \core_out[19] ;
 wire \core_out[1] ;
 wire \core_out[20] ;
 wire \core_out[21] ;
 wire \core_out[22] ;
 wire \core_out[23] ;
 wire \core_out[24] ;
 wire \core_out[25] ;
 wire \core_out[26] ;
 wire \core_out[27] ;
 wire \core_out[28] ;
 wire \core_out[29] ;
 wire \core_out[2] ;
 wire \core_out[30] ;
 wire \core_out[31] ;
 wire \core_out[3] ;
 wire \core_out[4] ;
 wire \core_out[5] ;
 wire \core_out[6] ;
 wire \core_out[7] ;
 wire \core_out[8] ;
 wire \core_out[9] ;
 wire core_valid;
 wire clknet_0_clk;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire clknet_3_0__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;

 sky130_fd_sc_hd__inv_2 _0692_ (.A(net65),
    .Y(_0081_));
 sky130_fd_sc_hd__inv_2 _0693_ (.A(net4),
    .Y(_0082_));
 sky130_fd_sc_hd__inv_2 _0694_ (.A(net9),
    .Y(_0083_));
 sky130_fd_sc_hd__and3_1 _0695_ (.A(net11),
    .B(net10),
    .C(net19),
    .X(_0084_));
 sky130_fd_sc_hd__or4b_1 _0696_ (.A(net2),
    .B(net1),
    .C(net3),
    .D_N(_0084_),
    .X(_0085_));
 sky130_fd_sc_hd__or4_1 _0697_ (.A(net6),
    .B(net5),
    .C(net8),
    .D(net7),
    .X(_0086_));
 sky130_fd_sc_hd__or2_1 _0698_ (.A(_0082_),
    .B(_0086_),
    .X(_0087_));
 sky130_fd_sc_hd__nor3_1 _0699_ (.A(net9),
    .B(_0085_),
    .C(_0087_),
    .Y(_0000_));
 sky130_fd_sc_hd__or2_1 _0700_ (.A(net4),
    .B(_0086_),
    .X(_0088_));
 sky130_fd_sc_hd__nor4_1 _0701_ (.A(net2),
    .B(net1),
    .C(net3),
    .D(_0088_),
    .Y(_0089_));
 sky130_fd_sc_hd__and3_4 _0702_ (.A(net10),
    .B(net19),
    .C(net64),
    .X(_0090_));
 sky130_fd_sc_hd__mux2_1 _0703_ (.A0(net94),
    .A1(net11),
    .S(_0090_),
    .X(_0091_));
 sky130_fd_sc_hd__and2_1 _0704_ (.A(net109),
    .B(_0091_),
    .X(_0001_));
 sky130_fd_sc_hd__mux2_1 _0705_ (.A0(net92),
    .A1(net12),
    .S(_0090_),
    .X(_0092_));
 sky130_fd_sc_hd__and2_1 _0706_ (.A(net109),
    .B(_0092_),
    .X(_0002_));
 sky130_fd_sc_hd__mux2_1 _0707_ (.A0(net91),
    .A1(net13),
    .S(_0090_),
    .X(_0093_));
 sky130_fd_sc_hd__and2_1 _0708_ (.A(net111),
    .B(_0093_),
    .X(_0003_));
 sky130_fd_sc_hd__mux2_1 _0709_ (.A0(net88),
    .A1(net14),
    .S(_0090_),
    .X(_0094_));
 sky130_fd_sc_hd__and2_1 _0710_ (.A(net108),
    .B(_0094_),
    .X(_0004_));
 sky130_fd_sc_hd__mux2_1 _0711_ (.A0(net86),
    .A1(net15),
    .S(_0090_),
    .X(_0095_));
 sky130_fd_sc_hd__and2_1 _0712_ (.A(net108),
    .B(_0095_),
    .X(_0005_));
 sky130_fd_sc_hd__mux2_1 _0713_ (.A0(net84),
    .A1(net16),
    .S(_0090_),
    .X(_0096_));
 sky130_fd_sc_hd__and2_1 _0714_ (.A(net108),
    .B(_0096_),
    .X(_0006_));
 sky130_fd_sc_hd__mux2_1 _0715_ (.A0(net82),
    .A1(net17),
    .S(_0090_),
    .X(_0097_));
 sky130_fd_sc_hd__and2_1 _0716_ (.A(net109),
    .B(_0097_),
    .X(_0007_));
 sky130_fd_sc_hd__mux2_1 _0717_ (.A0(net80),
    .A1(net18),
    .S(_0090_),
    .X(_0098_));
 sky130_fd_sc_hd__and2_1 _0718_ (.A(net108),
    .B(_0098_),
    .X(_0008_));
 sky130_fd_sc_hd__or3b_2 _0719_ (.A(net2),
    .B(net1),
    .C_N(net3),
    .X(_0099_));
 sky130_fd_sc_hd__nor2_4 _0720_ (.A(_0088_),
    .B(_0099_),
    .Y(_0100_));
 sky130_fd_sc_hd__and2b_4 _0721_ (.A_N(net19),
    .B(net10),
    .X(_0101_));
 sky130_fd_sc_hd__nand2b_4 _0722_ (.A_N(net19),
    .B(net10),
    .Y(_0102_));
 sky130_fd_sc_hd__nor2_2 _0723_ (.A(_0087_),
    .B(_0099_),
    .Y(_0103_));
 sky130_fd_sc_hd__a22o_1 _0724_ (.A1(net94),
    .A2(net64),
    .B1(net62),
    .B2(\core_out[0] ),
    .X(_0104_));
 sky130_fd_sc_hd__a211o_1 _0725_ (.A1(net79),
    .A2(_0100_),
    .B1(_0102_),
    .C1(_0104_),
    .X(_0105_));
 sky130_fd_sc_hd__o211a_1 _0726_ (.A1(net20),
    .A2(net107),
    .B1(_0105_),
    .C1(net109),
    .X(_0009_));
 sky130_fd_sc_hd__a22o_1 _0727_ (.A1(net92),
    .A2(net64),
    .B1(_0100_),
    .B2(net76),
    .X(_0106_));
 sky130_fd_sc_hd__a211o_1 _0728_ (.A1(\core_out[1] ),
    .A2(net62),
    .B1(_0106_),
    .C1(_0102_),
    .X(_0107_));
 sky130_fd_sc_hd__o211a_1 _0729_ (.A1(net31),
    .A2(net107),
    .B1(_0107_),
    .C1(net109),
    .X(_0010_));
 sky130_fd_sc_hd__a22o_1 _0730_ (.A1(net91),
    .A2(net64),
    .B1(_0100_),
    .B2(net75),
    .X(_0108_));
 sky130_fd_sc_hd__a211o_1 _0731_ (.A1(\core_out[2] ),
    .A2(net62),
    .B1(_0108_),
    .C1(_0102_),
    .X(_0109_));
 sky130_fd_sc_hd__o211a_1 _0732_ (.A1(net42),
    .A2(net107),
    .B1(_0109_),
    .C1(net110),
    .X(_0011_));
 sky130_fd_sc_hd__a22o_1 _0733_ (.A1(net73),
    .A2(_0100_),
    .B1(net62),
    .B2(\core_out[3] ),
    .X(_0110_));
 sky130_fd_sc_hd__a211o_1 _0734_ (.A1(net89),
    .A2(_0089_),
    .B1(_0102_),
    .C1(_0110_),
    .X(_0111_));
 sky130_fd_sc_hd__o211a_1 _0735_ (.A1(net45),
    .A2(net107),
    .B1(_0111_),
    .C1(net110),
    .X(_0012_));
 sky130_fd_sc_hd__a22o_1 _0736_ (.A1(net87),
    .A2(net63),
    .B1(_0100_),
    .B2(net71),
    .X(_0112_));
 sky130_fd_sc_hd__a211o_1 _0737_ (.A1(\core_out[4] ),
    .A2(net62),
    .B1(_0112_),
    .C1(_0102_),
    .X(_0113_));
 sky130_fd_sc_hd__o211a_1 _0738_ (.A1(net46),
    .A2(net107),
    .B1(_0113_),
    .C1(net110),
    .X(_0013_));
 sky130_fd_sc_hd__a22o_1 _0739_ (.A1(net85),
    .A2(net63),
    .B1(_0100_),
    .B2(net69),
    .X(_0114_));
 sky130_fd_sc_hd__a211o_1 _0740_ (.A1(\core_out[5] ),
    .A2(net62),
    .B1(_0114_),
    .C1(_0102_),
    .X(_0115_));
 sky130_fd_sc_hd__o211a_1 _0741_ (.A1(net47),
    .A2(net107),
    .B1(_0115_),
    .C1(net110),
    .X(_0014_));
 sky130_fd_sc_hd__a22o_1 _0742_ (.A1(net83),
    .A2(net63),
    .B1(_0100_),
    .B2(net67),
    .X(_0116_));
 sky130_fd_sc_hd__a211o_1 _0743_ (.A1(\core_out[6] ),
    .A2(net62),
    .B1(_0116_),
    .C1(_0102_),
    .X(_0117_));
 sky130_fd_sc_hd__o211a_1 _0744_ (.A1(net48),
    .A2(net107),
    .B1(_0117_),
    .C1(net110),
    .X(_0015_));
 sky130_fd_sc_hd__and2_1 _0745_ (.A(\core_out[7] ),
    .B(net60),
    .X(_0118_));
 sky130_fd_sc_hd__a221o_1 _0746_ (.A1(net81),
    .A2(net63),
    .B1(_0100_),
    .B2(net65),
    .C1(_0102_),
    .X(_0119_));
 sky130_fd_sc_hd__o221a_1 _0747_ (.A1(net49),
    .A2(net105),
    .B1(_0118_),
    .B2(net59),
    .C1(net112),
    .X(_0016_));
 sky130_fd_sc_hd__and2_1 _0748_ (.A(\core_out[8] ),
    .B(net60),
    .X(_0120_));
 sky130_fd_sc_hd__o221a_1 _0749_ (.A1(net50),
    .A2(net105),
    .B1(net58),
    .B2(_0120_),
    .C1(net112),
    .X(_0017_));
 sky130_fd_sc_hd__and2_1 _0750_ (.A(\core_out[9] ),
    .B(net61),
    .X(_0121_));
 sky130_fd_sc_hd__o221a_1 _0751_ (.A1(net51),
    .A2(net106),
    .B1(net57),
    .B2(_0121_),
    .C1(net113),
    .X(_0018_));
 sky130_fd_sc_hd__and2_1 _0752_ (.A(\core_out[10] ),
    .B(net61),
    .X(_0122_));
 sky130_fd_sc_hd__o221a_1 _0753_ (.A1(net21),
    .A2(net106),
    .B1(net57),
    .B2(_0122_),
    .C1(net116),
    .X(_0019_));
 sky130_fd_sc_hd__and2_1 _0754_ (.A(\core_out[11] ),
    .B(net61),
    .X(_0123_));
 sky130_fd_sc_hd__o221a_1 _0755_ (.A1(net22),
    .A2(net106),
    .B1(net57),
    .B2(_0123_),
    .C1(net116),
    .X(_0020_));
 sky130_fd_sc_hd__and2_1 _0756_ (.A(\core_out[12] ),
    .B(net61),
    .X(_0124_));
 sky130_fd_sc_hd__o221a_1 _0757_ (.A1(net23),
    .A2(net106),
    .B1(net57),
    .B2(_0124_),
    .C1(net116),
    .X(_0021_));
 sky130_fd_sc_hd__and2_1 _0758_ (.A(\core_out[13] ),
    .B(net61),
    .X(_0125_));
 sky130_fd_sc_hd__o221a_1 _0759_ (.A1(net24),
    .A2(net106),
    .B1(net57),
    .B2(_0125_),
    .C1(net116),
    .X(_0022_));
 sky130_fd_sc_hd__and2_1 _0760_ (.A(\core_out[14] ),
    .B(net61),
    .X(_0126_));
 sky130_fd_sc_hd__o221a_1 _0761_ (.A1(net25),
    .A2(net106),
    .B1(net57),
    .B2(_0126_),
    .C1(net116),
    .X(_0023_));
 sky130_fd_sc_hd__and2_1 _0762_ (.A(\core_out[15] ),
    .B(net61),
    .X(_0127_));
 sky130_fd_sc_hd__o221a_1 _0763_ (.A1(net26),
    .A2(net106),
    .B1(net57),
    .B2(_0127_),
    .C1(net113),
    .X(_0024_));
 sky130_fd_sc_hd__and2_1 _0764_ (.A(\core_out[16] ),
    .B(net61),
    .X(_0128_));
 sky130_fd_sc_hd__o221a_1 _0765_ (.A1(net27),
    .A2(net106),
    .B1(net57),
    .B2(_0128_),
    .C1(net113),
    .X(_0025_));
 sky130_fd_sc_hd__and2_1 _0766_ (.A(\core_out[17] ),
    .B(net60),
    .X(_0129_));
 sky130_fd_sc_hd__o221a_1 _0767_ (.A1(net28),
    .A2(net105),
    .B1(net58),
    .B2(_0129_),
    .C1(net113),
    .X(_0026_));
 sky130_fd_sc_hd__and2_1 _0768_ (.A(\core_out[18] ),
    .B(net61),
    .X(_0130_));
 sky130_fd_sc_hd__o221a_1 _0769_ (.A1(net29),
    .A2(net106),
    .B1(net57),
    .B2(_0130_),
    .C1(net113),
    .X(_0027_));
 sky130_fd_sc_hd__and2_1 _0770_ (.A(\core_out[19] ),
    .B(_0103_),
    .X(_0131_));
 sky130_fd_sc_hd__o221a_1 _0771_ (.A1(net30),
    .A2(net105),
    .B1(net58),
    .B2(_0131_),
    .C1(net113),
    .X(_0028_));
 sky130_fd_sc_hd__and2_1 _0772_ (.A(\core_out[20] ),
    .B(net60),
    .X(_0132_));
 sky130_fd_sc_hd__o221a_1 _0773_ (.A1(net32),
    .A2(net105),
    .B1(net58),
    .B2(_0132_),
    .C1(net113),
    .X(_0029_));
 sky130_fd_sc_hd__and2_1 _0774_ (.A(\core_out[21] ),
    .B(net60),
    .X(_0133_));
 sky130_fd_sc_hd__o221a_1 _0775_ (.A1(net33),
    .A2(net105),
    .B1(net58),
    .B2(_0133_),
    .C1(net114),
    .X(_0030_));
 sky130_fd_sc_hd__and2_1 _0776_ (.A(\core_out[22] ),
    .B(net60),
    .X(_0134_));
 sky130_fd_sc_hd__o221a_1 _0777_ (.A1(net34),
    .A2(_0101_),
    .B1(net58),
    .B2(_0134_),
    .C1(net114),
    .X(_0031_));
 sky130_fd_sc_hd__and2_1 _0778_ (.A(\core_out[23] ),
    .B(_0103_),
    .X(_0135_));
 sky130_fd_sc_hd__o221a_1 _0779_ (.A1(net35),
    .A2(_0101_),
    .B1(net58),
    .B2(_0135_),
    .C1(net114),
    .X(_0032_));
 sky130_fd_sc_hd__and2_1 _0780_ (.A(\core_out[24] ),
    .B(_0103_),
    .X(_0136_));
 sky130_fd_sc_hd__o221a_1 _0781_ (.A1(net36),
    .A2(_0101_),
    .B1(net58),
    .B2(_0136_),
    .C1(net114),
    .X(_0033_));
 sky130_fd_sc_hd__and2_1 _0782_ (.A(\core_out[25] ),
    .B(net60),
    .X(_0137_));
 sky130_fd_sc_hd__o221a_1 _0783_ (.A1(net37),
    .A2(net105),
    .B1(net57),
    .B2(_0137_),
    .C1(net112),
    .X(_0034_));
 sky130_fd_sc_hd__and2_1 _0784_ (.A(\core_out[26] ),
    .B(net60),
    .X(_0138_));
 sky130_fd_sc_hd__o221a_1 _0785_ (.A1(net38),
    .A2(net105),
    .B1(net58),
    .B2(_0138_),
    .C1(net115),
    .X(_0035_));
 sky130_fd_sc_hd__and2_1 _0786_ (.A(\core_out[27] ),
    .B(net60),
    .X(_0139_));
 sky130_fd_sc_hd__o221a_1 _0787_ (.A1(net39),
    .A2(net105),
    .B1(net59),
    .B2(_0139_),
    .C1(net115),
    .X(_0036_));
 sky130_fd_sc_hd__and2_1 _0788_ (.A(\core_out[28] ),
    .B(net60),
    .X(_0140_));
 sky130_fd_sc_hd__o221a_1 _0789_ (.A1(net40),
    .A2(net105),
    .B1(net59),
    .B2(_0140_),
    .C1(net115),
    .X(_0037_));
 sky130_fd_sc_hd__and2_1 _0790_ (.A(\core_out[29] ),
    .B(net62),
    .X(_0141_));
 sky130_fd_sc_hd__o221a_1 _0791_ (.A1(net41),
    .A2(net107),
    .B1(net59),
    .B2(_0141_),
    .C1(net111),
    .X(_0038_));
 sky130_fd_sc_hd__and2_1 _0792_ (.A(\core_out[30] ),
    .B(net62),
    .X(_0142_));
 sky130_fd_sc_hd__o221a_1 _0793_ (.A1(net43),
    .A2(net107),
    .B1(net59),
    .B2(_0142_),
    .C1(net110),
    .X(_0039_));
 sky130_fd_sc_hd__and2_1 _0794_ (.A(\core_out[31] ),
    .B(net62),
    .X(_0143_));
 sky130_fd_sc_hd__o221a_1 _0795_ (.A1(net44),
    .A2(net107),
    .B1(net59),
    .B2(_0143_),
    .C1(net110),
    .X(_0040_));
 sky130_fd_sc_hd__and3_4 _0796_ (.A(net10),
    .B(net19),
    .C(_0100_),
    .X(_0144_));
 sky130_fd_sc_hd__mux2_1 _0797_ (.A0(net79),
    .A1(net11),
    .S(_0144_),
    .X(_0145_));
 sky130_fd_sc_hd__and2_1 _0798_ (.A(net109),
    .B(_0145_),
    .X(_0041_));
 sky130_fd_sc_hd__mux2_1 _0799_ (.A0(net77),
    .A1(net12),
    .S(_0144_),
    .X(_0146_));
 sky130_fd_sc_hd__and2_1 _0800_ (.A(net109),
    .B(_0146_),
    .X(_0042_));
 sky130_fd_sc_hd__mux2_1 _0801_ (.A0(net74),
    .A1(net13),
    .S(_0144_),
    .X(_0147_));
 sky130_fd_sc_hd__and2_1 _0802_ (.A(net108),
    .B(_0147_),
    .X(_0043_));
 sky130_fd_sc_hd__mux2_1 _0803_ (.A0(net73),
    .A1(net14),
    .S(_0144_),
    .X(_0148_));
 sky130_fd_sc_hd__and2_1 _0804_ (.A(net108),
    .B(_0148_),
    .X(_0044_));
 sky130_fd_sc_hd__mux2_1 _0805_ (.A0(net70),
    .A1(net15),
    .S(_0144_),
    .X(_0149_));
 sky130_fd_sc_hd__and2_1 _0806_ (.A(net108),
    .B(_0149_),
    .X(_0045_));
 sky130_fd_sc_hd__mux2_1 _0807_ (.A0(net68),
    .A1(net16),
    .S(_0144_),
    .X(_0150_));
 sky130_fd_sc_hd__and2_1 _0808_ (.A(net108),
    .B(_0150_),
    .X(_0046_));
 sky130_fd_sc_hd__mux2_1 _0809_ (.A0(net66),
    .A1(net17),
    .S(_0144_),
    .X(_0151_));
 sky130_fd_sc_hd__and2_1 _0810_ (.A(net108),
    .B(_0151_),
    .X(_0047_));
 sky130_fd_sc_hd__mux2_1 _0811_ (.A0(net65),
    .A1(net18),
    .S(_0144_),
    .X(_0152_));
 sky130_fd_sc_hd__and2_1 _0812_ (.A(net108),
    .B(_0152_),
    .X(_0048_));
 sky130_fd_sc_hd__a31o_1 _0813_ (.A1(net97),
    .A2(net79),
    .A3(net94),
    .B1(\core_out[0] ),
    .X(_0153_));
 sky130_fd_sc_hd__and3_1 _0814_ (.A(\core_out[0] ),
    .B(net78),
    .C(net94),
    .X(_0154_));
 sky130_fd_sc_hd__nand2_1 _0815_ (.A(net97),
    .B(_0154_),
    .Y(_0155_));
 sky130_fd_sc_hd__and3_1 _0816_ (.A(net109),
    .B(_0153_),
    .C(_0155_),
    .X(_0049_));
 sky130_fd_sc_hd__a22o_1 _0817_ (.A1(net78),
    .A2(net92),
    .B1(net94),
    .B2(net76),
    .X(_0156_));
 sky130_fd_sc_hd__and4_1 _0818_ (.A(net76),
    .B(net78),
    .C(net92),
    .D(net94),
    .X(_0157_));
 sky130_fd_sc_hd__nand4_1 _0819_ (.A(net76),
    .B(net78),
    .C(net92),
    .D(net94),
    .Y(_0158_));
 sky130_fd_sc_hd__and3_1 _0820_ (.A(\core_out[1] ),
    .B(_0156_),
    .C(_0158_),
    .X(_0159_));
 sky130_fd_sc_hd__a21oi_1 _0821_ (.A1(_0156_),
    .A2(_0158_),
    .B1(\core_out[1] ),
    .Y(_0160_));
 sky130_fd_sc_hd__nor2_1 _0822_ (.A(_0159_),
    .B(_0160_),
    .Y(_0161_));
 sky130_fd_sc_hd__xnor2_1 _0823_ (.A(_0154_),
    .B(_0161_),
    .Y(_0162_));
 sky130_fd_sc_hd__nand2_1 _0824_ (.A(net97),
    .B(_0162_),
    .Y(_0163_));
 sky130_fd_sc_hd__o211a_1 _0825_ (.A1(net97),
    .A2(\core_out[1] ),
    .B1(net109),
    .C1(_0163_),
    .X(_0050_));
 sky130_fd_sc_hd__nand2_1 _0826_ (.A(net75),
    .B(net94),
    .Y(_0164_));
 sky130_fd_sc_hd__and4_1 _0827_ (.A(net76),
    .B(net78),
    .C(net91),
    .D(net92),
    .X(_0165_));
 sky130_fd_sc_hd__a22oi_2 _0828_ (.A1(net78),
    .A2(net91),
    .B1(net92),
    .B2(net76),
    .Y(_0166_));
 sky130_fd_sc_hd__or3_1 _0829_ (.A(_0164_),
    .B(_0165_),
    .C(_0166_),
    .X(_0167_));
 sky130_fd_sc_hd__o21ai_1 _0830_ (.A1(_0165_),
    .A2(_0166_),
    .B1(_0164_),
    .Y(_0168_));
 sky130_fd_sc_hd__and3_1 _0831_ (.A(_0157_),
    .B(_0167_),
    .C(_0168_),
    .X(_0169_));
 sky130_fd_sc_hd__a21oi_1 _0832_ (.A1(_0167_),
    .A2(_0168_),
    .B1(_0157_),
    .Y(_0170_));
 sky130_fd_sc_hd__nor2_1 _0833_ (.A(_0169_),
    .B(_0170_),
    .Y(_0171_));
 sky130_fd_sc_hd__nand2_1 _0834_ (.A(\core_out[2] ),
    .B(_0171_),
    .Y(_0172_));
 sky130_fd_sc_hd__or2_1 _0835_ (.A(\core_out[2] ),
    .B(_0171_),
    .X(_0173_));
 sky130_fd_sc_hd__nand2_1 _0836_ (.A(_0172_),
    .B(_0173_),
    .Y(_0174_));
 sky130_fd_sc_hd__a21oi_1 _0837_ (.A1(_0154_),
    .A2(_0161_),
    .B1(_0159_),
    .Y(_0175_));
 sky130_fd_sc_hd__xnor2_1 _0838_ (.A(_0174_),
    .B(_0175_),
    .Y(_0176_));
 sky130_fd_sc_hd__nand2_1 _0839_ (.A(net97),
    .B(_0176_),
    .Y(_0177_));
 sky130_fd_sc_hd__o211a_1 _0840_ (.A1(net97),
    .A2(\core_out[2] ),
    .B1(net110),
    .C1(_0177_),
    .X(_0051_));
 sky130_fd_sc_hd__nand2_1 _0841_ (.A(net75),
    .B(net92),
    .Y(_0178_));
 sky130_fd_sc_hd__and4_1 _0842_ (.A(net76),
    .B(net78),
    .C(net88),
    .D(net91),
    .X(_0179_));
 sky130_fd_sc_hd__a22oi_2 _0843_ (.A1(\core_b[0] ),
    .A2(net88),
    .B1(net91),
    .B2(net76),
    .Y(_0180_));
 sky130_fd_sc_hd__or3_1 _0844_ (.A(_0178_),
    .B(_0179_),
    .C(_0180_),
    .X(_0181_));
 sky130_fd_sc_hd__o21ai_1 _0845_ (.A1(_0179_),
    .A2(_0180_),
    .B1(_0178_),
    .Y(_0182_));
 sky130_fd_sc_hd__o21bai_1 _0846_ (.A1(_0164_),
    .A2(_0166_),
    .B1_N(_0165_),
    .Y(_0183_));
 sky130_fd_sc_hd__nand3_1 _0847_ (.A(_0181_),
    .B(_0182_),
    .C(_0183_),
    .Y(_0184_));
 sky130_fd_sc_hd__a21o_1 _0848_ (.A1(_0181_),
    .A2(_0182_),
    .B1(_0183_),
    .X(_0185_));
 sky130_fd_sc_hd__nand4_1 _0849_ (.A(net73),
    .B(net94),
    .C(_0184_),
    .D(_0185_),
    .Y(_0186_));
 sky130_fd_sc_hd__a22o_1 _0850_ (.A1(net73),
    .A2(net94),
    .B1(_0184_),
    .B2(_0185_),
    .X(_0187_));
 sky130_fd_sc_hd__and3_1 _0851_ (.A(_0169_),
    .B(_0186_),
    .C(_0187_),
    .X(_0188_));
 sky130_fd_sc_hd__a21oi_1 _0852_ (.A1(_0186_),
    .A2(_0187_),
    .B1(_0169_),
    .Y(_0189_));
 sky130_fd_sc_hd__nor2_1 _0853_ (.A(_0188_),
    .B(_0189_),
    .Y(_0190_));
 sky130_fd_sc_hd__nand2_1 _0854_ (.A(\core_out[3] ),
    .B(_0190_),
    .Y(_0191_));
 sky130_fd_sc_hd__or2_1 _0855_ (.A(\core_out[3] ),
    .B(_0190_),
    .X(_0192_));
 sky130_fd_sc_hd__nand2_1 _0856_ (.A(_0191_),
    .B(_0192_),
    .Y(_0193_));
 sky130_fd_sc_hd__o21ai_1 _0857_ (.A1(_0174_),
    .A2(_0175_),
    .B1(_0172_),
    .Y(_0194_));
 sky130_fd_sc_hd__xor2_1 _0858_ (.A(_0193_),
    .B(_0194_),
    .X(_0195_));
 sky130_fd_sc_hd__nand2_1 _0859_ (.A(net96),
    .B(_0195_),
    .Y(_0196_));
 sky130_fd_sc_hd__o211a_1 _0860_ (.A1(net96),
    .A2(\core_out[3] ),
    .B1(net110),
    .C1(_0196_),
    .X(_0052_));
 sky130_fd_sc_hd__a22oi_1 _0861_ (.A1(\core_b[3] ),
    .A2(net93),
    .B1(net95),
    .B2(net71),
    .Y(_0197_));
 sky130_fd_sc_hd__and4_1 _0862_ (.A(net71),
    .B(net73),
    .C(net93),
    .D(net95),
    .X(_0198_));
 sky130_fd_sc_hd__nor2_1 _0863_ (.A(_0197_),
    .B(_0198_),
    .Y(_0199_));
 sky130_fd_sc_hd__nand2_1 _0864_ (.A(net75),
    .B(net91),
    .Y(_0200_));
 sky130_fd_sc_hd__and4_1 _0865_ (.A(net76),
    .B(\core_b[0] ),
    .C(net87),
    .D(net89),
    .X(_0201_));
 sky130_fd_sc_hd__a22oi_2 _0866_ (.A1(net79),
    .A2(net87),
    .B1(net89),
    .B2(net76),
    .Y(_0202_));
 sky130_fd_sc_hd__or3_1 _0867_ (.A(_0200_),
    .B(_0201_),
    .C(_0202_),
    .X(_0203_));
 sky130_fd_sc_hd__o21ai_1 _0868_ (.A1(_0201_),
    .A2(_0202_),
    .B1(_0200_),
    .Y(_0204_));
 sky130_fd_sc_hd__o21bai_1 _0869_ (.A1(_0178_),
    .A2(_0180_),
    .B1_N(_0179_),
    .Y(_0205_));
 sky130_fd_sc_hd__nand3_1 _0870_ (.A(_0203_),
    .B(_0204_),
    .C(_0205_),
    .Y(_0206_));
 sky130_fd_sc_hd__a21o_1 _0871_ (.A1(_0203_),
    .A2(_0204_),
    .B1(_0205_),
    .X(_0207_));
 sky130_fd_sc_hd__nand3_1 _0872_ (.A(_0199_),
    .B(_0206_),
    .C(_0207_),
    .Y(_0208_));
 sky130_fd_sc_hd__a21o_1 _0873_ (.A1(_0206_),
    .A2(_0207_),
    .B1(_0199_),
    .X(_0209_));
 sky130_fd_sc_hd__nand2_1 _0874_ (.A(_0184_),
    .B(_0186_),
    .Y(_0210_));
 sky130_fd_sc_hd__and3_1 _0875_ (.A(_0208_),
    .B(_0209_),
    .C(_0210_),
    .X(_0211_));
 sky130_fd_sc_hd__a21oi_1 _0876_ (.A1(_0208_),
    .A2(_0209_),
    .B1(_0210_),
    .Y(_0212_));
 sky130_fd_sc_hd__or3b_2 _0877_ (.A(_0211_),
    .B(_0212_),
    .C_N(_0188_),
    .X(_0213_));
 sky130_fd_sc_hd__o21bai_1 _0878_ (.A1(_0211_),
    .A2(_0212_),
    .B1_N(_0188_),
    .Y(_0214_));
 sky130_fd_sc_hd__and3_1 _0879_ (.A(\core_out[4] ),
    .B(_0213_),
    .C(_0214_),
    .X(_0215_));
 sky130_fd_sc_hd__a21o_1 _0880_ (.A1(_0213_),
    .A2(_0214_),
    .B1(\core_out[4] ),
    .X(_0216_));
 sky130_fd_sc_hd__nand2b_1 _0881_ (.A_N(_0215_),
    .B(_0216_),
    .Y(_0217_));
 sky130_fd_sc_hd__a21bo_1 _0882_ (.A1(_0192_),
    .A2(_0194_),
    .B1_N(_0191_),
    .X(_0218_));
 sky130_fd_sc_hd__xnor2_1 _0883_ (.A(_0217_),
    .B(_0218_),
    .Y(_0219_));
 sky130_fd_sc_hd__mux2_1 _0884_ (.A0(\core_out[4] ),
    .A1(_0219_),
    .S(net96),
    .X(_0220_));
 sky130_fd_sc_hd__and2_1 _0885_ (.A(net110),
    .B(_0220_),
    .X(_0053_));
 sky130_fd_sc_hd__and4_1 _0886_ (.A(net71),
    .B(net73),
    .C(net90),
    .D(net92),
    .X(_0221_));
 sky130_fd_sc_hd__a22oi_1 _0887_ (.A1(net73),
    .A2(net90),
    .B1(net93),
    .B2(net71),
    .Y(_0222_));
 sky130_fd_sc_hd__or2_1 _0888_ (.A(_0221_),
    .B(_0222_),
    .X(_0223_));
 sky130_fd_sc_hd__nand2_1 _0889_ (.A(net69),
    .B(net95),
    .Y(_0224_));
 sky130_fd_sc_hd__nor2_1 _0890_ (.A(_0223_),
    .B(_0224_),
    .Y(_0225_));
 sky130_fd_sc_hd__xor2_1 _0891_ (.A(_0223_),
    .B(_0224_),
    .X(_0226_));
 sky130_fd_sc_hd__nand2_1 _0892_ (.A(net75),
    .B(net89),
    .Y(_0227_));
 sky130_fd_sc_hd__and4_1 _0893_ (.A(net77),
    .B(net78),
    .C(net85),
    .D(net87),
    .X(_0228_));
 sky130_fd_sc_hd__a22oi_2 _0894_ (.A1(net78),
    .A2(net85),
    .B1(net87),
    .B2(net77),
    .Y(_0229_));
 sky130_fd_sc_hd__or3_1 _0895_ (.A(_0227_),
    .B(_0228_),
    .C(_0229_),
    .X(_0230_));
 sky130_fd_sc_hd__o21ai_1 _0896_ (.A1(_0228_),
    .A2(_0229_),
    .B1(_0227_),
    .Y(_0231_));
 sky130_fd_sc_hd__o21bai_1 _0897_ (.A1(_0200_),
    .A2(_0202_),
    .B1_N(_0201_),
    .Y(_0232_));
 sky130_fd_sc_hd__nand3_1 _0898_ (.A(_0230_),
    .B(_0231_),
    .C(_0232_),
    .Y(_0233_));
 sky130_fd_sc_hd__a21o_1 _0899_ (.A1(_0230_),
    .A2(_0231_),
    .B1(_0232_),
    .X(_0234_));
 sky130_fd_sc_hd__nand3_1 _0900_ (.A(_0226_),
    .B(_0233_),
    .C(_0234_),
    .Y(_0235_));
 sky130_fd_sc_hd__a21o_1 _0901_ (.A1(_0233_),
    .A2(_0234_),
    .B1(_0226_),
    .X(_0236_));
 sky130_fd_sc_hd__a21bo_1 _0902_ (.A1(_0199_),
    .A2(_0207_),
    .B1_N(_0206_),
    .X(_0237_));
 sky130_fd_sc_hd__nand3_2 _0903_ (.A(_0235_),
    .B(_0236_),
    .C(_0237_),
    .Y(_0238_));
 sky130_fd_sc_hd__a21o_1 _0904_ (.A1(_0235_),
    .A2(_0236_),
    .B1(_0237_),
    .X(_0239_));
 sky130_fd_sc_hd__nand3_2 _0905_ (.A(_0198_),
    .B(_0238_),
    .C(_0239_),
    .Y(_0240_));
 sky130_fd_sc_hd__a21o_1 _0906_ (.A1(_0238_),
    .A2(_0239_),
    .B1(_0198_),
    .X(_0241_));
 sky130_fd_sc_hd__nand2_1 _0907_ (.A(_0240_),
    .B(_0241_),
    .Y(_0242_));
 sky130_fd_sc_hd__nand3_1 _0908_ (.A(_0211_),
    .B(_0240_),
    .C(_0241_),
    .Y(_0243_));
 sky130_fd_sc_hd__nand3b_1 _0909_ (.A_N(_0211_),
    .B(_0213_),
    .C(_0242_),
    .Y(_0244_));
 sky130_fd_sc_hd__nor2_1 _0910_ (.A(_0213_),
    .B(_0242_),
    .Y(_0245_));
 sky130_fd_sc_hd__or2_1 _0911_ (.A(_0213_),
    .B(_0242_),
    .X(_0246_));
 sky130_fd_sc_hd__and4_1 _0912_ (.A(\core_out[5] ),
    .B(_0243_),
    .C(_0244_),
    .D(_0246_),
    .X(_0247_));
 sky130_fd_sc_hd__a31o_1 _0913_ (.A1(_0243_),
    .A2(_0244_),
    .A3(_0246_),
    .B1(\core_out[5] ),
    .X(_0248_));
 sky130_fd_sc_hd__nand2b_1 _0914_ (.A_N(_0247_),
    .B(_0248_),
    .Y(_0249_));
 sky130_fd_sc_hd__a21o_1 _0915_ (.A1(_0216_),
    .A2(_0218_),
    .B1(_0215_),
    .X(_0250_));
 sky130_fd_sc_hd__xor2_1 _0916_ (.A(_0249_),
    .B(_0250_),
    .X(_0251_));
 sky130_fd_sc_hd__nand2_1 _0917_ (.A(net97),
    .B(_0251_),
    .Y(_0252_));
 sky130_fd_sc_hd__o211a_1 _0918_ (.A1(net96),
    .A2(\core_out[5] ),
    .B1(net111),
    .C1(_0252_),
    .X(_0054_));
 sky130_fd_sc_hd__o211a_1 _0919_ (.A1(_0221_),
    .A2(_0225_),
    .B1(net67),
    .C1(net95),
    .X(_0253_));
 sky130_fd_sc_hd__a211oi_1 _0920_ (.A1(net67),
    .A2(net95),
    .B1(_0221_),
    .C1(_0225_),
    .Y(_0254_));
 sky130_fd_sc_hd__nor2_1 _0921_ (.A(_0253_),
    .B(_0254_),
    .Y(_0255_));
 sky130_fd_sc_hd__nand2_1 _0922_ (.A(net69),
    .B(net92),
    .Y(_0256_));
 sky130_fd_sc_hd__nand2_1 _0923_ (.A(net71),
    .B(net88),
    .Y(_0257_));
 sky130_fd_sc_hd__and4_1 _0924_ (.A(net71),
    .B(net73),
    .C(net89),
    .D(net90),
    .X(_0258_));
 sky130_fd_sc_hd__a22o_1 _0925_ (.A1(\core_b[3] ),
    .A2(net89),
    .B1(net90),
    .B2(net71),
    .X(_0259_));
 sky130_fd_sc_hd__and2b_1 _0926_ (.A_N(_0258_),
    .B(_0259_),
    .X(_0260_));
 sky130_fd_sc_hd__xnor2_1 _0927_ (.A(_0256_),
    .B(_0260_),
    .Y(_0261_));
 sky130_fd_sc_hd__nand2_1 _0928_ (.A(net75),
    .B(net87),
    .Y(_0262_));
 sky130_fd_sc_hd__nand2_1 _0929_ (.A(net77),
    .B(net83),
    .Y(_0263_));
 sky130_fd_sc_hd__and4_1 _0930_ (.A(net77),
    .B(net78),
    .C(net83),
    .D(net85),
    .X(_0264_));
 sky130_fd_sc_hd__a22oi_2 _0931_ (.A1(\core_b[0] ),
    .A2(net83),
    .B1(net85),
    .B2(net77),
    .Y(_0265_));
 sky130_fd_sc_hd__nor3_1 _0932_ (.A(_0262_),
    .B(_0264_),
    .C(_0265_),
    .Y(_0266_));
 sky130_fd_sc_hd__or3_1 _0933_ (.A(_0262_),
    .B(_0264_),
    .C(_0265_),
    .X(_0267_));
 sky130_fd_sc_hd__o21ai_1 _0934_ (.A1(_0264_),
    .A2(_0265_),
    .B1(_0262_),
    .Y(_0268_));
 sky130_fd_sc_hd__o21bai_1 _0935_ (.A1(_0227_),
    .A2(_0229_),
    .B1_N(_0228_),
    .Y(_0269_));
 sky130_fd_sc_hd__nand3_1 _0936_ (.A(_0267_),
    .B(_0268_),
    .C(_0269_),
    .Y(_0270_));
 sky130_fd_sc_hd__a21o_1 _0937_ (.A1(_0267_),
    .A2(_0268_),
    .B1(_0269_),
    .X(_0271_));
 sky130_fd_sc_hd__nand3_1 _0938_ (.A(_0261_),
    .B(_0270_),
    .C(_0271_),
    .Y(_0272_));
 sky130_fd_sc_hd__a21o_1 _0939_ (.A1(_0270_),
    .A2(_0271_),
    .B1(_0261_),
    .X(_0273_));
 sky130_fd_sc_hd__a21bo_1 _0940_ (.A1(_0226_),
    .A2(_0234_),
    .B1_N(_0233_),
    .X(_0274_));
 sky130_fd_sc_hd__nand3_2 _0941_ (.A(_0272_),
    .B(_0273_),
    .C(_0274_),
    .Y(_0275_));
 sky130_fd_sc_hd__a21o_1 _0942_ (.A1(_0272_),
    .A2(_0273_),
    .B1(_0274_),
    .X(_0276_));
 sky130_fd_sc_hd__and3_1 _0943_ (.A(_0255_),
    .B(_0275_),
    .C(_0276_),
    .X(_0277_));
 sky130_fd_sc_hd__nand3_1 _0944_ (.A(_0255_),
    .B(_0275_),
    .C(_0276_),
    .Y(_0278_));
 sky130_fd_sc_hd__a21oi_1 _0945_ (.A1(_0275_),
    .A2(_0276_),
    .B1(_0255_),
    .Y(_0279_));
 sky130_fd_sc_hd__a211oi_2 _0946_ (.A1(_0238_),
    .A2(_0240_),
    .B1(_0277_),
    .C1(_0279_),
    .Y(_0280_));
 sky130_fd_sc_hd__o211a_1 _0947_ (.A1(_0277_),
    .A2(_0279_),
    .B1(_0238_),
    .C1(_0240_),
    .X(_0281_));
 sky130_fd_sc_hd__or3_1 _0948_ (.A(_0243_),
    .B(_0280_),
    .C(_0281_),
    .X(_0282_));
 sky130_fd_sc_hd__o21ai_1 _0949_ (.A1(_0280_),
    .A2(_0281_),
    .B1(_0243_),
    .Y(_0283_));
 sky130_fd_sc_hd__a21o_1 _0950_ (.A1(_0282_),
    .A2(_0283_),
    .B1(_0245_),
    .X(_0284_));
 sky130_fd_sc_hd__nand3_1 _0951_ (.A(_0245_),
    .B(_0282_),
    .C(_0283_),
    .Y(_0285_));
 sky130_fd_sc_hd__and3_1 _0952_ (.A(\core_out[6] ),
    .B(_0284_),
    .C(_0285_),
    .X(_0286_));
 sky130_fd_sc_hd__a21o_1 _0953_ (.A1(_0284_),
    .A2(_0285_),
    .B1(\core_out[6] ),
    .X(_0287_));
 sky130_fd_sc_hd__and2b_1 _0954_ (.A_N(_0286_),
    .B(_0287_),
    .X(_0288_));
 sky130_fd_sc_hd__a21o_1 _0955_ (.A1(_0248_),
    .A2(_0250_),
    .B1(_0247_),
    .X(_0289_));
 sky130_fd_sc_hd__xnor2_1 _0956_ (.A(_0288_),
    .B(_0289_),
    .Y(_0290_));
 sky130_fd_sc_hd__nand2_1 _0957_ (.A(net96),
    .B(_0290_),
    .Y(_0291_));
 sky130_fd_sc_hd__o211a_1 _0958_ (.A1(net96),
    .A2(\core_out[6] ),
    .B1(net111),
    .C1(_0291_),
    .X(_0055_));
 sky130_fd_sc_hd__a21bo_1 _0959_ (.A1(_0245_),
    .A2(_0283_),
    .B1_N(_0282_),
    .X(_0292_));
 sky130_fd_sc_hd__a31o_1 _0960_ (.A1(net69),
    .A2(net93),
    .A3(_0259_),
    .B1(_0258_),
    .X(_0293_));
 sky130_fd_sc_hd__and4_1 _0961_ (.A(net67),
    .B(net69),
    .C(net90),
    .D(net93),
    .X(_0294_));
 sky130_fd_sc_hd__inv_2 _0962_ (.A(_0294_),
    .Y(_0295_));
 sky130_fd_sc_hd__a22o_1 _0963_ (.A1(net69),
    .A2(net90),
    .B1(net93),
    .B2(net67),
    .X(_0296_));
 sky130_fd_sc_hd__and4b_1 _0964_ (.A_N(net95),
    .B(_0295_),
    .C(_0296_),
    .D(\core_b[7] ),
    .X(_0297_));
 sky130_fd_sc_hd__o2bb2a_1 _0965_ (.A1_N(_0295_),
    .A2_N(_0296_),
    .B1(_0081_),
    .B2(net95),
    .X(_0298_));
 sky130_fd_sc_hd__nor2_1 _0966_ (.A(_0297_),
    .B(_0298_),
    .Y(_0299_));
 sky130_fd_sc_hd__nand2_1 _0967_ (.A(_0293_),
    .B(_0299_),
    .Y(_0300_));
 sky130_fd_sc_hd__xor2_1 _0968_ (.A(_0293_),
    .B(_0299_),
    .X(_0301_));
 sky130_fd_sc_hd__nand4_1 _0969_ (.A(net72),
    .B(net75),
    .C(net85),
    .D(net86),
    .Y(_0302_));
 sky130_fd_sc_hd__a22o_1 _0970_ (.A1(net74),
    .A2(net85),
    .B1(net87),
    .B2(net72),
    .X(_0303_));
 sky130_fd_sc_hd__nand2_1 _0971_ (.A(_0302_),
    .B(_0303_),
    .Y(_0304_));
 sky130_fd_sc_hd__xor2_1 _0972_ (.A(_0257_),
    .B(_0304_),
    .X(_0305_));
 sky130_fd_sc_hd__a21oi_1 _0973_ (.A1(net79),
    .A2(net81),
    .B1(net65),
    .Y(_0306_));
 sky130_fd_sc_hd__and3_1 _0974_ (.A(net65),
    .B(net79),
    .C(net81),
    .X(_0307_));
 sky130_fd_sc_hd__or3_1 _0975_ (.A(_0263_),
    .B(_0306_),
    .C(_0307_),
    .X(_0308_));
 sky130_fd_sc_hd__o21ai_1 _0976_ (.A1(_0306_),
    .A2(_0307_),
    .B1(_0263_),
    .Y(_0309_));
 sky130_fd_sc_hd__o211ai_2 _0977_ (.A1(_0264_),
    .A2(_0266_),
    .B1(_0308_),
    .C1(_0309_),
    .Y(_0310_));
 sky130_fd_sc_hd__a211o_1 _0978_ (.A1(_0308_),
    .A2(_0309_),
    .B1(_0264_),
    .C1(_0266_),
    .X(_0311_));
 sky130_fd_sc_hd__nand3_1 _0979_ (.A(_0305_),
    .B(_0310_),
    .C(_0311_),
    .Y(_0312_));
 sky130_fd_sc_hd__a21o_1 _0980_ (.A1(_0310_),
    .A2(_0311_),
    .B1(_0305_),
    .X(_0313_));
 sky130_fd_sc_hd__a21bo_1 _0981_ (.A1(_0261_),
    .A2(_0271_),
    .B1_N(_0270_),
    .X(_0314_));
 sky130_fd_sc_hd__nand3_2 _0982_ (.A(_0312_),
    .B(_0313_),
    .C(_0314_),
    .Y(_0315_));
 sky130_fd_sc_hd__a21o_1 _0983_ (.A1(_0312_),
    .A2(_0313_),
    .B1(_0314_),
    .X(_0316_));
 sky130_fd_sc_hd__and3_1 _0984_ (.A(_0301_),
    .B(_0315_),
    .C(_0316_),
    .X(_0317_));
 sky130_fd_sc_hd__nand3_1 _0985_ (.A(_0301_),
    .B(_0315_),
    .C(_0316_),
    .Y(_0318_));
 sky130_fd_sc_hd__a21oi_1 _0986_ (.A1(_0315_),
    .A2(_0316_),
    .B1(_0301_),
    .Y(_0319_));
 sky130_fd_sc_hd__a211o_1 _0987_ (.A1(_0275_),
    .A2(_0278_),
    .B1(_0317_),
    .C1(_0319_),
    .X(_0320_));
 sky130_fd_sc_hd__inv_2 _0988_ (.A(_0320_),
    .Y(_0321_));
 sky130_fd_sc_hd__o211ai_2 _0989_ (.A1(_0317_),
    .A2(_0319_),
    .B1(_0275_),
    .C1(_0278_),
    .Y(_0322_));
 sky130_fd_sc_hd__and3_1 _0990_ (.A(_0253_),
    .B(_0320_),
    .C(_0322_),
    .X(_0323_));
 sky130_fd_sc_hd__nand3_1 _0991_ (.A(_0253_),
    .B(_0320_),
    .C(_0322_),
    .Y(_0324_));
 sky130_fd_sc_hd__a21o_1 _0992_ (.A1(_0320_),
    .A2(_0322_),
    .B1(_0253_),
    .X(_0325_));
 sky130_fd_sc_hd__nand3_1 _0993_ (.A(_0280_),
    .B(_0324_),
    .C(_0325_),
    .Y(_0326_));
 sky130_fd_sc_hd__a21o_1 _0994_ (.A1(_0324_),
    .A2(_0325_),
    .B1(_0280_),
    .X(_0327_));
 sky130_fd_sc_hd__nand3_1 _0995_ (.A(_0292_),
    .B(_0326_),
    .C(_0327_),
    .Y(_0328_));
 sky130_fd_sc_hd__a21o_1 _0996_ (.A1(_0326_),
    .A2(_0327_),
    .B1(_0292_),
    .X(_0329_));
 sky130_fd_sc_hd__and3_1 _0997_ (.A(\core_out[7] ),
    .B(_0328_),
    .C(_0329_),
    .X(_0330_));
 sky130_fd_sc_hd__a21oi_1 _0998_ (.A1(_0328_),
    .A2(_0329_),
    .B1(\core_out[7] ),
    .Y(_0331_));
 sky130_fd_sc_hd__a21oi_2 _0999_ (.A1(_0287_),
    .A2(_0289_),
    .B1(_0286_),
    .Y(_0332_));
 sky130_fd_sc_hd__or3_1 _1000_ (.A(_0330_),
    .B(_0331_),
    .C(_0332_),
    .X(_0333_));
 sky130_fd_sc_hd__o21ai_1 _1001_ (.A1(_0330_),
    .A2(_0331_),
    .B1(_0332_),
    .Y(_0334_));
 sky130_fd_sc_hd__a21bo_1 _1002_ (.A1(_0333_),
    .A2(_0334_),
    .B1_N(net100),
    .X(_0335_));
 sky130_fd_sc_hd__o211a_1 _1003_ (.A1(net100),
    .A2(\core_out[7] ),
    .B1(net112),
    .C1(_0335_),
    .X(_0056_));
 sky130_fd_sc_hd__a21bo_1 _1004_ (.A1(_0292_),
    .A2(_0327_),
    .B1_N(_0326_),
    .X(_0336_));
 sky130_fd_sc_hd__nor2_1 _1005_ (.A(_0294_),
    .B(_0297_),
    .Y(_0337_));
 sky130_fd_sc_hd__o21ai_1 _1006_ (.A1(_0257_),
    .A2(_0304_),
    .B1(_0302_),
    .Y(_0338_));
 sky130_fd_sc_hd__o2bb2a_1 _1007_ (.A1_N(net67),
    .A2_N(net90),
    .B1(net93),
    .B2(_0081_),
    .X(_0339_));
 sky130_fd_sc_hd__and4b_1 _1008_ (.A_N(net93),
    .B(net90),
    .C(net67),
    .D(\core_b[7] ),
    .X(_0340_));
 sky130_fd_sc_hd__or2_1 _1009_ (.A(_0339_),
    .B(_0340_),
    .X(_0341_));
 sky130_fd_sc_hd__nand2b_1 _1010_ (.A_N(_0341_),
    .B(_0338_),
    .Y(_0342_));
 sky130_fd_sc_hd__xnor2_1 _1011_ (.A(_0338_),
    .B(_0341_),
    .Y(_0343_));
 sky130_fd_sc_hd__nand2b_1 _1012_ (.A_N(_0337_),
    .B(_0343_),
    .Y(_0344_));
 sky130_fd_sc_hd__xnor2_1 _1013_ (.A(_0337_),
    .B(_0343_),
    .Y(_0345_));
 sky130_fd_sc_hd__nand2_1 _1014_ (.A(net68),
    .B(net88),
    .Y(_0346_));
 sky130_fd_sc_hd__and4_1 _1015_ (.A(net70),
    .B(net72),
    .C(net84),
    .D(net86),
    .X(_0347_));
 sky130_fd_sc_hd__a22o_1 _1016_ (.A1(net73),
    .A2(net84),
    .B1(net86),
    .B2(net70),
    .X(_0348_));
 sky130_fd_sc_hd__and2b_1 _1017_ (.A_N(_0347_),
    .B(_0348_),
    .X(_0349_));
 sky130_fd_sc_hd__xnor2_1 _1018_ (.A(_0346_),
    .B(_0349_),
    .Y(_0350_));
 sky130_fd_sc_hd__and3_1 _1019_ (.A(net77),
    .B(net79),
    .C(net81),
    .X(_0351_));
 sky130_fd_sc_hd__o21ai_1 _1020_ (.A1(net77),
    .A2(net79),
    .B1(net81),
    .Y(_0352_));
 sky130_fd_sc_hd__o21a_1 _1021_ (.A1(net77),
    .A2(net79),
    .B1(net81),
    .X(_0353_));
 sky130_fd_sc_hd__a2bb2o_1 _1022_ (.A1_N(_0351_),
    .A2_N(_0352_),
    .B1(net74),
    .B2(net83),
    .X(_0354_));
 sky130_fd_sc_hd__or4bb_1 _1023_ (.A(_0351_),
    .B(_0352_),
    .C_N(net74),
    .D_N(net83),
    .X(_0355_));
 sky130_fd_sc_hd__o21bai_1 _1024_ (.A1(_0263_),
    .A2(_0306_),
    .B1_N(_0307_),
    .Y(_0356_));
 sky130_fd_sc_hd__nand3_1 _1025_ (.A(_0354_),
    .B(_0355_),
    .C(_0356_),
    .Y(_0357_));
 sky130_fd_sc_hd__a21o_1 _1026_ (.A1(_0354_),
    .A2(_0355_),
    .B1(_0356_),
    .X(_0358_));
 sky130_fd_sc_hd__nand3_1 _1027_ (.A(_0350_),
    .B(_0357_),
    .C(_0358_),
    .Y(_0359_));
 sky130_fd_sc_hd__a21o_1 _1028_ (.A1(_0357_),
    .A2(_0358_),
    .B1(_0350_),
    .X(_0360_));
 sky130_fd_sc_hd__a21bo_1 _1029_ (.A1(_0305_),
    .A2(_0311_),
    .B1_N(_0310_),
    .X(_0361_));
 sky130_fd_sc_hd__nand3_2 _1030_ (.A(_0359_),
    .B(_0360_),
    .C(_0361_),
    .Y(_0362_));
 sky130_fd_sc_hd__a21o_1 _1031_ (.A1(_0359_),
    .A2(_0360_),
    .B1(_0361_),
    .X(_0363_));
 sky130_fd_sc_hd__and3_1 _1032_ (.A(_0345_),
    .B(_0362_),
    .C(_0363_),
    .X(_0364_));
 sky130_fd_sc_hd__nand3_1 _1033_ (.A(_0345_),
    .B(_0362_),
    .C(_0363_),
    .Y(_0365_));
 sky130_fd_sc_hd__a21oi_1 _1034_ (.A1(_0362_),
    .A2(_0363_),
    .B1(_0345_),
    .Y(_0366_));
 sky130_fd_sc_hd__a211oi_1 _1035_ (.A1(_0315_),
    .A2(_0318_),
    .B1(_0364_),
    .C1(_0366_),
    .Y(_0367_));
 sky130_fd_sc_hd__a211o_1 _1036_ (.A1(_0315_),
    .A2(_0318_),
    .B1(_0364_),
    .C1(_0366_),
    .X(_0368_));
 sky130_fd_sc_hd__o211a_1 _1037_ (.A1(_0364_),
    .A2(_0366_),
    .B1(_0315_),
    .C1(_0318_),
    .X(_0369_));
 sky130_fd_sc_hd__or3_2 _1038_ (.A(_0300_),
    .B(_0367_),
    .C(_0369_),
    .X(_0370_));
 sky130_fd_sc_hd__o21ai_1 _1039_ (.A1(_0367_),
    .A2(_0369_),
    .B1(_0300_),
    .Y(_0371_));
 sky130_fd_sc_hd__o211a_1 _1040_ (.A1(_0321_),
    .A2(_0323_),
    .B1(_0370_),
    .C1(_0371_),
    .X(_0372_));
 sky130_fd_sc_hd__a211o_1 _1041_ (.A1(_0370_),
    .A2(_0371_),
    .B1(_0321_),
    .C1(_0323_),
    .X(_0373_));
 sky130_fd_sc_hd__and2b_1 _1042_ (.A_N(_0372_),
    .B(_0373_),
    .X(_0374_));
 sky130_fd_sc_hd__xor2_1 _1043_ (.A(_0336_),
    .B(_0374_),
    .X(_0375_));
 sky130_fd_sc_hd__and2_1 _1044_ (.A(\core_out[8] ),
    .B(_0375_),
    .X(_0376_));
 sky130_fd_sc_hd__or2_1 _1045_ (.A(\core_out[8] ),
    .B(_0375_),
    .X(_0377_));
 sky130_fd_sc_hd__nand2b_1 _1046_ (.A_N(_0376_),
    .B(_0377_),
    .Y(_0378_));
 sky130_fd_sc_hd__o21bai_2 _1047_ (.A1(_0331_),
    .A2(_0332_),
    .B1_N(_0330_),
    .Y(_0379_));
 sky130_fd_sc_hd__xnor2_1 _1048_ (.A(_0378_),
    .B(_0379_),
    .Y(_0380_));
 sky130_fd_sc_hd__mux2_1 _1049_ (.A0(\core_out[8] ),
    .A1(_0380_),
    .S(net100),
    .X(_0381_));
 sky130_fd_sc_hd__and2_1 _1050_ (.A(net112),
    .B(_0381_),
    .X(_0057_));
 sky130_fd_sc_hd__a21oi_2 _1051_ (.A1(_0377_),
    .A2(_0379_),
    .B1(_0376_),
    .Y(_0382_));
 sky130_fd_sc_hd__a31o_1 _1052_ (.A1(net69),
    .A2(net88),
    .A3(_0348_),
    .B1(_0347_),
    .X(_0383_));
 sky130_fd_sc_hd__o2bb2a_1 _1053_ (.A1_N(net66),
    .A2_N(net88),
    .B1(net90),
    .B2(_0081_),
    .X(_0384_));
 sky130_fd_sc_hd__and4b_1 _1054_ (.A_N(net90),
    .B(net88),
    .C(net67),
    .D(\core_b[7] ),
    .X(_0385_));
 sky130_fd_sc_hd__nor2_1 _1055_ (.A(_0384_),
    .B(_0385_),
    .Y(_0386_));
 sky130_fd_sc_hd__and2_1 _1056_ (.A(_0383_),
    .B(_0386_),
    .X(_0387_));
 sky130_fd_sc_hd__xor2_1 _1057_ (.A(_0383_),
    .B(_0386_),
    .X(_0388_));
 sky130_fd_sc_hd__xor2_1 _1058_ (.A(_0340_),
    .B(_0388_),
    .X(_0389_));
 sky130_fd_sc_hd__nand2_1 _1059_ (.A(net68),
    .B(net86),
    .Y(_0390_));
 sky130_fd_sc_hd__and4_1 _1060_ (.A(net70),
    .B(net72),
    .C(net82),
    .D(net84),
    .X(_0391_));
 sky130_fd_sc_hd__a22o_1 _1061_ (.A1(net72),
    .A2(net82),
    .B1(net84),
    .B2(net70),
    .X(_0392_));
 sky130_fd_sc_hd__and2b_1 _1062_ (.A_N(_0391_),
    .B(_0392_),
    .X(_0393_));
 sky130_fd_sc_hd__xnor2_1 _1063_ (.A(_0390_),
    .B(_0393_),
    .Y(_0394_));
 sky130_fd_sc_hd__or3b_1 _1064_ (.A(_0351_),
    .B(_0352_),
    .C_N(net74),
    .X(_0395_));
 sky130_fd_sc_hd__a2bb2o_1 _1065_ (.A1_N(_0351_),
    .A2_N(_0352_),
    .B1(net74),
    .B2(net81),
    .X(_0396_));
 sky130_fd_sc_hd__a31o_1 _1066_ (.A1(net74),
    .A2(net83),
    .A3(_0353_),
    .B1(_0351_),
    .X(_0397_));
 sky130_fd_sc_hd__and2_1 _1067_ (.A(net74),
    .B(_0351_),
    .X(_0398_));
 sky130_fd_sc_hd__nand2_1 _1068_ (.A(net74),
    .B(_0351_),
    .Y(_0399_));
 sky130_fd_sc_hd__a21o_1 _1069_ (.A1(_0395_),
    .A2(_0396_),
    .B1(_0397_),
    .X(_0400_));
 sky130_fd_sc_hd__and3_1 _1070_ (.A(_0394_),
    .B(_0399_),
    .C(_0400_),
    .X(_0401_));
 sky130_fd_sc_hd__a21oi_1 _1071_ (.A1(_0399_),
    .A2(_0400_),
    .B1(_0394_),
    .Y(_0402_));
 sky130_fd_sc_hd__a21bo_1 _1072_ (.A1(_0350_),
    .A2(_0358_),
    .B1_N(_0357_),
    .X(_0403_));
 sky130_fd_sc_hd__or3b_1 _1073_ (.A(_0401_),
    .B(_0402_),
    .C_N(_0403_),
    .X(_0404_));
 sky130_fd_sc_hd__o21bai_1 _1074_ (.A1(_0401_),
    .A2(_0402_),
    .B1_N(_0403_),
    .Y(_0405_));
 sky130_fd_sc_hd__and3_1 _1075_ (.A(_0389_),
    .B(_0404_),
    .C(_0405_),
    .X(_0406_));
 sky130_fd_sc_hd__a21oi_1 _1076_ (.A1(_0404_),
    .A2(_0405_),
    .B1(_0389_),
    .Y(_0407_));
 sky130_fd_sc_hd__a211oi_2 _1077_ (.A1(_0362_),
    .A2(_0365_),
    .B1(_0406_),
    .C1(_0407_),
    .Y(_0408_));
 sky130_fd_sc_hd__o211a_1 _1078_ (.A1(_0406_),
    .A2(_0407_),
    .B1(_0362_),
    .C1(_0365_),
    .X(_0409_));
 sky130_fd_sc_hd__a211oi_2 _1079_ (.A1(_0342_),
    .A2(_0344_),
    .B1(_0408_),
    .C1(_0409_),
    .Y(_0410_));
 sky130_fd_sc_hd__o211a_1 _1080_ (.A1(_0408_),
    .A2(_0409_),
    .B1(_0342_),
    .C1(_0344_),
    .X(_0411_));
 sky130_fd_sc_hd__o211ai_2 _1081_ (.A1(_0410_),
    .A2(_0411_),
    .B1(_0368_),
    .C1(_0370_),
    .Y(_0412_));
 sky130_fd_sc_hd__a211o_1 _1082_ (.A1(_0368_),
    .A2(_0370_),
    .B1(_0410_),
    .C1(_0411_),
    .X(_0413_));
 sky130_fd_sc_hd__nand2_1 _1083_ (.A(_0412_),
    .B(_0413_),
    .Y(_0414_));
 sky130_fd_sc_hd__a21o_1 _1084_ (.A1(_0336_),
    .A2(_0374_),
    .B1(_0372_),
    .X(_0415_));
 sky130_fd_sc_hd__xnor2_1 _1085_ (.A(_0414_),
    .B(_0415_),
    .Y(_0416_));
 sky130_fd_sc_hd__nand2_1 _1086_ (.A(\core_out[9] ),
    .B(_0416_),
    .Y(_0417_));
 sky130_fd_sc_hd__inv_2 _1087_ (.A(_0417_),
    .Y(_0418_));
 sky130_fd_sc_hd__nor2_1 _1088_ (.A(\core_out[9] ),
    .B(_0416_),
    .Y(_0419_));
 sky130_fd_sc_hd__o21a_1 _1089_ (.A1(_0418_),
    .A2(_0419_),
    .B1(_0382_),
    .X(_0420_));
 sky130_fd_sc_hd__nor3_1 _1090_ (.A(_0382_),
    .B(_0418_),
    .C(_0419_),
    .Y(_0421_));
 sky130_fd_sc_hd__o21ai_1 _1091_ (.A1(_0420_),
    .A2(_0421_),
    .B1(net104),
    .Y(_0422_));
 sky130_fd_sc_hd__o211a_1 _1092_ (.A1(net99),
    .A2(\core_out[9] ),
    .B1(net112),
    .C1(_0422_),
    .X(_0058_));
 sky130_fd_sc_hd__a21oi_1 _1093_ (.A1(_0340_),
    .A2(_0388_),
    .B1(_0387_),
    .Y(_0423_));
 sky130_fd_sc_hd__a31o_1 _1094_ (.A1(net69),
    .A2(net86),
    .A3(_0392_),
    .B1(_0391_),
    .X(_0424_));
 sky130_fd_sc_hd__o2bb2a_1 _1095_ (.A1_N(net67),
    .A2_N(net86),
    .B1(net88),
    .B2(_0081_),
    .X(_0425_));
 sky130_fd_sc_hd__and4b_1 _1096_ (.A_N(net88),
    .B(net86),
    .C(net66),
    .D(net65),
    .X(_0426_));
 sky130_fd_sc_hd__nor2_1 _1097_ (.A(_0425_),
    .B(_0426_),
    .Y(_0427_));
 sky130_fd_sc_hd__and2_1 _1098_ (.A(_0424_),
    .B(_0427_),
    .X(_0428_));
 sky130_fd_sc_hd__xor2_1 _1099_ (.A(_0424_),
    .B(_0427_),
    .X(_0429_));
 sky130_fd_sc_hd__xnor2_1 _1100_ (.A(_0385_),
    .B(_0429_),
    .Y(_0430_));
 sky130_fd_sc_hd__a21oi_2 _1101_ (.A1(net74),
    .A2(net81),
    .B1(_0353_),
    .Y(_0431_));
 sky130_fd_sc_hd__nor2_2 _1102_ (.A(_0398_),
    .B(_0431_),
    .Y(_0432_));
 sky130_fd_sc_hd__a22o_1 _1103_ (.A1(net72),
    .A2(net80),
    .B1(net82),
    .B2(net70),
    .X(_0433_));
 sky130_fd_sc_hd__and3_1 _1104_ (.A(net70),
    .B(net72),
    .C(net80),
    .X(_0434_));
 sky130_fd_sc_hd__nand3_1 _1105_ (.A(net70),
    .B(net72),
    .C(net80),
    .Y(_0435_));
 sky130_fd_sc_hd__nand4_1 _1106_ (.A(net70),
    .B(net72),
    .C(net80),
    .D(net82),
    .Y(_0436_));
 sky130_fd_sc_hd__nand4_1 _1107_ (.A(net68),
    .B(net84),
    .C(_0433_),
    .D(_0436_),
    .Y(_0437_));
 sky130_fd_sc_hd__a22o_1 _1108_ (.A1(net68),
    .A2(net84),
    .B1(_0433_),
    .B2(_0436_),
    .X(_0438_));
 sky130_fd_sc_hd__nand2_1 _1109_ (.A(_0437_),
    .B(_0438_),
    .Y(_0439_));
 sky130_fd_sc_hd__xnor2_1 _1110_ (.A(_0432_),
    .B(_0439_),
    .Y(_0440_));
 sky130_fd_sc_hd__a21oi_1 _1111_ (.A1(_0394_),
    .A2(_0400_),
    .B1(_0398_),
    .Y(_0441_));
 sky130_fd_sc_hd__nand2b_1 _1112_ (.A_N(_0441_),
    .B(_0440_),
    .Y(_0442_));
 sky130_fd_sc_hd__and2b_1 _1113_ (.A_N(_0440_),
    .B(_0441_),
    .X(_0443_));
 sky130_fd_sc_hd__xnor2_1 _1114_ (.A(_0440_),
    .B(_0441_),
    .Y(_0444_));
 sky130_fd_sc_hd__xnor2_1 _1115_ (.A(_0430_),
    .B(_0444_),
    .Y(_0445_));
 sky130_fd_sc_hd__a21boi_1 _1116_ (.A1(_0389_),
    .A2(_0405_),
    .B1_N(_0404_),
    .Y(_0446_));
 sky130_fd_sc_hd__nand2b_1 _1117_ (.A_N(_0446_),
    .B(_0445_),
    .Y(_0447_));
 sky130_fd_sc_hd__xnor2_1 _1118_ (.A(_0445_),
    .B(_0446_),
    .Y(_0448_));
 sky130_fd_sc_hd__nand2b_1 _1119_ (.A_N(_0423_),
    .B(_0448_),
    .Y(_0449_));
 sky130_fd_sc_hd__xnor2_1 _1120_ (.A(_0423_),
    .B(_0448_),
    .Y(_0450_));
 sky130_fd_sc_hd__or3_1 _1121_ (.A(_0408_),
    .B(_0410_),
    .C(_0450_),
    .X(_0451_));
 sky130_fd_sc_hd__o21a_1 _1122_ (.A1(_0408_),
    .A2(_0410_),
    .B1(_0450_),
    .X(_0452_));
 sky130_fd_sc_hd__o21ai_1 _1123_ (.A1(_0408_),
    .A2(_0410_),
    .B1(_0450_),
    .Y(_0453_));
 sky130_fd_sc_hd__nand2_1 _1124_ (.A(_0451_),
    .B(_0453_),
    .Y(_0454_));
 sky130_fd_sc_hd__and4b_1 _1125_ (.A_N(_0372_),
    .B(_0373_),
    .C(_0412_),
    .D(_0413_),
    .X(_0455_));
 sky130_fd_sc_hd__a21bo_1 _1126_ (.A1(_0372_),
    .A2(_0412_),
    .B1_N(_0413_),
    .X(_0456_));
 sky130_fd_sc_hd__a21o_1 _1127_ (.A1(_0336_),
    .A2(_0455_),
    .B1(_0456_),
    .X(_0457_));
 sky130_fd_sc_hd__xnor2_1 _1128_ (.A(_0454_),
    .B(_0457_),
    .Y(_0458_));
 sky130_fd_sc_hd__nand2_1 _1129_ (.A(\core_out[10] ),
    .B(_0458_),
    .Y(_0459_));
 sky130_fd_sc_hd__xnor2_1 _1130_ (.A(\core_out[10] ),
    .B(_0458_),
    .Y(_0460_));
 sky130_fd_sc_hd__a21o_1 _1131_ (.A1(_0382_),
    .A2(_0417_),
    .B1(_0419_),
    .X(_0461_));
 sky130_fd_sc_hd__a211o_1 _1132_ (.A1(_0382_),
    .A2(_0417_),
    .B1(_0419_),
    .C1(_0460_),
    .X(_0462_));
 sky130_fd_sc_hd__xnor2_1 _1133_ (.A(_0460_),
    .B(_0461_),
    .Y(_0463_));
 sky130_fd_sc_hd__nand2_1 _1134_ (.A(net99),
    .B(_0463_),
    .Y(_0464_));
 sky130_fd_sc_hd__o211a_1 _1135_ (.A1(net99),
    .A2(\core_out[10] ),
    .B1(net114),
    .C1(_0464_),
    .X(_0059_));
 sky130_fd_sc_hd__a21o_1 _1136_ (.A1(_0385_),
    .A2(_0429_),
    .B1(_0428_),
    .X(_0465_));
 sky130_fd_sc_hd__nand2_1 _1137_ (.A(_0436_),
    .B(_0437_),
    .Y(_0466_));
 sky130_fd_sc_hd__and4b_1 _1138_ (.A_N(net86),
    .B(net84),
    .C(net66),
    .D(net65),
    .X(_0467_));
 sky130_fd_sc_hd__o2bb2a_1 _1139_ (.A1_N(net66),
    .A2_N(net84),
    .B1(net86),
    .B2(_0081_),
    .X(_0468_));
 sky130_fd_sc_hd__nor2_1 _1140_ (.A(_0467_),
    .B(_0468_),
    .Y(_0469_));
 sky130_fd_sc_hd__xor2_1 _1141_ (.A(_0466_),
    .B(_0469_),
    .X(_0470_));
 sky130_fd_sc_hd__nand2_1 _1142_ (.A(_0426_),
    .B(_0470_),
    .Y(_0471_));
 sky130_fd_sc_hd__xnor2_1 _1143_ (.A(_0426_),
    .B(_0470_),
    .Y(_0472_));
 sky130_fd_sc_hd__o21a_1 _1144_ (.A1(net70),
    .A2(net72),
    .B1(net80),
    .X(_0473_));
 sky130_fd_sc_hd__and2_1 _1145_ (.A(_0435_),
    .B(_0473_),
    .X(_0474_));
 sky130_fd_sc_hd__nand2_1 _1146_ (.A(net68),
    .B(net83),
    .Y(_0475_));
 sky130_fd_sc_hd__xor2_1 _1147_ (.A(_0474_),
    .B(_0475_),
    .X(_0476_));
 sky130_fd_sc_hd__xnor2_1 _1148_ (.A(_0432_),
    .B(_0476_),
    .Y(_0477_));
 sky130_fd_sc_hd__o21ai_1 _1149_ (.A1(_0431_),
    .A2(_0439_),
    .B1(_0399_),
    .Y(_0478_));
 sky130_fd_sc_hd__nand2_1 _1150_ (.A(_0477_),
    .B(_0478_),
    .Y(_0479_));
 sky130_fd_sc_hd__xnor2_1 _1151_ (.A(_0477_),
    .B(_0478_),
    .Y(_0480_));
 sky130_fd_sc_hd__or2_1 _1152_ (.A(_0472_),
    .B(_0480_),
    .X(_0481_));
 sky130_fd_sc_hd__xor2_1 _1153_ (.A(_0472_),
    .B(_0480_),
    .X(_0482_));
 sky130_fd_sc_hd__o21ai_1 _1154_ (.A1(_0430_),
    .A2(_0443_),
    .B1(_0442_),
    .Y(_0483_));
 sky130_fd_sc_hd__and2_1 _1155_ (.A(_0482_),
    .B(_0483_),
    .X(_0484_));
 sky130_fd_sc_hd__xor2_1 _1156_ (.A(_0482_),
    .B(_0483_),
    .X(_0485_));
 sky130_fd_sc_hd__xnor2_1 _1157_ (.A(_0465_),
    .B(_0485_),
    .Y(_0486_));
 sky130_fd_sc_hd__a21oi_1 _1158_ (.A1(_0447_),
    .A2(_0449_),
    .B1(_0486_),
    .Y(_0487_));
 sky130_fd_sc_hd__nand3_1 _1159_ (.A(_0447_),
    .B(_0449_),
    .C(_0486_),
    .Y(_0488_));
 sky130_fd_sc_hd__nand2b_1 _1160_ (.A_N(_0487_),
    .B(_0488_),
    .Y(_0489_));
 sky130_fd_sc_hd__a21o_1 _1161_ (.A1(_0451_),
    .A2(_0457_),
    .B1(_0452_),
    .X(_0490_));
 sky130_fd_sc_hd__xnor2_1 _1162_ (.A(_0489_),
    .B(_0490_),
    .Y(_0491_));
 sky130_fd_sc_hd__and2_1 _1163_ (.A(\core_out[11] ),
    .B(_0491_),
    .X(_0492_));
 sky130_fd_sc_hd__xnor2_1 _1164_ (.A(\core_out[11] ),
    .B(_0491_),
    .Y(_0493_));
 sky130_fd_sc_hd__a21oi_2 _1165_ (.A1(_0459_),
    .A2(_0462_),
    .B1(_0493_),
    .Y(_0494_));
 sky130_fd_sc_hd__and3_1 _1166_ (.A(_0459_),
    .B(_0462_),
    .C(_0493_),
    .X(_0495_));
 sky130_fd_sc_hd__o21ai_1 _1167_ (.A1(_0494_),
    .A2(_0495_),
    .B1(net98),
    .Y(_0496_));
 sky130_fd_sc_hd__o211a_1 _1168_ (.A1(net98),
    .A2(\core_out[11] ),
    .B1(net116),
    .C1(_0496_),
    .X(_0060_));
 sky130_fd_sc_hd__nor2_1 _1169_ (.A(_0492_),
    .B(_0494_),
    .Y(_0497_));
 sky130_fd_sc_hd__a21bo_1 _1170_ (.A1(_0466_),
    .A2(_0469_),
    .B1_N(_0471_),
    .X(_0498_));
 sky130_fd_sc_hd__a22oi_1 _1171_ (.A1(net68),
    .A2(net80),
    .B1(_0435_),
    .B2(_0473_),
    .Y(_0499_));
 sky130_fd_sc_hd__a21oi_2 _1172_ (.A1(net68),
    .A2(_0474_),
    .B1(_0499_),
    .Y(_0500_));
 sky130_fd_sc_hd__xor2_1 _1173_ (.A(_0432_),
    .B(_0500_),
    .X(_0501_));
 sky130_fd_sc_hd__o21ai_1 _1174_ (.A1(_0431_),
    .A2(_0476_),
    .B1(_0399_),
    .Y(_0502_));
 sky130_fd_sc_hd__and2_1 _1175_ (.A(_0501_),
    .B(_0502_),
    .X(_0503_));
 sky130_fd_sc_hd__xnor2_1 _1176_ (.A(_0501_),
    .B(_0502_),
    .Y(_0504_));
 sky130_fd_sc_hd__a31o_1 _1177_ (.A1(net68),
    .A2(net82),
    .A3(_0473_),
    .B1(_0434_),
    .X(_0505_));
 sky130_fd_sc_hd__o2bb2a_1 _1178_ (.A1_N(net66),
    .A2_N(net82),
    .B1(net84),
    .B2(_0081_),
    .X(_0506_));
 sky130_fd_sc_hd__and4b_1 _1179_ (.A_N(net85),
    .B(net82),
    .C(net66),
    .D(net65),
    .X(_0507_));
 sky130_fd_sc_hd__nor2_1 _1180_ (.A(_0506_),
    .B(_0507_),
    .Y(_0508_));
 sky130_fd_sc_hd__and2_1 _1181_ (.A(_0505_),
    .B(_0508_),
    .X(_0509_));
 sky130_fd_sc_hd__xor2_1 _1182_ (.A(_0505_),
    .B(_0508_),
    .X(_0510_));
 sky130_fd_sc_hd__xnor2_1 _1183_ (.A(_0467_),
    .B(_0510_),
    .Y(_0511_));
 sky130_fd_sc_hd__nor2_1 _1184_ (.A(_0504_),
    .B(_0511_),
    .Y(_0512_));
 sky130_fd_sc_hd__xnor2_1 _1185_ (.A(_0504_),
    .B(_0511_),
    .Y(_0513_));
 sky130_fd_sc_hd__a21oi_1 _1186_ (.A1(_0479_),
    .A2(_0481_),
    .B1(_0513_),
    .Y(_0514_));
 sky130_fd_sc_hd__and3_1 _1187_ (.A(_0479_),
    .B(_0481_),
    .C(_0513_),
    .X(_0515_));
 sky130_fd_sc_hd__nor2_1 _1188_ (.A(_0514_),
    .B(_0515_),
    .Y(_0516_));
 sky130_fd_sc_hd__xnor2_1 _1189_ (.A(_0498_),
    .B(_0516_),
    .Y(_0517_));
 sky130_fd_sc_hd__a21o_1 _1190_ (.A1(_0465_),
    .A2(_0485_),
    .B1(_0484_),
    .X(_0518_));
 sky130_fd_sc_hd__and2b_1 _1191_ (.A_N(_0517_),
    .B(_0518_),
    .X(_0519_));
 sky130_fd_sc_hd__xor2_1 _1192_ (.A(_0517_),
    .B(_0518_),
    .X(_0520_));
 sky130_fd_sc_hd__inv_2 _1193_ (.A(_0520_),
    .Y(_0521_));
 sky130_fd_sc_hd__a21o_1 _1194_ (.A1(_0451_),
    .A2(_0488_),
    .B1(_0487_),
    .X(_0522_));
 sky130_fd_sc_hd__a21o_1 _1195_ (.A1(_0452_),
    .A2(_0488_),
    .B1(_0487_),
    .X(_0523_));
 sky130_fd_sc_hd__a211o_1 _1196_ (.A1(_0336_),
    .A2(_0455_),
    .B1(_0456_),
    .C1(_0523_),
    .X(_0524_));
 sky130_fd_sc_hd__nand2_1 _1197_ (.A(_0522_),
    .B(_0524_),
    .Y(_0525_));
 sky130_fd_sc_hd__xnor2_1 _1198_ (.A(_0521_),
    .B(_0525_),
    .Y(_0526_));
 sky130_fd_sc_hd__and2_1 _1199_ (.A(\core_out[12] ),
    .B(_0526_),
    .X(_0527_));
 sky130_fd_sc_hd__xnor2_1 _1200_ (.A(\core_out[12] ),
    .B(_0526_),
    .Y(_0528_));
 sky130_fd_sc_hd__xnor2_1 _1201_ (.A(_0497_),
    .B(_0528_),
    .Y(_0529_));
 sky130_fd_sc_hd__nand2_1 _1202_ (.A(net98),
    .B(_0529_),
    .Y(_0530_));
 sky130_fd_sc_hd__o211a_1 _1203_ (.A1(net98),
    .A2(\core_out[12] ),
    .B1(net116),
    .C1(_0530_),
    .X(_0061_));
 sky130_fd_sc_hd__and2_1 _1204_ (.A(_0398_),
    .B(_0500_),
    .X(_0531_));
 sky130_fd_sc_hd__nor3_1 _1205_ (.A(_0398_),
    .B(_0432_),
    .C(_0500_),
    .Y(_0532_));
 sky130_fd_sc_hd__nor2_1 _1206_ (.A(_0531_),
    .B(_0532_),
    .Y(_0533_));
 sky130_fd_sc_hd__a21oi_2 _1207_ (.A1(net68),
    .A2(_0473_),
    .B1(_0434_),
    .Y(_0534_));
 sky130_fd_sc_hd__inv_2 _1208_ (.A(_0534_),
    .Y(_0535_));
 sky130_fd_sc_hd__o2bb2a_1 _1209_ (.A1_N(net66),
    .A2_N(net80),
    .B1(net82),
    .B2(_0081_),
    .X(_0536_));
 sky130_fd_sc_hd__and4b_1 _1210_ (.A_N(net82),
    .B(net80),
    .C(net66),
    .D(net65),
    .X(_0537_));
 sky130_fd_sc_hd__nor2_1 _1211_ (.A(_0536_),
    .B(_0537_),
    .Y(_0538_));
 sky130_fd_sc_hd__xnor2_1 _1212_ (.A(_0534_),
    .B(_0538_),
    .Y(_0539_));
 sky130_fd_sc_hd__and2_1 _1213_ (.A(_0507_),
    .B(_0539_),
    .X(_0540_));
 sky130_fd_sc_hd__xnor2_1 _1214_ (.A(_0507_),
    .B(_0539_),
    .Y(_0541_));
 sky130_fd_sc_hd__nor3_1 _1215_ (.A(_0531_),
    .B(_0532_),
    .C(_0541_),
    .Y(_0542_));
 sky130_fd_sc_hd__xnor2_1 _1216_ (.A(_0533_),
    .B(_0541_),
    .Y(_0543_));
 sky130_fd_sc_hd__o21ai_1 _1217_ (.A1(_0503_),
    .A2(_0512_),
    .B1(_0543_),
    .Y(_0544_));
 sky130_fd_sc_hd__or3_1 _1218_ (.A(_0503_),
    .B(_0512_),
    .C(_0543_),
    .X(_0545_));
 sky130_fd_sc_hd__nand2_1 _1219_ (.A(_0544_),
    .B(_0545_),
    .Y(_0546_));
 sky130_fd_sc_hd__a21oi_2 _1220_ (.A1(_0467_),
    .A2(_0510_),
    .B1(_0509_),
    .Y(_0547_));
 sky130_fd_sc_hd__xor2_2 _1221_ (.A(_0546_),
    .B(_0547_),
    .X(_0548_));
 sky130_fd_sc_hd__a21oi_1 _1222_ (.A1(_0498_),
    .A2(_0516_),
    .B1(_0514_),
    .Y(_0549_));
 sky130_fd_sc_hd__and2b_1 _1223_ (.A_N(_0549_),
    .B(_0548_),
    .X(_0550_));
 sky130_fd_sc_hd__xnor2_2 _1224_ (.A(_0548_),
    .B(_0549_),
    .Y(_0551_));
 sky130_fd_sc_hd__a31o_1 _1225_ (.A1(_0521_),
    .A2(_0522_),
    .A3(_0524_),
    .B1(_0519_),
    .X(_0552_));
 sky130_fd_sc_hd__and2b_1 _1226_ (.A_N(_0520_),
    .B(_0551_),
    .X(_0553_));
 sky130_fd_sc_hd__xor2_2 _1227_ (.A(_0551_),
    .B(_0552_),
    .X(_0554_));
 sky130_fd_sc_hd__xor2_1 _1228_ (.A(\core_out[13] ),
    .B(_0554_),
    .X(_0555_));
 sky130_fd_sc_hd__o21bai_1 _1229_ (.A1(_0497_),
    .A2(_0528_),
    .B1_N(_0527_),
    .Y(_0556_));
 sky130_fd_sc_hd__xnor2_1 _1230_ (.A(_0555_),
    .B(_0556_),
    .Y(_0557_));
 sky130_fd_sc_hd__nand2_1 _1231_ (.A(net98),
    .B(_0557_),
    .Y(_0558_));
 sky130_fd_sc_hd__o211a_1 _1232_ (.A1(net98),
    .A2(\core_out[13] ),
    .B1(net116),
    .C1(_0558_),
    .X(_0062_));
 sky130_fd_sc_hd__a21o_1 _1233_ (.A1(_0519_),
    .A2(_0551_),
    .B1(_0550_),
    .X(_0559_));
 sky130_fd_sc_hd__a31o_1 _1234_ (.A1(_0522_),
    .A2(_0524_),
    .A3(_0553_),
    .B1(_0559_),
    .X(_0560_));
 sky130_fd_sc_hd__a21o_1 _1235_ (.A1(_0535_),
    .A2(_0538_),
    .B1(_0540_),
    .X(_0561_));
 sky130_fd_sc_hd__mux2_1 _1236_ (.A0(net65),
    .A1(net66),
    .S(net80),
    .X(_0562_));
 sky130_fd_sc_hd__xor2_1 _1237_ (.A(_0534_),
    .B(_0562_),
    .X(_0563_));
 sky130_fd_sc_hd__a21oi_1 _1238_ (.A1(_0535_),
    .A2(_0562_),
    .B1(_0537_),
    .Y(_0564_));
 sky130_fd_sc_hd__mux2_1 _1239_ (.A0(_0563_),
    .A1(_0534_),
    .S(_0537_),
    .X(_0565_));
 sky130_fd_sc_hd__xor2_1 _1240_ (.A(_0533_),
    .B(_0565_),
    .X(_0566_));
 sky130_fd_sc_hd__o21ba_1 _1241_ (.A1(_0531_),
    .A2(_0542_),
    .B1_N(_0566_),
    .X(_0567_));
 sky130_fd_sc_hd__or3b_1 _1242_ (.A(_0531_),
    .B(_0542_),
    .C_N(_0566_),
    .X(_0568_));
 sky130_fd_sc_hd__and2b_1 _1243_ (.A_N(_0567_),
    .B(_0568_),
    .X(_0569_));
 sky130_fd_sc_hd__xnor2_1 _1244_ (.A(_0561_),
    .B(_0569_),
    .Y(_0570_));
 sky130_fd_sc_hd__o21a_1 _1245_ (.A1(_0546_),
    .A2(_0547_),
    .B1(_0544_),
    .X(_0571_));
 sky130_fd_sc_hd__xor2_1 _1246_ (.A(_0570_),
    .B(_0571_),
    .X(_0572_));
 sky130_fd_sc_hd__nand2_1 _1247_ (.A(_0560_),
    .B(_0572_),
    .Y(_0573_));
 sky130_fd_sc_hd__xor2_1 _1248_ (.A(_0560_),
    .B(_0572_),
    .X(_0574_));
 sky130_fd_sc_hd__nand2_1 _1249_ (.A(\core_out[14] ),
    .B(_0574_),
    .Y(_0575_));
 sky130_fd_sc_hd__inv_2 _1250_ (.A(_0575_),
    .Y(_0576_));
 sky130_fd_sc_hd__nor2_1 _1251_ (.A(\core_out[14] ),
    .B(_0574_),
    .Y(_0577_));
 sky130_fd_sc_hd__or2_1 _1252_ (.A(_0576_),
    .B(_0577_),
    .X(_0578_));
 sky130_fd_sc_hd__and2b_1 _1253_ (.A_N(_0528_),
    .B(_0555_),
    .X(_0579_));
 sky130_fd_sc_hd__o21ai_2 _1254_ (.A1(_0492_),
    .A2(_0494_),
    .B1(_0579_),
    .Y(_0580_));
 sky130_fd_sc_hd__a21o_1 _1255_ (.A1(\core_out[13] ),
    .A2(_0554_),
    .B1(_0527_),
    .X(_0581_));
 sky130_fd_sc_hd__o21ai_2 _1256_ (.A1(\core_out[13] ),
    .A2(_0554_),
    .B1(_0581_),
    .Y(_0582_));
 sky130_fd_sc_hd__a21oi_1 _1257_ (.A1(_0580_),
    .A2(_0582_),
    .B1(_0578_),
    .Y(_0583_));
 sky130_fd_sc_hd__and3_1 _1258_ (.A(_0578_),
    .B(_0580_),
    .C(_0582_),
    .X(_0584_));
 sky130_fd_sc_hd__o21ai_1 _1259_ (.A1(_0583_),
    .A2(_0584_),
    .B1(net98),
    .Y(_0585_));
 sky130_fd_sc_hd__o211a_1 _1260_ (.A1(net98),
    .A2(\core_out[14] ),
    .B1(net116),
    .C1(_0585_),
    .X(_0063_));
 sky130_fd_sc_hd__a21oi_1 _1261_ (.A1(_0561_),
    .A2(_0568_),
    .B1(_0567_),
    .Y(_0586_));
 sky130_fd_sc_hd__mux2_1 _1262_ (.A0(_0531_),
    .A1(_0532_),
    .S(_0563_),
    .X(_0587_));
 sky130_fd_sc_hd__a211o_1 _1263_ (.A1(_0533_),
    .A2(_0537_),
    .B1(_0564_),
    .C1(_0587_),
    .X(_0588_));
 sky130_fd_sc_hd__a21bo_1 _1264_ (.A1(_0564_),
    .A2(_0587_),
    .B1_N(_0588_),
    .X(_0589_));
 sky130_fd_sc_hd__xor2_1 _1265_ (.A(_0586_),
    .B(_0589_),
    .X(_0590_));
 sky130_fd_sc_hd__o211a_1 _1266_ (.A1(_0570_),
    .A2(_0571_),
    .B1(_0573_),
    .C1(_0590_),
    .X(_0591_));
 sky130_fd_sc_hd__nor2_1 _1267_ (.A(\core_out[15] ),
    .B(net55),
    .Y(_0592_));
 sky130_fd_sc_hd__and2_1 _1268_ (.A(\core_out[15] ),
    .B(net55),
    .X(_0593_));
 sky130_fd_sc_hd__or2_1 _1269_ (.A(_0592_),
    .B(_0593_),
    .X(_0594_));
 sky130_fd_sc_hd__o21a_1 _1270_ (.A1(_0576_),
    .A2(_0583_),
    .B1(_0594_),
    .X(_0595_));
 sky130_fd_sc_hd__o31ai_1 _1271_ (.A1(_0576_),
    .A2(_0583_),
    .A3(_0594_),
    .B1(net98),
    .Y(_0596_));
 sky130_fd_sc_hd__o221a_1 _1272_ (.A1(net98),
    .A2(\core_out[15] ),
    .B1(_0595_),
    .B2(_0596_),
    .C1(net113),
    .X(_0064_));
 sky130_fd_sc_hd__xnor2_1 _1273_ (.A(\core_out[16] ),
    .B(net55),
    .Y(_0597_));
 sky130_fd_sc_hd__o21ba_1 _1274_ (.A1(_0575_),
    .A2(_0592_),
    .B1_N(_0593_),
    .X(_0598_));
 sky130_fd_sc_hd__or2_1 _1275_ (.A(_0577_),
    .B(_0592_),
    .X(_0599_));
 sky130_fd_sc_hd__a31o_1 _1276_ (.A1(_0580_),
    .A2(_0582_),
    .A3(_0598_),
    .B1(_0599_),
    .X(_0600_));
 sky130_fd_sc_hd__or2_1 _1277_ (.A(_0597_),
    .B(_0600_),
    .X(_0601_));
 sky130_fd_sc_hd__nand2_1 _1278_ (.A(_0597_),
    .B(_0600_),
    .Y(_0602_));
 sky130_fd_sc_hd__a21bo_1 _1279_ (.A1(_0601_),
    .A2(_0602_),
    .B1_N(net99),
    .X(_0603_));
 sky130_fd_sc_hd__o211a_1 _1280_ (.A1(net99),
    .A2(\core_out[16] ),
    .B1(net113),
    .C1(_0603_),
    .X(_0065_));
 sky130_fd_sc_hd__xnor2_1 _1281_ (.A(\core_out[17] ),
    .B(net55),
    .Y(_0604_));
 sky130_fd_sc_hd__a21bo_1 _1282_ (.A1(\core_out[16] ),
    .A2(net55),
    .B1_N(_0601_),
    .X(_0605_));
 sky130_fd_sc_hd__a21boi_1 _1283_ (.A1(_0604_),
    .A2(_0605_),
    .B1_N(net101),
    .Y(_0606_));
 sky130_fd_sc_hd__o21ai_1 _1284_ (.A1(_0604_),
    .A2(_0605_),
    .B1(_0606_),
    .Y(_0607_));
 sky130_fd_sc_hd__o211a_1 _1285_ (.A1(net101),
    .A2(\core_out[17] ),
    .B1(net112),
    .C1(_0607_),
    .X(_0066_));
 sky130_fd_sc_hd__nand2_1 _1286_ (.A(\core_out[18] ),
    .B(net55),
    .Y(_0608_));
 sky130_fd_sc_hd__xnor2_1 _1287_ (.A(\core_out[18] ),
    .B(net55),
    .Y(_0609_));
 sky130_fd_sc_hd__o21ai_1 _1288_ (.A1(\core_out[17] ),
    .A2(\core_out[16] ),
    .B1(net55),
    .Y(_0610_));
 sky130_fd_sc_hd__a2bb2o_1 _1289_ (.A1_N(\core_out[17] ),
    .A2_N(net55),
    .B1(_0601_),
    .B2(_0610_),
    .X(_0611_));
 sky130_fd_sc_hd__xnor2_1 _1290_ (.A(_0609_),
    .B(_0611_),
    .Y(_0612_));
 sky130_fd_sc_hd__nand2_1 _1291_ (.A(net101),
    .B(_0612_),
    .Y(_0613_));
 sky130_fd_sc_hd__o211a_1 _1292_ (.A1(net101),
    .A2(\core_out[18] ),
    .B1(net113),
    .C1(_0613_),
    .X(_0067_));
 sky130_fd_sc_hd__xnor2_1 _1293_ (.A(\core_out[19] ),
    .B(net53),
    .Y(_0614_));
 sky130_fd_sc_hd__o21a_1 _1294_ (.A1(_0609_),
    .A2(_0611_),
    .B1(_0608_),
    .X(_0615_));
 sky130_fd_sc_hd__xnor2_1 _1295_ (.A(_0614_),
    .B(_0615_),
    .Y(_0616_));
 sky130_fd_sc_hd__nand2_1 _1296_ (.A(net101),
    .B(_0616_),
    .Y(_0617_));
 sky130_fd_sc_hd__o211a_1 _1297_ (.A1(net101),
    .A2(\core_out[19] ),
    .B1(net114),
    .C1(_0617_),
    .X(_0068_));
 sky130_fd_sc_hd__xnor2_1 _1298_ (.A(\core_out[20] ),
    .B(net54),
    .Y(_0618_));
 sky130_fd_sc_hd__or4_1 _1299_ (.A(_0597_),
    .B(_0604_),
    .C(_0609_),
    .D(_0614_),
    .X(_0619_));
 sky130_fd_sc_hd__a311o_1 _1300_ (.A1(_0580_),
    .A2(_0582_),
    .A3(_0598_),
    .B1(_0599_),
    .C1(_0619_),
    .X(_0620_));
 sky130_fd_sc_hd__o41a_1 _1301_ (.A1(\core_out[19] ),
    .A2(\core_out[18] ),
    .A3(\core_out[17] ),
    .A4(\core_out[16] ),
    .B1(net55),
    .X(_0621_));
 sky130_fd_sc_hd__inv_2 _1302_ (.A(_0621_),
    .Y(_0622_));
 sky130_fd_sc_hd__and2_1 _1303_ (.A(_0620_),
    .B(_0622_),
    .X(_0623_));
 sky130_fd_sc_hd__or2_1 _1304_ (.A(_0618_),
    .B(_0623_),
    .X(_0624_));
 sky130_fd_sc_hd__nand2_1 _1305_ (.A(_0618_),
    .B(_0623_),
    .Y(_0625_));
 sky130_fd_sc_hd__a21bo_1 _1306_ (.A1(_0624_),
    .A2(_0625_),
    .B1_N(net101),
    .X(_0626_));
 sky130_fd_sc_hd__o211a_1 _1307_ (.A1(net101),
    .A2(\core_out[20] ),
    .B1(net114),
    .C1(_0626_),
    .X(_0069_));
 sky130_fd_sc_hd__xnor2_1 _1308_ (.A(\core_out[21] ),
    .B(net53),
    .Y(_0627_));
 sky130_fd_sc_hd__a21bo_1 _1309_ (.A1(\core_out[20] ),
    .A2(net53),
    .B1_N(_0624_),
    .X(_0628_));
 sky130_fd_sc_hd__a21boi_1 _1310_ (.A1(_0627_),
    .A2(_0628_),
    .B1_N(net102),
    .Y(_0629_));
 sky130_fd_sc_hd__o21ai_1 _1311_ (.A1(_0627_),
    .A2(_0628_),
    .B1(_0629_),
    .Y(_0630_));
 sky130_fd_sc_hd__o211a_1 _1312_ (.A1(net102),
    .A2(\core_out[21] ),
    .B1(net114),
    .C1(_0630_),
    .X(_0070_));
 sky130_fd_sc_hd__or2_1 _1313_ (.A(\core_out[22] ),
    .B(net53),
    .X(_0631_));
 sky130_fd_sc_hd__nand2_1 _1314_ (.A(\core_out[22] ),
    .B(net54),
    .Y(_0632_));
 sky130_fd_sc_hd__nand2_1 _1315_ (.A(_0631_),
    .B(_0632_),
    .Y(_0633_));
 sky130_fd_sc_hd__o21ai_1 _1316_ (.A1(\core_out[21] ),
    .A2(\core_out[20] ),
    .B1(net54),
    .Y(_0634_));
 sky130_fd_sc_hd__a2bb2o_1 _1317_ (.A1_N(\core_out[21] ),
    .A2_N(net54),
    .B1(_0624_),
    .B2(_0634_),
    .X(_0635_));
 sky130_fd_sc_hd__xnor2_1 _1318_ (.A(_0633_),
    .B(_0635_),
    .Y(_0636_));
 sky130_fd_sc_hd__nand2_1 _1319_ (.A(net102),
    .B(_0636_),
    .Y(_0637_));
 sky130_fd_sc_hd__o211a_1 _1320_ (.A1(net102),
    .A2(\core_out[22] ),
    .B1(net114),
    .C1(_0637_),
    .X(_0071_));
 sky130_fd_sc_hd__xnor2_1 _1321_ (.A(\core_out[23] ),
    .B(net54),
    .Y(_0638_));
 sky130_fd_sc_hd__o21a_1 _1322_ (.A1(_0633_),
    .A2(_0635_),
    .B1(_0632_),
    .X(_0639_));
 sky130_fd_sc_hd__xnor2_1 _1323_ (.A(_0638_),
    .B(_0639_),
    .Y(_0640_));
 sky130_fd_sc_hd__nor2_1 _1324_ (.A(net102),
    .B(\core_out[23] ),
    .Y(_0641_));
 sky130_fd_sc_hd__a211oi_1 _1325_ (.A1(net102),
    .A2(_0640_),
    .B1(_0641_),
    .C1(net9),
    .Y(_0072_));
 sky130_fd_sc_hd__xnor2_1 _1326_ (.A(\core_out[24] ),
    .B(net53),
    .Y(_0642_));
 sky130_fd_sc_hd__o41ai_2 _1327_ (.A1(\core_out[23] ),
    .A2(\core_out[22] ),
    .A3(\core_out[21] ),
    .A4(\core_out[20] ),
    .B1(net53),
    .Y(_0643_));
 sky130_fd_sc_hd__or4_1 _1328_ (.A(_0618_),
    .B(_0627_),
    .C(_0633_),
    .D(_0638_),
    .X(_0644_));
 sky130_fd_sc_hd__a21o_1 _1329_ (.A1(_0620_),
    .A2(_0622_),
    .B1(_0644_),
    .X(_0645_));
 sky130_fd_sc_hd__a21o_1 _1330_ (.A1(_0643_),
    .A2(_0645_),
    .B1(_0642_),
    .X(_0646_));
 sky130_fd_sc_hd__nand3_1 _1331_ (.A(_0642_),
    .B(_0643_),
    .C(_0645_),
    .Y(_0647_));
 sky130_fd_sc_hd__a21bo_1 _1332_ (.A1(_0646_),
    .A2(_0647_),
    .B1_N(net101),
    .X(_0648_));
 sky130_fd_sc_hd__o211a_1 _1333_ (.A1(net101),
    .A2(\core_out[24] ),
    .B1(net112),
    .C1(_0648_),
    .X(_0073_));
 sky130_fd_sc_hd__xnor2_1 _1334_ (.A(\core_out[25] ),
    .B(net53),
    .Y(_0649_));
 sky130_fd_sc_hd__a21boi_1 _1335_ (.A1(\core_out[24] ),
    .A2(net53),
    .B1_N(_0646_),
    .Y(_0650_));
 sky130_fd_sc_hd__xnor2_1 _1336_ (.A(_0649_),
    .B(_0650_),
    .Y(_0651_));
 sky130_fd_sc_hd__nor2_1 _1337_ (.A(net103),
    .B(\core_out[25] ),
    .Y(_0652_));
 sky130_fd_sc_hd__a211oi_1 _1338_ (.A1(net100),
    .A2(_0651_),
    .B1(_0652_),
    .C1(net9),
    .Y(_0074_));
 sky130_fd_sc_hd__or2_1 _1339_ (.A(\core_out[26] ),
    .B(net56),
    .X(_0653_));
 sky130_fd_sc_hd__nand2_1 _1340_ (.A(\core_out[26] ),
    .B(net52),
    .Y(_0654_));
 sky130_fd_sc_hd__nand2_1 _1341_ (.A(_0653_),
    .B(_0654_),
    .Y(_0655_));
 sky130_fd_sc_hd__o21ai_1 _1342_ (.A1(\core_out[25] ),
    .A2(\core_out[24] ),
    .B1(net53),
    .Y(_0656_));
 sky130_fd_sc_hd__a2bb2o_1 _1343_ (.A1_N(\core_out[25] ),
    .A2_N(net53),
    .B1(_0646_),
    .B2(_0656_),
    .X(_0657_));
 sky130_fd_sc_hd__xnor2_1 _1344_ (.A(_0655_),
    .B(_0657_),
    .Y(_0658_));
 sky130_fd_sc_hd__nand2_1 _1345_ (.A(net100),
    .B(_0658_),
    .Y(_0659_));
 sky130_fd_sc_hd__o211a_1 _1346_ (.A1(net100),
    .A2(\core_out[26] ),
    .B1(net112),
    .C1(_0659_),
    .X(_0075_));
 sky130_fd_sc_hd__xnor2_1 _1347_ (.A(\core_out[27] ),
    .B(net52),
    .Y(_0660_));
 sky130_fd_sc_hd__o21ai_1 _1348_ (.A1(_0655_),
    .A2(_0657_),
    .B1(_0654_),
    .Y(_0661_));
 sky130_fd_sc_hd__xor2_1 _1349_ (.A(_0660_),
    .B(_0661_),
    .X(_0662_));
 sky130_fd_sc_hd__nor2_1 _1350_ (.A(net100),
    .B(\core_out[27] ),
    .Y(_0663_));
 sky130_fd_sc_hd__a211oi_1 _1351_ (.A1(net100),
    .A2(_0662_),
    .B1(_0663_),
    .C1(net9),
    .Y(_0076_));
 sky130_fd_sc_hd__or4_1 _1352_ (.A(_0642_),
    .B(_0649_),
    .C(_0655_),
    .D(_0660_),
    .X(_0664_));
 sky130_fd_sc_hd__a21oi_1 _1353_ (.A1(_0643_),
    .A2(_0645_),
    .B1(_0664_),
    .Y(_0665_));
 sky130_fd_sc_hd__o41a_1 _1354_ (.A1(\core_out[27] ),
    .A2(\core_out[26] ),
    .A3(\core_out[25] ),
    .A4(\core_out[24] ),
    .B1(net52),
    .X(_0666_));
 sky130_fd_sc_hd__nor2_1 _1355_ (.A(_0665_),
    .B(_0666_),
    .Y(_0667_));
 sky130_fd_sc_hd__and2_1 _1356_ (.A(\core_out[28] ),
    .B(net52),
    .X(_0668_));
 sky130_fd_sc_hd__nor2_1 _1357_ (.A(\core_out[28] ),
    .B(net52),
    .Y(_0669_));
 sky130_fd_sc_hd__or2_1 _1358_ (.A(_0668_),
    .B(_0669_),
    .X(_0670_));
 sky130_fd_sc_hd__inv_2 _1359_ (.A(_0670_),
    .Y(_0671_));
 sky130_fd_sc_hd__xnor2_1 _1360_ (.A(_0667_),
    .B(_0670_),
    .Y(_0672_));
 sky130_fd_sc_hd__nand2_1 _1361_ (.A(net100),
    .B(_0672_),
    .Y(_0673_));
 sky130_fd_sc_hd__o211a_1 _1362_ (.A1(net100),
    .A2(\core_out[28] ),
    .B1(net112),
    .C1(_0673_),
    .X(_0077_));
 sky130_fd_sc_hd__xor2_1 _1363_ (.A(\core_out[29] ),
    .B(net52),
    .X(_0674_));
 sky130_fd_sc_hd__o21ba_1 _1364_ (.A1(_0667_),
    .A2(_0670_),
    .B1_N(_0668_),
    .X(_0675_));
 sky130_fd_sc_hd__xor2_1 _1365_ (.A(_0674_),
    .B(_0675_),
    .X(_0676_));
 sky130_fd_sc_hd__nor2_1 _1366_ (.A(net103),
    .B(\core_out[29] ),
    .Y(_0677_));
 sky130_fd_sc_hd__a211oi_1 _1367_ (.A1(net96),
    .A2(_0676_),
    .B1(_0677_),
    .C1(net9),
    .Y(_0078_));
 sky130_fd_sc_hd__nor2_1 _1368_ (.A(\core_out[30] ),
    .B(net52),
    .Y(_0678_));
 sky130_fd_sc_hd__and2_1 _1369_ (.A(\core_out[30] ),
    .B(net52),
    .X(_0679_));
 sky130_fd_sc_hd__nor2_1 _1370_ (.A(_0678_),
    .B(_0679_),
    .Y(_0680_));
 sky130_fd_sc_hd__inv_2 _1371_ (.A(_0680_),
    .Y(_0681_));
 sky130_fd_sc_hd__o211ai_1 _1372_ (.A1(_0665_),
    .A2(_0666_),
    .B1(_0671_),
    .C1(_0674_),
    .Y(_0682_));
 sky130_fd_sc_hd__o21ai_1 _1373_ (.A1(\core_out[29] ),
    .A2(\core_out[28] ),
    .B1(net52),
    .Y(_0683_));
 sky130_fd_sc_hd__a21oi_1 _1374_ (.A1(_0682_),
    .A2(_0683_),
    .B1(_0681_),
    .Y(_0684_));
 sky130_fd_sc_hd__and3_1 _1375_ (.A(_0681_),
    .B(_0682_),
    .C(_0683_),
    .X(_0685_));
 sky130_fd_sc_hd__or2_1 _1376_ (.A(_0684_),
    .B(_0685_),
    .X(_0686_));
 sky130_fd_sc_hd__nor2_1 _1377_ (.A(net96),
    .B(\core_out[30] ),
    .Y(_0687_));
 sky130_fd_sc_hd__a211oi_1 _1378_ (.A1(net96),
    .A2(_0686_),
    .B1(_0687_),
    .C1(net9),
    .Y(_0079_));
 sky130_fd_sc_hd__xnor2_1 _1379_ (.A(\core_out[31] ),
    .B(net52),
    .Y(_0688_));
 sky130_fd_sc_hd__o21ai_1 _1380_ (.A1(_0679_),
    .A2(_0684_),
    .B1(_0688_),
    .Y(_0689_));
 sky130_fd_sc_hd__o31a_1 _1381_ (.A1(_0679_),
    .A2(_0684_),
    .A3(_0688_),
    .B1(net97),
    .X(_0690_));
 sky130_fd_sc_hd__nor2_1 _1382_ (.A(\core_out[31] ),
    .B(net96),
    .Y(_0691_));
 sky130_fd_sc_hd__a211oi_1 _1383_ (.A1(_0689_),
    .A2(_0690_),
    .B1(_0691_),
    .C1(net9),
    .Y(_0080_));
 sky130_fd_sc_hd__dfxtp_1 _1384_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0000_),
    .Q(core_valid));
 sky130_fd_sc_hd__dfxtp_1 _1385_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0001_),
    .Q(\core_a[0] ));
 sky130_fd_sc_hd__dfxtp_1 _1386_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0002_),
    .Q(\core_a[1] ));
 sky130_fd_sc_hd__dfxtp_1 _1387_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0003_),
    .Q(\core_a[2] ));
 sky130_fd_sc_hd__dfxtp_1 _1388_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0004_),
    .Q(\core_a[3] ));
 sky130_fd_sc_hd__dfxtp_1 _1389_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0005_),
    .Q(\core_a[4] ));
 sky130_fd_sc_hd__dfxtp_1 _1390_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0006_),
    .Q(\core_a[5] ));
 sky130_fd_sc_hd__dfxtp_1 _1391_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0007_),
    .Q(\core_a[6] ));
 sky130_fd_sc_hd__dfxtp_1 _1392_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0008_),
    .Q(\core_a[7] ));
 sky130_fd_sc_hd__dfxtp_1 _1393_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0009_),
    .Q(net20));
 sky130_fd_sc_hd__dfxtp_1 _1394_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0010_),
    .Q(net31));
 sky130_fd_sc_hd__dfxtp_1 _1395_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0011_),
    .Q(net42));
 sky130_fd_sc_hd__dfxtp_1 _1396_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0012_),
    .Q(net45));
 sky130_fd_sc_hd__dfxtp_1 _1397_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0013_),
    .Q(net46));
 sky130_fd_sc_hd__dfxtp_1 _1398_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0014_),
    .Q(net47));
 sky130_fd_sc_hd__dfxtp_1 _1399_ (.CLK(clknet_3_3__leaf_clk),
    .D(_0015_),
    .Q(net48));
 sky130_fd_sc_hd__dfxtp_1 _1400_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0016_),
    .Q(net49));
 sky130_fd_sc_hd__dfxtp_1 _1401_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0017_),
    .Q(net50));
 sky130_fd_sc_hd__dfxtp_1 _1402_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0018_),
    .Q(net51));
 sky130_fd_sc_hd__dfxtp_1 _1403_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0019_),
    .Q(net21));
 sky130_fd_sc_hd__dfxtp_1 _1404_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0020_),
    .Q(net22));
 sky130_fd_sc_hd__dfxtp_1 _1405_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0021_),
    .Q(net23));
 sky130_fd_sc_hd__dfxtp_1 _1406_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0022_),
    .Q(net24));
 sky130_fd_sc_hd__dfxtp_1 _1407_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0023_),
    .Q(net25));
 sky130_fd_sc_hd__dfxtp_1 _1408_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0024_),
    .Q(net26));
 sky130_fd_sc_hd__dfxtp_1 _1409_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0025_),
    .Q(net27));
 sky130_fd_sc_hd__dfxtp_1 _1410_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0026_),
    .Q(net28));
 sky130_fd_sc_hd__dfxtp_1 _1411_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0027_),
    .Q(net29));
 sky130_fd_sc_hd__dfxtp_1 _1412_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0028_),
    .Q(net30));
 sky130_fd_sc_hd__dfxtp_1 _1413_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0029_),
    .Q(net32));
 sky130_fd_sc_hd__dfxtp_1 _1414_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0030_),
    .Q(net33));
 sky130_fd_sc_hd__dfxtp_1 _1415_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0031_),
    .Q(net34));
 sky130_fd_sc_hd__dfxtp_1 _1416_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0032_),
    .Q(net35));
 sky130_fd_sc_hd__dfxtp_1 _1417_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0033_),
    .Q(net36));
 sky130_fd_sc_hd__dfxtp_1 _1418_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0034_),
    .Q(net37));
 sky130_fd_sc_hd__dfxtp_1 _1419_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0035_),
    .Q(net38));
 sky130_fd_sc_hd__dfxtp_1 _1420_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0036_),
    .Q(net39));
 sky130_fd_sc_hd__dfxtp_1 _1421_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0037_),
    .Q(net40));
 sky130_fd_sc_hd__dfxtp_1 _1422_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0038_),
    .Q(net41));
 sky130_fd_sc_hd__dfxtp_1 _1423_ (.CLK(clknet_3_3__leaf_clk),
    .D(_0039_),
    .Q(net43));
 sky130_fd_sc_hd__dfxtp_1 _1424_ (.CLK(clknet_3_3__leaf_clk),
    .D(_0040_),
    .Q(net44));
 sky130_fd_sc_hd__dfxtp_1 _1425_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0041_),
    .Q(\core_b[0] ));
 sky130_fd_sc_hd__dfxtp_1 _1426_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0042_),
    .Q(\core_b[1] ));
 sky130_fd_sc_hd__dfxtp_1 _1427_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0043_),
    .Q(\core_b[2] ));
 sky130_fd_sc_hd__dfxtp_1 _1428_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0044_),
    .Q(\core_b[3] ));
 sky130_fd_sc_hd__dfxtp_1 _1429_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0045_),
    .Q(\core_b[4] ));
 sky130_fd_sc_hd__dfxtp_1 _1430_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0046_),
    .Q(\core_b[5] ));
 sky130_fd_sc_hd__dfxtp_1 _1431_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0047_),
    .Q(\core_b[6] ));
 sky130_fd_sc_hd__dfxtp_1 _1432_ (.CLK(clknet_3_1__leaf_clk),
    .D(_0048_),
    .Q(\core_b[7] ));
 sky130_fd_sc_hd__dfxtp_1 _1433_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0049_),
    .Q(\core_out[0] ));
 sky130_fd_sc_hd__dfxtp_1 _1434_ (.CLK(clknet_3_0__leaf_clk),
    .D(_0050_),
    .Q(\core_out[1] ));
 sky130_fd_sc_hd__dfxtp_1 _1435_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0051_),
    .Q(\core_out[2] ));
 sky130_fd_sc_hd__dfxtp_1 _1436_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0052_),
    .Q(\core_out[3] ));
 sky130_fd_sc_hd__dfxtp_1 _1437_ (.CLK(clknet_3_2__leaf_clk),
    .D(_0053_),
    .Q(\core_out[4] ));
 sky130_fd_sc_hd__dfxtp_1 _1438_ (.CLK(clknet_3_3__leaf_clk),
    .D(_0054_),
    .Q(\core_out[5] ));
 sky130_fd_sc_hd__dfxtp_1 _1439_ (.CLK(clknet_3_3__leaf_clk),
    .D(_0055_),
    .Q(\core_out[6] ));
 sky130_fd_sc_hd__dfxtp_1 _1440_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0056_),
    .Q(\core_out[7] ));
 sky130_fd_sc_hd__dfxtp_1 _1441_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0057_),
    .Q(\core_out[8] ));
 sky130_fd_sc_hd__dfxtp_1 _1442_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0058_),
    .Q(\core_out[9] ));
 sky130_fd_sc_hd__dfxtp_1 _1443_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0059_),
    .Q(\core_out[10] ));
 sky130_fd_sc_hd__dfxtp_1 _1444_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0060_),
    .Q(\core_out[11] ));
 sky130_fd_sc_hd__dfxtp_1 _1445_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0061_),
    .Q(\core_out[12] ));
 sky130_fd_sc_hd__dfxtp_1 _1446_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0062_),
    .Q(\core_out[13] ));
 sky130_fd_sc_hd__dfxtp_1 _1447_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0063_),
    .Q(\core_out[14] ));
 sky130_fd_sc_hd__dfxtp_1 _1448_ (.CLK(clknet_3_5__leaf_clk),
    .D(_0064_),
    .Q(\core_out[15] ));
 sky130_fd_sc_hd__dfxtp_1 _1449_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0065_),
    .Q(\core_out[16] ));
 sky130_fd_sc_hd__dfxtp_1 _1450_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0066_),
    .Q(\core_out[17] ));
 sky130_fd_sc_hd__dfxtp_1 _1451_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0067_),
    .Q(\core_out[18] ));
 sky130_fd_sc_hd__dfxtp_1 _1452_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0068_),
    .Q(\core_out[19] ));
 sky130_fd_sc_hd__dfxtp_2 _1453_ (.CLK(clknet_3_4__leaf_clk),
    .D(_0069_),
    .Q(\core_out[20] ));
 sky130_fd_sc_hd__dfxtp_1 _1454_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0070_),
    .Q(\core_out[21] ));
 sky130_fd_sc_hd__dfxtp_1 _1455_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0071_),
    .Q(\core_out[22] ));
 sky130_fd_sc_hd__dfxtp_1 _1456_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0072_),
    .Q(\core_out[23] ));
 sky130_fd_sc_hd__dfxtp_2 _1457_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0073_),
    .Q(\core_out[24] ));
 sky130_fd_sc_hd__dfxtp_1 _1458_ (.CLK(clknet_3_7__leaf_clk),
    .D(_0074_),
    .Q(\core_out[25] ));
 sky130_fd_sc_hd__dfxtp_1 _1459_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0075_),
    .Q(\core_out[26] ));
 sky130_fd_sc_hd__dfxtp_1 _1460_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0076_),
    .Q(\core_out[27] ));
 sky130_fd_sc_hd__dfxtp_1 _1461_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0077_),
    .Q(\core_out[28] ));
 sky130_fd_sc_hd__dfxtp_1 _1462_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0078_),
    .Q(\core_out[29] ));
 sky130_fd_sc_hd__dfxtp_1 _1463_ (.CLK(clknet_3_6__leaf_clk),
    .D(_0079_),
    .Q(\core_out[30] ));
 sky130_fd_sc_hd__dfxtp_1 _1464_ (.CLK(clknet_3_3__leaf_clk),
    .D(_0080_),
    .Q(\core_out[31] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Right_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Right_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Right_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Right_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Right_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Right_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Right_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Right_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Right_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Right_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Right_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Right_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Right_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Right_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Right_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Right_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Right_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Right_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_80 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_82 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_83 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_84 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_85 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_86 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_87 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_88 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_89 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_90 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_91 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_92 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_93 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_94 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_95 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_96 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_97 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_98 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_99 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_100 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_101 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_102 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_103 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_104 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_105 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_106 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_107 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_108 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_109 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_110 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_111 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Left_112 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_48_Left_113 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_49_Left_114 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_50_Left_115 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_51_Left_116 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_52_Left_117 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_53_Left_118 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_54_Left_119 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_55_Left_120 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_56_Left_121 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_57_Left_122 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_58_Left_123 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_59_Left_124 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_60_Left_125 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_61_Left_126 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_62_Left_127 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_63_Left_128 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_64_Left_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_338 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_339 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_340 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_341 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_342 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_343 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_344 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_345 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_346 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_347 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_348 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_349 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_350 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_351 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_352 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_353 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_354 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_355 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_356 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_357 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_358 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_359 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_360 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_361 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_362 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_363 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_364 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_365 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_366 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_367 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_368 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_369 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_370 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_371 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_372 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_373 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_374 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_375 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_376 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_377 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_378 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_379 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_380 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_381 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_382 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_383 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_384 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_385 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_386 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_387 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_388 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_389 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_390 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_391 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_392 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_393 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_394 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_395 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_396 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_397 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_398 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_399 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_400 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_401 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_402 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_403 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_404 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_405 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_406 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_407 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_408 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_409 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_410 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_411 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_412 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_413 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_414 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_415 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_416 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_417 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_418 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_419 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_420 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_421 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_422 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_423 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_424 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_425 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_426 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_427 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_428 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_429 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_430 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_431 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_432 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_433 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_434 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_435 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_436 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_437 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_438 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_439 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_440 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_441 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_442 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_443 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_444 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_445 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_446 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_447 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_448 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_449 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_450 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_451 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_452 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_453 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_454 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_455 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_456 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_457 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_458 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_459 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_460 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_461 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_462 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_463 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_464 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_465 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_466 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_467 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_468 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_469 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_470 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_471 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_472 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_473 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_474 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_475 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_476 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_477 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_478 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_48_479 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_480 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_481 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_482 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_483 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_484 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_485 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_49_486 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_487 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_488 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_489 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_490 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_491 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_492 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_50_493 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_494 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_495 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_496 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_497 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_498 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_499 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_51_500 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_501 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_502 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_503 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_504 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_505 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_506 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_52_507 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_508 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_509 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_510 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_511 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_512 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_513 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_53_514 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_515 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_516 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_517 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_518 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_519 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_520 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_54_521 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_522 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_523 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_524 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_525 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_526 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_527 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_55_528 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_529 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_530 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_531 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_532 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_533 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_534 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_56_535 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_536 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_537 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_538 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_539 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_540 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_541 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_57_542 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_543 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_544 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_545 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_546 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_547 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_548 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_58_549 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_550 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_551 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_552 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_553 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_554 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_555 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_59_556 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_557 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_558 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_559 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_560 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_561 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_562 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_60_563 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_564 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_565 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_566 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_567 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_568 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_569 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_61_570 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_571 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_572 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_573 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_574 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_575 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_576 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_62_577 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_578 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_579 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_580 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_581 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_582 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_583 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_63_584 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_585 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_586 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_587 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_588 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_589 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_590 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_591 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_592 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_593 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_594 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_595 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_596 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_597 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_64_598 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(addr[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(addr[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(addr[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(addr[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(addr[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(addr[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(addr[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(addr[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_4 input9 (.A(rst),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(valid),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(wdata[0]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(wdata[1]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(wdata[2]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(wdata[3]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(wdata[4]),
    .X(net15));
 sky130_fd_sc_hd__buf_1 input16 (.A(wdata[5]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(wdata[6]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(wdata[7]),
    .X(net18));
 sky130_fd_sc_hd__buf_1 input19 (.A(write),
    .X(net19));
 sky130_fd_sc_hd__buf_2 output20 (.A(net20),
    .X(rdata[0]));
 sky130_fd_sc_hd__buf_2 output21 (.A(net21),
    .X(rdata[10]));
 sky130_fd_sc_hd__buf_2 output22 (.A(net22),
    .X(rdata[11]));
 sky130_fd_sc_hd__buf_2 output23 (.A(net23),
    .X(rdata[12]));
 sky130_fd_sc_hd__buf_2 output24 (.A(net24),
    .X(rdata[13]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(rdata[14]));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(rdata[15]));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(rdata[16]));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(rdata[17]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(rdata[18]));
 sky130_fd_sc_hd__buf_2 output30 (.A(net30),
    .X(rdata[19]));
 sky130_fd_sc_hd__buf_2 output31 (.A(net31),
    .X(rdata[1]));
 sky130_fd_sc_hd__buf_2 output32 (.A(net32),
    .X(rdata[20]));
 sky130_fd_sc_hd__buf_2 output33 (.A(net33),
    .X(rdata[21]));
 sky130_fd_sc_hd__buf_2 output34 (.A(net34),
    .X(rdata[22]));
 sky130_fd_sc_hd__buf_2 output35 (.A(net35),
    .X(rdata[23]));
 sky130_fd_sc_hd__buf_2 output36 (.A(net36),
    .X(rdata[24]));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(rdata[25]));
 sky130_fd_sc_hd__buf_2 output38 (.A(net38),
    .X(rdata[26]));
 sky130_fd_sc_hd__buf_2 output39 (.A(net39),
    .X(rdata[27]));
 sky130_fd_sc_hd__buf_2 output40 (.A(net40),
    .X(rdata[28]));
 sky130_fd_sc_hd__buf_2 output41 (.A(net41),
    .X(rdata[29]));
 sky130_fd_sc_hd__buf_2 output42 (.A(net42),
    .X(rdata[2]));
 sky130_fd_sc_hd__buf_2 output43 (.A(net43),
    .X(rdata[30]));
 sky130_fd_sc_hd__buf_2 output44 (.A(net44),
    .X(rdata[31]));
 sky130_fd_sc_hd__buf_2 output45 (.A(net45),
    .X(rdata[3]));
 sky130_fd_sc_hd__buf_2 output46 (.A(net46),
    .X(rdata[4]));
 sky130_fd_sc_hd__buf_2 output47 (.A(net47),
    .X(rdata[5]));
 sky130_fd_sc_hd__buf_2 output48 (.A(net48),
    .X(rdata[6]));
 sky130_fd_sc_hd__buf_2 output49 (.A(net49),
    .X(rdata[7]));
 sky130_fd_sc_hd__buf_2 output50 (.A(net50),
    .X(rdata[8]));
 sky130_fd_sc_hd__buf_2 output51 (.A(net51),
    .X(rdata[9]));
 sky130_fd_sc_hd__buf_2 fanout52 (.A(net56),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_4 fanout53 (.A(net56),
    .X(net53));
 sky130_fd_sc_hd__clkbuf_2 fanout54 (.A(net56),
    .X(net54));
 sky130_fd_sc_hd__buf_2 fanout55 (.A(net56),
    .X(net55));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout56 (.A(_0591_),
    .X(net56));
 sky130_fd_sc_hd__clkbuf_4 fanout57 (.A(net59),
    .X(net57));
 sky130_fd_sc_hd__buf_2 fanout58 (.A(net59),
    .X(net58));
 sky130_fd_sc_hd__clkbuf_4 fanout59 (.A(_0119_),
    .X(net59));
 sky130_fd_sc_hd__buf_2 fanout60 (.A(net61),
    .X(net60));
 sky130_fd_sc_hd__buf_2 fanout61 (.A(_0103_),
    .X(net61));
 sky130_fd_sc_hd__clkbuf_4 fanout62 (.A(_0103_),
    .X(net62));
 sky130_fd_sc_hd__clkbuf_2 max_cap63 (.A(net64),
    .X(net63));
 sky130_fd_sc_hd__clkbuf_2 max_cap64 (.A(_0089_),
    .X(net64));
 sky130_fd_sc_hd__buf_2 fanout65 (.A(\core_b[7] ),
    .X(net65));
 sky130_fd_sc_hd__clkbuf_2 fanout66 (.A(net67),
    .X(net66));
 sky130_fd_sc_hd__buf_2 fanout67 (.A(\core_b[6] ),
    .X(net67));
 sky130_fd_sc_hd__buf_2 fanout68 (.A(net69),
    .X(net68));
 sky130_fd_sc_hd__buf_2 fanout69 (.A(\core_b[5] ),
    .X(net69));
 sky130_fd_sc_hd__buf_2 fanout70 (.A(\core_b[4] ),
    .X(net70));
 sky130_fd_sc_hd__clkbuf_2 fanout71 (.A(\core_b[4] ),
    .X(net71));
 sky130_fd_sc_hd__buf_2 fanout72 (.A(net73),
    .X(net72));
 sky130_fd_sc_hd__buf_2 fanout73 (.A(\core_b[3] ),
    .X(net73));
 sky130_fd_sc_hd__buf_2 fanout74 (.A(net75),
    .X(net74));
 sky130_fd_sc_hd__buf_2 fanout75 (.A(\core_b[2] ),
    .X(net75));
 sky130_fd_sc_hd__buf_2 fanout76 (.A(net77),
    .X(net76));
 sky130_fd_sc_hd__buf_2 fanout77 (.A(\core_b[1] ),
    .X(net77));
 sky130_fd_sc_hd__buf_2 fanout78 (.A(net79),
    .X(net78));
 sky130_fd_sc_hd__buf_2 fanout79 (.A(\core_b[0] ),
    .X(net79));
 sky130_fd_sc_hd__buf_2 fanout80 (.A(\core_a[7] ),
    .X(net80));
 sky130_fd_sc_hd__clkbuf_2 fanout81 (.A(\core_a[7] ),
    .X(net81));
 sky130_fd_sc_hd__clkbuf_2 fanout82 (.A(net83),
    .X(net82));
 sky130_fd_sc_hd__buf_2 fanout83 (.A(\core_a[6] ),
    .X(net83));
 sky130_fd_sc_hd__clkbuf_2 fanout84 (.A(net85),
    .X(net84));
 sky130_fd_sc_hd__buf_2 fanout85 (.A(\core_a[5] ),
    .X(net85));
 sky130_fd_sc_hd__buf_2 fanout86 (.A(net87),
    .X(net86));
 sky130_fd_sc_hd__buf_2 fanout87 (.A(\core_a[4] ),
    .X(net87));
 sky130_fd_sc_hd__buf_2 fanout88 (.A(\core_a[3] ),
    .X(net88));
 sky130_fd_sc_hd__clkbuf_2 fanout89 (.A(\core_a[3] ),
    .X(net89));
 sky130_fd_sc_hd__clkbuf_2 fanout90 (.A(net91),
    .X(net90));
 sky130_fd_sc_hd__buf_2 fanout91 (.A(\core_a[2] ),
    .X(net91));
 sky130_fd_sc_hd__buf_2 fanout92 (.A(\core_a[1] ),
    .X(net92));
 sky130_fd_sc_hd__clkbuf_2 fanout93 (.A(\core_a[1] ),
    .X(net93));
 sky130_fd_sc_hd__buf_2 fanout94 (.A(\core_a[0] ),
    .X(net94));
 sky130_fd_sc_hd__clkbuf_2 fanout95 (.A(\core_a[0] ),
    .X(net95));
 sky130_fd_sc_hd__buf_2 fanout96 (.A(net97),
    .X(net96));
 sky130_fd_sc_hd__buf_2 fanout97 (.A(net104),
    .X(net97));
 sky130_fd_sc_hd__buf_2 fanout98 (.A(net104),
    .X(net98));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout99 (.A(net104),
    .X(net99));
 sky130_fd_sc_hd__buf_2 fanout100 (.A(net103),
    .X(net100));
 sky130_fd_sc_hd__buf_2 fanout101 (.A(net103),
    .X(net101));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout102 (.A(net103),
    .X(net102));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout103 (.A(net104),
    .X(net103));
 sky130_fd_sc_hd__clkbuf_2 fanout104 (.A(core_valid),
    .X(net104));
 sky130_fd_sc_hd__clkbuf_4 fanout105 (.A(net106),
    .X(net105));
 sky130_fd_sc_hd__clkbuf_4 fanout106 (.A(_0101_),
    .X(net106));
 sky130_fd_sc_hd__clkbuf_4 fanout107 (.A(_0101_),
    .X(net107));
 sky130_fd_sc_hd__clkbuf_2 fanout108 (.A(net109),
    .X(net108));
 sky130_fd_sc_hd__buf_2 fanout109 (.A(net111),
    .X(net109));
 sky130_fd_sc_hd__buf_2 fanout110 (.A(net111),
    .X(net110));
 sky130_fd_sc_hd__buf_2 fanout111 (.A(_0083_),
    .X(net111));
 sky130_fd_sc_hd__buf_2 fanout112 (.A(net115),
    .X(net112));
 sky130_fd_sc_hd__buf_2 fanout113 (.A(net114),
    .X(net113));
 sky130_fd_sc_hd__clkbuf_4 fanout114 (.A(net115),
    .X(net114));
 sky130_fd_sc_hd__dlymetal6s2s_1 fanout115 (.A(net116),
    .X(net115));
 sky130_fd_sc_hd__clkbuf_4 fanout116 (.A(_0083_),
    .X(net116));
 sky130_fd_sc_hd__conb_1 top_117 (.HI(net117));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__clkinv_4 clkload0 (.A(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload1 (.A(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkinv_4 clkload2 (.A(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__inv_6 clkload3 (.A(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload4 (.A(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload5 (.A(clknet_3_7__leaf_clk));
 assign ready = net117;
endmodule
