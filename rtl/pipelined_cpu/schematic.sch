# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new Pipeline_Top work:Pipeline_Top:NOFILE -nosplit
load symbol Decode_cycle work:Decode_cycle:NOFILE HIERBOX pin ALUSrcE output.right pin JumpE output.right pin MemwriteE output.right pin RegwriteE output.right pin RegwriteW input.left pin a2src output.right pin branchE output.right pin clk input.left pin rst input.left pinBus ALUControlE output.right [3:0] pinBus InstrD input.left [15:0] pinBus PCD input.left [15:0] pinBus PCE output.right [15:0] pinBus RD1E output.right [15:0] pinBus RD2E output.right [15:0] pinBus RdD output.right [2:0] pinBus RdE output.right [2:0] pinBus RdW input.left [2:0] pinBus ResultSrcE output.right [1:0] pinBus ResultW input.left [15:0] pinBus Rs1E output.right [2:0] pinBus Rs2E output.right [2:0] pinBus funct3E output.right [2:0] pinBus immExtE output.right [15:0] pinBus pc_plus4D input.left [15:0] pinBus pc_plus4E output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Execute_cycle work:Execute_cycle:NOFILE HIERBOX pin ALUSrcE input.left pin JumpE input.left pin MemwriteE input.left pin MemwriteM output.right pin PCSrcE output.right pin RegwriteE input.left pin RegwriteM output.right pin branchE input.left pin clk input.left pin rst input.left pinBus ALUControlE input.left [3:0] pinBus ALUResultM output.right [15:0] pinBus ForwardA_E input.left [1:0] pinBus ForwardB_E input.left [1:0] pinBus PCE input.left [15:0] pinBus PC_TargetE output.right [15:0] pinBus RD1E input.left [15:0] pinBus RD2E input.left [15:0] pinBus RdE input.left [2:0] pinBus RdM output.right [2:0] pinBus ResultSrcE input.left [1:0] pinBus ResultSrcM output.right [1:0] pinBus ResultW input.left [15:0] pinBus WriteDataM output.right [15:0] pinBus immExtE input.left [15:0] pinBus pc_plus4E input.left [15:0] pinBus pc_plus4M output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Fetch_cycle work:Fetch_cycle:NOFILE HIERBOX pin PCSrcE input.left pin clk input.left pin rst input.left pinBus InstrD output.right [15:0] pinBus InstrF output.right [15:0] pinBus InstrF_D output.right [15:0] pinBus PCD output.right [15:0] pinBus PCF output.right [15:0] pinBus PCF_D output.right [15:0] pinBus PC_F output.right [15:0] pinBus PC_TargetE input.left [15:0] pinBus pc_plus4D output.right [15:0] pinBus pc_plus4F output.right [15:0] pinBus pc_plus4F_D output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Hazard_unit work:Hazard_unit:NOFILE HIERBOX pin RegwriteM input.left pin RegwriteW input.left pin rst input.left pinBus Forward_A_E output.right [1:0] pinBus Forward_B_E output.right [1:0] pinBus RdM input.left [2:0] pinBus RdW input.left [2:0] pinBus Rs1E input.left [2:0] pinBus Rs2E input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol Memory_cycle work:Memory_cycle:NOFILE HIERBOX pin MemwriteM input.left pin RegwriteM input.left pin RegwriteW output.right pin clk input.left pin rst input.left pinBus ALUResultM input.left [15:0] pinBus ALUResultW output.right [15:0] pinBus RdM input.left [2:0] pinBus RdW output.right [2:0] pinBus ReadDataW output.right [15:0] pinBus ResultSrcM input.left [1:0] pinBus ResultSrcW output.right [1:0] pinBus WriteDataM input.left [15:0] pinBus pc_plus4M input.left [15:0] pinBus pc_plus4W output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol WriteBack_cycle work:WriteBack_cycle:NOFILE HIERBOX pin RegwriteW input.left pin clk input.left pin rst input.left pinBus ALUResultW input.left [15:0] pinBus RdW input.left [2:0] pinBus ReadDataW input.left [15:0] pinBus ResultSrcW input.left [1:0] pinBus ResultW output.right [15:0] pinBus pc_plus4W input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load port ALUSrcE output -pg 1 -lvl 3 -x 1680 -y 430
load port JumpE output -pg 1 -lvl 3 -x 1680 -y 480
load port MemwriteE output -pg 1 -lvl 3 -x 1680 -y 510
load port MemwriteM output -pg 1 -lvl 3 -x 1680 -y 1010
load port PCSrcE output -pg 1 -lvl 3 -x 1680 -y 1040
load port RegwriteE output -pg 1 -lvl 3 -x 1680 -y 660
load port RegwriteM output -pg 1 -lvl 3 -x 1680 -y 1310
load port RegwriteW output -pg 1 -lvl 3 -x 1680 -y 1710
load port branchE output -pg 1 -lvl 3 -x 1680 -y 780
load port clk input -pg 1 -lvl 0 -x 0 -y 170
load port rst input -pg 1 -lvl 0 -x 0 -y 200
load portBus ALUControlE output [3:0] -attr @name ALUControlE[3:0] -pg 1 -lvl 3 -x 1680 -y 400
load portBus ALUResultE output [15:0] -attr @name ALUResultE[15:0] -pg 1 -lvl 3 -x 1680 -y 320
load portBus ALUResultM output [15:0] -attr @name ALUResultM[15:0] -pg 1 -lvl 3 -x 1680 -y 970
load portBus ALUResultW output [15:0] -attr @name ALUResultW[15:0] -pg 1 -lvl 3 -x 1680 -y 1650
load portBus Forward_A_E output [1:0] -attr @name Forward_A_E[1:0] -pg 1 -lvl 3 -x 1680 -y 910
load portBus Forward_B_E output [1:0] -attr @name Forward_B_E[1:0] -pg 1 -lvl 3 -x 1680 -y 940
load portBus InstrD output [15:0] -attr @name InstrD[15:0] -pg 1 -lvl 3 -x 1680 -y 20
load portBus InstrF output [15:0] -attr @name InstrF[15:0] -pg 1 -lvl 3 -x 1680 -y 50
load portBus InstrF_D output [15:0] -attr @name InstrF_D[15:0] -pg 1 -lvl 3 -x 1680 -y 80
load portBus PCD output [15:0] -attr @name PCD[15:0] -pg 1 -lvl 3 -x 1680 -y 110
load portBus PCE output [15:0] -attr @name PCE[15:0] -pg 1 -lvl 3 -x 1680 -y 540
load portBus PCF output [15:0] -attr @name PCF[15:0] -pg 1 -lvl 3 -x 1680 -y 140
load portBus PCF_D output [15:0] -attr @name PCF_D[15:0] -pg 1 -lvl 3 -x 1680 -y 170
load portBus PC_F output [15:0] -attr @name PC_F[15:0] -pg 1 -lvl 3 -x 1680 -y 200
load portBus PC_TargetE output [15:0] -attr @name PC_TargetE[15:0] -pg 1 -lvl 3 -x 1680 -y 1070
load portBus RD1E output [15:0] -attr @name RD1E[15:0] -pg 1 -lvl 3 -x 1680 -y 570
load portBus RD2E output [15:0] -attr @name RD2E[15:0] -pg 1 -lvl 3 -x 1680 -y 600
load portBus RdE output [2:0] -attr @name RdE[2:0] -pg 1 -lvl 3 -x 1680 -y 630
load portBus RdM output [2:0] -attr @name RdM[2:0] -pg 1 -lvl 3 -x 1680 -y 1100
load portBus RdW output [2:0] -attr @name RdW[2:0] -pg 1 -lvl 3 -x 1680 -y 370
load portBus ReadDataW output [15:0] -attr @name ReadDataW[15:0] -pg 1 -lvl 3 -x 1680 -y 1680
load portBus ResultSrcE output [1:0] -attr @name ResultSrcE[1:0] -pg 1 -lvl 3 -x 1680 -y 690
load portBus ResultSrcM output [1:0] -attr @name ResultSrcM[1:0] -pg 1 -lvl 3 -x 1680 -y 1340
load portBus ResultSrcW output [1:0] -attr @name ResultSrcW[1:0] -pg 1 -lvl 3 -x 1680 -y 1740
load portBus ResultW output [15:0] -attr @name ResultW[15:0] -pg 1 -lvl 3 -x 1680 -y 1800
load portBus Rs1E output [2:0] -attr @name Rs1E[2:0] -pg 1 -lvl 3 -x 1680 -y 720
load portBus Rs2E output [2:0] -attr @name Rs2E[2:0] -pg 1 -lvl 3 -x 1680 -y 750
load portBus WriteDataM output [15:0] -attr @name WriteDataM[15:0] -pg 1 -lvl 3 -x 1680 -y 1370
load portBus immExtE output [15:0] -attr @name immExtE[15:0] -pg 1 -lvl 3 -x 1680 -y 810
load portBus pc_plus4D output [15:0] -attr @name pc_plus4D[15:0] -pg 1 -lvl 3 -x 1680 -y 230
load portBus pc_plus4E output [15:0] -attr @name pc_plus4E[15:0] -pg 1 -lvl 3 -x 1680 -y 840
load portBus pc_plus4F output [15:0] -attr @name pc_plus4F[15:0] -pg 1 -lvl 3 -x 1680 -y 260
load portBus pc_plus4F_D output [15:0] -attr @name pc_plus4F_D[15:0] -pg 1 -lvl 3 -x 1680 -y 290
load portBus pc_plus4M output [15:0] -attr @name pc_plus4M[15:0] -pg 1 -lvl 3 -x 1680 -y 1400
load portBus pc_plus4W output [15:0] -attr @name pc_plus4W[15:0] -pg 1 -lvl 3 -x 1680 -y 1770
load inst Decode_cycle Decode_cycle work:Decode_cycle:NOFILE -autohide -attr @cell(#000000) Decode_cycle -pinAttr a2src @attr n/c -pinBusAttr ALUControlE @name ALUControlE[3:0] -pinBusAttr InstrD @name InstrD[15:0] -pinBusAttr PCD @name PCD[15:0] -pinBusAttr PCE @name PCE[15:0] -pinBusAttr RD1E @name RD1E[15:0] -pinBusAttr RD2E @name RD2E[15:0] -pinBusAttr RdD @name RdD[2:0] -pinBusAttr RdD @attr n/c -pinBusAttr RdE @name RdE[2:0] -pinBusAttr RdW @name RdW[2:0] -pinBusAttr ResultSrcE @name ResultSrcE[1:0] -pinBusAttr ResultW @name ResultW[15:0] -pinBusAttr Rs1E @name Rs1E[2:0] -pinBusAttr Rs2E @name Rs2E[2:0] -pinBusAttr funct3E @name funct3E[2:0] -pinBusAttr funct3E @attr n/c -pinBusAttr immExtE @name immExtE[15:0] -pinBusAttr pc_plus4D @name pc_plus4D[15:0] -pinBusAttr pc_plus4E @name pc_plus4E[15:0] -pg 1 -lvl 2 -x 1130 -y 480
load inst Execute_cycle Execute_cycle work:Execute_cycle:NOFILE -autohide -attr @cell(#000000) Execute_cycle -pinBusAttr ALUControlE @name ALUControlE[3:0] -pinBusAttr ALUResultM @name ALUResultM[15:0] -pinBusAttr ForwardA_E @name ForwardA_E[1:0] -pinBusAttr ForwardB_E @name ForwardB_E[1:0] -pinBusAttr PCE @name PCE[15:0] -pinBusAttr PC_TargetE @name PC_TargetE[15:0] -pinBusAttr RD1E @name RD1E[15:0] -pinBusAttr RD2E @name RD2E[15:0] -pinBusAttr RdE @name RdE[2:0] -pinBusAttr RdM @name RdM[2:0] -pinBusAttr ResultSrcE @name ResultSrcE[1:0] -pinBusAttr ResultSrcM @name ResultSrcM[1:0] -pinBusAttr ResultW @name ResultW[15:0] -pinBusAttr WriteDataM @name WriteDataM[15:0] -pinBusAttr immExtE @name immExtE[15:0] -pinBusAttr pc_plus4E @name pc_plus4E[15:0] -pinBusAttr pc_plus4M @name pc_plus4M[15:0] -pg 1 -lvl 2 -x 1130 -y 1120
load inst Fetch_cycle Fetch_cycle work:Fetch_cycle:NOFILE -autohide -attr @cell(#000000) Fetch_cycle -pinBusAttr InstrD @name InstrD[15:0] -pinBusAttr InstrF @name InstrF[15:0] -pinBusAttr InstrF_D @name InstrF_D[15:0] -pinBusAttr PCD @name PCD[15:0] -pinBusAttr PCF @name PCF[15:0] -pinBusAttr PCF_D @name PCF_D[15:0] -pinBusAttr PC_F @name PC_F[15:0] -pinBusAttr PC_TargetE @name PC_TargetE[15:0] -pinBusAttr pc_plus4D @name pc_plus4D[15:0] -pinBusAttr pc_plus4F @name pc_plus4F[15:0] -pinBusAttr pc_plus4F_D @name pc_plus4F_D[15:0] -pg 1 -lvl 1 -x 350 -y 60
load inst Hazard Hazard_unit work:Hazard_unit:NOFILE -autohide -attr @cell(#000000) Hazard_unit -pinBusAttr Forward_A_E @name Forward_A_E[1:0] -pinBusAttr Forward_B_E @name Forward_B_E[1:0] -pinBusAttr RdM @name RdM[2:0] -pinBusAttr RdW @name RdW[2:0] -pinBusAttr Rs1E @name Rs1E[2:0] -pinBusAttr Rs2E @name Rs2E[2:0] -pg 1 -lvl 1 -x 350 -y 800
load inst Memory_cycle Memory_cycle work:Memory_cycle:NOFILE -autohide -attr @cell(#000000) Memory_cycle -pinBusAttr ALUResultM @name ALUResultM[15:0] -pinBusAttr ALUResultW @name ALUResultW[15:0] -pinBusAttr RdM @name RdM[2:0] -pinBusAttr RdW @name RdW[2:0] -pinBusAttr ReadDataW @name ReadDataW[15:0] -pinBusAttr ResultSrcM @name ResultSrcM[1:0] -pinBusAttr ResultSrcW @name ResultSrcW[1:0] -pinBusAttr WriteDataM @name WriteDataM[15:0] -pinBusAttr pc_plus4M @name pc_plus4M[15:0] -pinBusAttr pc_plus4W @name pc_plus4W[15:0] -pg 1 -lvl 1 -x 350 -y 1620
load inst WriteBack_cycle WriteBack_cycle work:WriteBack_cycle:NOFILE -autohide -attr @cell(#000000) WriteBack_cycle -pinBusAttr ALUResultW @name ALUResultW[15:0] -pinBusAttr RdW @name RdW[2:0] -pinBusAttr ReadDataW @name ReadDataW[15:0] -pinBusAttr ResultSrcW @name ResultSrcW[1:0] -pinBusAttr ResultW @name ResultW[15:0] -pinBusAttr pc_plus4W @name pc_plus4W[15:0] -pg 1 -lvl 1 -x 350 -y 1940
load net ALUControlE[0] -attr @rip ALUControlE[0] -port ALUControlE[0] -pin Decode_cycle ALUControlE[0] -pin Execute_cycle ALUControlE[0]
load net ALUControlE[1] -attr @rip ALUControlE[1] -port ALUControlE[1] -pin Decode_cycle ALUControlE[1] -pin Execute_cycle ALUControlE[1]
load net ALUControlE[2] -attr @rip ALUControlE[2] -port ALUControlE[2] -pin Decode_cycle ALUControlE[2] -pin Execute_cycle ALUControlE[2]
load net ALUControlE[3] -attr @rip ALUControlE[3] -port ALUControlE[3] -pin Decode_cycle ALUControlE[3] -pin Execute_cycle ALUControlE[3]
load net ALUResultM[0] -attr @rip ALUResultM[0] -port ALUResultM[0] -pin Execute_cycle ALUResultM[0] -pin Memory_cycle ALUResultM[0]
load net ALUResultM[10] -attr @rip ALUResultM[10] -port ALUResultM[10] -pin Execute_cycle ALUResultM[10] -pin Memory_cycle ALUResultM[10]
load net ALUResultM[11] -attr @rip ALUResultM[11] -port ALUResultM[11] -pin Execute_cycle ALUResultM[11] -pin Memory_cycle ALUResultM[11]
load net ALUResultM[12] -attr @rip ALUResultM[12] -port ALUResultM[12] -pin Execute_cycle ALUResultM[12] -pin Memory_cycle ALUResultM[12]
load net ALUResultM[13] -attr @rip ALUResultM[13] -port ALUResultM[13] -pin Execute_cycle ALUResultM[13] -pin Memory_cycle ALUResultM[13]
load net ALUResultM[14] -attr @rip ALUResultM[14] -port ALUResultM[14] -pin Execute_cycle ALUResultM[14] -pin Memory_cycle ALUResultM[14]
load net ALUResultM[15] -attr @rip ALUResultM[15] -port ALUResultM[15] -pin Execute_cycle ALUResultM[15] -pin Memory_cycle ALUResultM[15]
load net ALUResultM[1] -attr @rip ALUResultM[1] -port ALUResultM[1] -pin Execute_cycle ALUResultM[1] -pin Memory_cycle ALUResultM[1]
load net ALUResultM[2] -attr @rip ALUResultM[2] -port ALUResultM[2] -pin Execute_cycle ALUResultM[2] -pin Memory_cycle ALUResultM[2]
load net ALUResultM[3] -attr @rip ALUResultM[3] -port ALUResultM[3] -pin Execute_cycle ALUResultM[3] -pin Memory_cycle ALUResultM[3]
load net ALUResultM[4] -attr @rip ALUResultM[4] -port ALUResultM[4] -pin Execute_cycle ALUResultM[4] -pin Memory_cycle ALUResultM[4]
load net ALUResultM[5] -attr @rip ALUResultM[5] -port ALUResultM[5] -pin Execute_cycle ALUResultM[5] -pin Memory_cycle ALUResultM[5]
load net ALUResultM[6] -attr @rip ALUResultM[6] -port ALUResultM[6] -pin Execute_cycle ALUResultM[6] -pin Memory_cycle ALUResultM[6]
load net ALUResultM[7] -attr @rip ALUResultM[7] -port ALUResultM[7] -pin Execute_cycle ALUResultM[7] -pin Memory_cycle ALUResultM[7]
load net ALUResultM[8] -attr @rip ALUResultM[8] -port ALUResultM[8] -pin Execute_cycle ALUResultM[8] -pin Memory_cycle ALUResultM[8]
load net ALUResultM[9] -attr @rip ALUResultM[9] -port ALUResultM[9] -pin Execute_cycle ALUResultM[9] -pin Memory_cycle ALUResultM[9]
load net ALUResultW[0] -attr @rip ALUResultW[0] -port ALUResultW[0] -pin Memory_cycle ALUResultW[0] -pin WriteBack_cycle ALUResultW[0]
load net ALUResultW[10] -attr @rip ALUResultW[10] -port ALUResultW[10] -pin Memory_cycle ALUResultW[10] -pin WriteBack_cycle ALUResultW[10]
load net ALUResultW[11] -attr @rip ALUResultW[11] -port ALUResultW[11] -pin Memory_cycle ALUResultW[11] -pin WriteBack_cycle ALUResultW[11]
load net ALUResultW[12] -attr @rip ALUResultW[12] -port ALUResultW[12] -pin Memory_cycle ALUResultW[12] -pin WriteBack_cycle ALUResultW[12]
load net ALUResultW[13] -attr @rip ALUResultW[13] -port ALUResultW[13] -pin Memory_cycle ALUResultW[13] -pin WriteBack_cycle ALUResultW[13]
load net ALUResultW[14] -attr @rip ALUResultW[14] -port ALUResultW[14] -pin Memory_cycle ALUResultW[14] -pin WriteBack_cycle ALUResultW[14]
load net ALUResultW[15] -attr @rip ALUResultW[15] -port ALUResultW[15] -pin Memory_cycle ALUResultW[15] -pin WriteBack_cycle ALUResultW[15]
load net ALUResultW[1] -attr @rip ALUResultW[1] -port ALUResultW[1] -pin Memory_cycle ALUResultW[1] -pin WriteBack_cycle ALUResultW[1]
load net ALUResultW[2] -attr @rip ALUResultW[2] -port ALUResultW[2] -pin Memory_cycle ALUResultW[2] -pin WriteBack_cycle ALUResultW[2]
load net ALUResultW[3] -attr @rip ALUResultW[3] -port ALUResultW[3] -pin Memory_cycle ALUResultW[3] -pin WriteBack_cycle ALUResultW[3]
load net ALUResultW[4] -attr @rip ALUResultW[4] -port ALUResultW[4] -pin Memory_cycle ALUResultW[4] -pin WriteBack_cycle ALUResultW[4]
load net ALUResultW[5] -attr @rip ALUResultW[5] -port ALUResultW[5] -pin Memory_cycle ALUResultW[5] -pin WriteBack_cycle ALUResultW[5]
load net ALUResultW[6] -attr @rip ALUResultW[6] -port ALUResultW[6] -pin Memory_cycle ALUResultW[6] -pin WriteBack_cycle ALUResultW[6]
load net ALUResultW[7] -attr @rip ALUResultW[7] -port ALUResultW[7] -pin Memory_cycle ALUResultW[7] -pin WriteBack_cycle ALUResultW[7]
load net ALUResultW[8] -attr @rip ALUResultW[8] -port ALUResultW[8] -pin Memory_cycle ALUResultW[8] -pin WriteBack_cycle ALUResultW[8]
load net ALUResultW[9] -attr @rip ALUResultW[9] -port ALUResultW[9] -pin Memory_cycle ALUResultW[9] -pin WriteBack_cycle ALUResultW[9]
load net ALUSrcE -port ALUSrcE -pin Decode_cycle ALUSrcE -pin Execute_cycle ALUSrcE
netloc ALUSrcE 1 1 2 940 310 1400
load net Forward_A_E[0] -attr @rip Forward_A_E[0] -pin Execute_cycle ForwardA_E[0] -port Forward_A_E[0] -pin Hazard Forward_A_E[0]
load net Forward_A_E[1] -attr @rip Forward_A_E[1] -pin Execute_cycle ForwardA_E[1] -port Forward_A_E[1] -pin Hazard Forward_A_E[1]
load net Forward_B_E[0] -attr @rip Forward_B_E[0] -pin Execute_cycle ForwardB_E[0] -port Forward_B_E[0] -pin Hazard Forward_B_E[0]
load net Forward_B_E[1] -attr @rip Forward_B_E[1] -pin Execute_cycle ForwardB_E[1] -port Forward_B_E[1] -pin Hazard Forward_B_E[1]
load net InstrD[0] -attr @rip InstrD[0] -pin Decode_cycle InstrD[0] -pin Fetch_cycle InstrD[0] -port InstrD[0]
load net InstrD[10] -attr @rip InstrD[10] -pin Decode_cycle InstrD[10] -pin Fetch_cycle InstrD[10] -port InstrD[10]
load net InstrD[11] -attr @rip InstrD[11] -pin Decode_cycle InstrD[11] -pin Fetch_cycle InstrD[11] -port InstrD[11]
load net InstrD[12] -attr @rip InstrD[12] -pin Decode_cycle InstrD[12] -pin Fetch_cycle InstrD[12] -port InstrD[12]
load net InstrD[13] -attr @rip InstrD[13] -pin Decode_cycle InstrD[13] -pin Fetch_cycle InstrD[13] -port InstrD[13]
load net InstrD[14] -attr @rip InstrD[14] -pin Decode_cycle InstrD[14] -pin Fetch_cycle InstrD[14] -port InstrD[14]
load net InstrD[15] -attr @rip InstrD[15] -pin Decode_cycle InstrD[15] -pin Fetch_cycle InstrD[15] -port InstrD[15]
load net InstrD[1] -attr @rip InstrD[1] -pin Decode_cycle InstrD[1] -pin Fetch_cycle InstrD[1] -port InstrD[1]
load net InstrD[2] -attr @rip InstrD[2] -pin Decode_cycle InstrD[2] -pin Fetch_cycle InstrD[2] -port InstrD[2]
load net InstrD[3] -attr @rip InstrD[3] -pin Decode_cycle InstrD[3] -pin Fetch_cycle InstrD[3] -port InstrD[3]
load net InstrD[4] -attr @rip InstrD[4] -pin Decode_cycle InstrD[4] -pin Fetch_cycle InstrD[4] -port InstrD[4]
load net InstrD[5] -attr @rip InstrD[5] -pin Decode_cycle InstrD[5] -pin Fetch_cycle InstrD[5] -port InstrD[5]
load net InstrD[6] -attr @rip InstrD[6] -pin Decode_cycle InstrD[6] -pin Fetch_cycle InstrD[6] -port InstrD[6]
load net InstrD[7] -attr @rip InstrD[7] -pin Decode_cycle InstrD[7] -pin Fetch_cycle InstrD[7] -port InstrD[7]
load net InstrD[8] -attr @rip InstrD[8] -pin Decode_cycle InstrD[8] -pin Fetch_cycle InstrD[8] -port InstrD[8]
load net InstrD[9] -attr @rip InstrD[9] -pin Decode_cycle InstrD[9] -pin Fetch_cycle InstrD[9] -port InstrD[9]
load net InstrF[0] -attr @rip InstrF[0] -pin Fetch_cycle InstrF[0] -port InstrF[0]
load net InstrF[10] -attr @rip InstrF[10] -pin Fetch_cycle InstrF[10] -port InstrF[10]
load net InstrF[11] -attr @rip InstrF[11] -pin Fetch_cycle InstrF[11] -port InstrF[11]
load net InstrF[12] -attr @rip InstrF[12] -pin Fetch_cycle InstrF[12] -port InstrF[12]
load net InstrF[13] -attr @rip InstrF[13] -pin Fetch_cycle InstrF[13] -port InstrF[13]
load net InstrF[14] -attr @rip InstrF[14] -pin Fetch_cycle InstrF[14] -port InstrF[14]
load net InstrF[15] -attr @rip InstrF[15] -pin Fetch_cycle InstrF[15] -port InstrF[15]
load net InstrF[1] -attr @rip InstrF[1] -pin Fetch_cycle InstrF[1] -port InstrF[1]
load net InstrF[2] -attr @rip InstrF[2] -pin Fetch_cycle InstrF[2] -port InstrF[2]
load net InstrF[3] -attr @rip InstrF[3] -pin Fetch_cycle InstrF[3] -port InstrF[3]
load net InstrF[4] -attr @rip InstrF[4] -pin Fetch_cycle InstrF[4] -port InstrF[4]
load net InstrF[5] -attr @rip InstrF[5] -pin Fetch_cycle InstrF[5] -port InstrF[5]
load net InstrF[6] -attr @rip InstrF[6] -pin Fetch_cycle InstrF[6] -port InstrF[6]
load net InstrF[7] -attr @rip InstrF[7] -pin Fetch_cycle InstrF[7] -port InstrF[7]
load net InstrF[8] -attr @rip InstrF[8] -pin Fetch_cycle InstrF[8] -port InstrF[8]
load net InstrF[9] -attr @rip InstrF[9] -pin Fetch_cycle InstrF[9] -port InstrF[9]
load net InstrF_D[0] -attr @rip InstrF_D[0] -pin Fetch_cycle InstrF_D[0] -port InstrF_D[0]
load net InstrF_D[10] -attr @rip InstrF_D[10] -pin Fetch_cycle InstrF_D[10] -port InstrF_D[10]
load net InstrF_D[11] -attr @rip InstrF_D[11] -pin Fetch_cycle InstrF_D[11] -port InstrF_D[11]
load net InstrF_D[12] -attr @rip InstrF_D[12] -pin Fetch_cycle InstrF_D[12] -port InstrF_D[12]
load net InstrF_D[13] -attr @rip InstrF_D[13] -pin Fetch_cycle InstrF_D[13] -port InstrF_D[13]
load net InstrF_D[14] -attr @rip InstrF_D[14] -pin Fetch_cycle InstrF_D[14] -port InstrF_D[14]
load net InstrF_D[15] -attr @rip InstrF_D[15] -pin Fetch_cycle InstrF_D[15] -port InstrF_D[15]
load net InstrF_D[1] -attr @rip InstrF_D[1] -pin Fetch_cycle InstrF_D[1] -port InstrF_D[1]
load net InstrF_D[2] -attr @rip InstrF_D[2] -pin Fetch_cycle InstrF_D[2] -port InstrF_D[2]
load net InstrF_D[3] -attr @rip InstrF_D[3] -pin Fetch_cycle InstrF_D[3] -port InstrF_D[3]
load net InstrF_D[4] -attr @rip InstrF_D[4] -pin Fetch_cycle InstrF_D[4] -port InstrF_D[4]
load net InstrF_D[5] -attr @rip InstrF_D[5] -pin Fetch_cycle InstrF_D[5] -port InstrF_D[5]
load net InstrF_D[6] -attr @rip InstrF_D[6] -pin Fetch_cycle InstrF_D[6] -port InstrF_D[6]
load net InstrF_D[7] -attr @rip InstrF_D[7] -pin Fetch_cycle InstrF_D[7] -port InstrF_D[7]
load net InstrF_D[8] -attr @rip InstrF_D[8] -pin Fetch_cycle InstrF_D[8] -port InstrF_D[8]
load net InstrF_D[9] -attr @rip InstrF_D[9] -pin Fetch_cycle InstrF_D[9] -port InstrF_D[9]
load net JumpE -pin Decode_cycle JumpE -pin Execute_cycle JumpE -port JumpE
netloc JumpE 1 1 2 980 970 1460
load net MemwriteE -pin Decode_cycle MemwriteE -pin Execute_cycle MemwriteE -port MemwriteE
netloc MemwriteE 1 1 2 1000 990 1480
load net MemwriteM -pin Execute_cycle MemwriteM -pin Memory_cycle MemwriteM -port MemwriteM
netloc MemwriteM 1 0 3 220 1010 NJ 1010 1660
load net PCD[0] -attr @rip PCD[0] -pin Decode_cycle PCD[0] -pin Fetch_cycle PCD[0] -port PCD[0]
load net PCD[10] -attr @rip PCD[10] -pin Decode_cycle PCD[10] -pin Fetch_cycle PCD[10] -port PCD[10]
load net PCD[11] -attr @rip PCD[11] -pin Decode_cycle PCD[11] -pin Fetch_cycle PCD[11] -port PCD[11]
load net PCD[12] -attr @rip PCD[12] -pin Decode_cycle PCD[12] -pin Fetch_cycle PCD[12] -port PCD[12]
load net PCD[13] -attr @rip PCD[13] -pin Decode_cycle PCD[13] -pin Fetch_cycle PCD[13] -port PCD[13]
load net PCD[14] -attr @rip PCD[14] -pin Decode_cycle PCD[14] -pin Fetch_cycle PCD[14] -port PCD[14]
load net PCD[15] -attr @rip PCD[15] -pin Decode_cycle PCD[15] -pin Fetch_cycle PCD[15] -port PCD[15]
load net PCD[1] -attr @rip PCD[1] -pin Decode_cycle PCD[1] -pin Fetch_cycle PCD[1] -port PCD[1]
load net PCD[2] -attr @rip PCD[2] -pin Decode_cycle PCD[2] -pin Fetch_cycle PCD[2] -port PCD[2]
load net PCD[3] -attr @rip PCD[3] -pin Decode_cycle PCD[3] -pin Fetch_cycle PCD[3] -port PCD[3]
load net PCD[4] -attr @rip PCD[4] -pin Decode_cycle PCD[4] -pin Fetch_cycle PCD[4] -port PCD[4]
load net PCD[5] -attr @rip PCD[5] -pin Decode_cycle PCD[5] -pin Fetch_cycle PCD[5] -port PCD[5]
load net PCD[6] -attr @rip PCD[6] -pin Decode_cycle PCD[6] -pin Fetch_cycle PCD[6] -port PCD[6]
load net PCD[7] -attr @rip PCD[7] -pin Decode_cycle PCD[7] -pin Fetch_cycle PCD[7] -port PCD[7]
load net PCD[8] -attr @rip PCD[8] -pin Decode_cycle PCD[8] -pin Fetch_cycle PCD[8] -port PCD[8]
load net PCD[9] -attr @rip PCD[9] -pin Decode_cycle PCD[9] -pin Fetch_cycle PCD[9] -port PCD[9]
load net PCE[0] -attr @rip PCE[0] -pin Decode_cycle PCE[0] -pin Execute_cycle PCE[0] -port PCE[0]
load net PCE[10] -attr @rip PCE[10] -pin Decode_cycle PCE[10] -pin Execute_cycle PCE[10] -port PCE[10]
load net PCE[11] -attr @rip PCE[11] -pin Decode_cycle PCE[11] -pin Execute_cycle PCE[11] -port PCE[11]
load net PCE[12] -attr @rip PCE[12] -pin Decode_cycle PCE[12] -pin Execute_cycle PCE[12] -port PCE[12]
load net PCE[13] -attr @rip PCE[13] -pin Decode_cycle PCE[13] -pin Execute_cycle PCE[13] -port PCE[13]
load net PCE[14] -attr @rip PCE[14] -pin Decode_cycle PCE[14] -pin Execute_cycle PCE[14] -port PCE[14]
load net PCE[15] -attr @rip PCE[15] -pin Decode_cycle PCE[15] -pin Execute_cycle PCE[15] -port PCE[15]
load net PCE[1] -attr @rip PCE[1] -pin Decode_cycle PCE[1] -pin Execute_cycle PCE[1] -port PCE[1]
load net PCE[2] -attr @rip PCE[2] -pin Decode_cycle PCE[2] -pin Execute_cycle PCE[2] -port PCE[2]
load net PCE[3] -attr @rip PCE[3] -pin Decode_cycle PCE[3] -pin Execute_cycle PCE[3] -port PCE[3]
load net PCE[4] -attr @rip PCE[4] -pin Decode_cycle PCE[4] -pin Execute_cycle PCE[4] -port PCE[4]
load net PCE[5] -attr @rip PCE[5] -pin Decode_cycle PCE[5] -pin Execute_cycle PCE[5] -port PCE[5]
load net PCE[6] -attr @rip PCE[6] -pin Decode_cycle PCE[6] -pin Execute_cycle PCE[6] -port PCE[6]
load net PCE[7] -attr @rip PCE[7] -pin Decode_cycle PCE[7] -pin Execute_cycle PCE[7] -port PCE[7]
load net PCE[8] -attr @rip PCE[8] -pin Decode_cycle PCE[8] -pin Execute_cycle PCE[8] -port PCE[8]
load net PCE[9] -attr @rip PCE[9] -pin Decode_cycle PCE[9] -pin Execute_cycle PCE[9] -port PCE[9]
load net PCF[0] -attr @rip PCF[0] -pin Fetch_cycle PCF[0] -port PCF[0]
load net PCF[10] -attr @rip PCF[10] -pin Fetch_cycle PCF[10] -port PCF[10]
load net PCF[11] -attr @rip PCF[11] -pin Fetch_cycle PCF[11] -port PCF[11]
load net PCF[12] -attr @rip PCF[12] -pin Fetch_cycle PCF[12] -port PCF[12]
load net PCF[13] -attr @rip PCF[13] -pin Fetch_cycle PCF[13] -port PCF[13]
load net PCF[14] -attr @rip PCF[14] -pin Fetch_cycle PCF[14] -port PCF[14]
load net PCF[15] -attr @rip PCF[15] -pin Fetch_cycle PCF[15] -port PCF[15]
load net PCF[1] -attr @rip PCF[1] -pin Fetch_cycle PCF[1] -port PCF[1]
load net PCF[2] -attr @rip PCF[2] -pin Fetch_cycle PCF[2] -port PCF[2]
load net PCF[3] -attr @rip PCF[3] -pin Fetch_cycle PCF[3] -port PCF[3]
load net PCF[4] -attr @rip PCF[4] -pin Fetch_cycle PCF[4] -port PCF[4]
load net PCF[5] -attr @rip PCF[5] -pin Fetch_cycle PCF[5] -port PCF[5]
load net PCF[6] -attr @rip PCF[6] -pin Fetch_cycle PCF[6] -port PCF[6]
load net PCF[7] -attr @rip PCF[7] -pin Fetch_cycle PCF[7] -port PCF[7]
load net PCF[8] -attr @rip PCF[8] -pin Fetch_cycle PCF[8] -port PCF[8]
load net PCF[9] -attr @rip PCF[9] -pin Fetch_cycle PCF[9] -port PCF[9]
load net PCF_D[0] -attr @rip PCF_D[0] -pin Fetch_cycle PCF_D[0] -port PCF_D[0]
load net PCF_D[10] -attr @rip PCF_D[10] -pin Fetch_cycle PCF_D[10] -port PCF_D[10]
load net PCF_D[11] -attr @rip PCF_D[11] -pin Fetch_cycle PCF_D[11] -port PCF_D[11]
load net PCF_D[12] -attr @rip PCF_D[12] -pin Fetch_cycle PCF_D[12] -port PCF_D[12]
load net PCF_D[13] -attr @rip PCF_D[13] -pin Fetch_cycle PCF_D[13] -port PCF_D[13]
load net PCF_D[14] -attr @rip PCF_D[14] -pin Fetch_cycle PCF_D[14] -port PCF_D[14]
load net PCF_D[15] -attr @rip PCF_D[15] -pin Fetch_cycle PCF_D[15] -port PCF_D[15]
load net PCF_D[1] -attr @rip PCF_D[1] -pin Fetch_cycle PCF_D[1] -port PCF_D[1]
load net PCF_D[2] -attr @rip PCF_D[2] -pin Fetch_cycle PCF_D[2] -port PCF_D[2]
load net PCF_D[3] -attr @rip PCF_D[3] -pin Fetch_cycle PCF_D[3] -port PCF_D[3]
load net PCF_D[4] -attr @rip PCF_D[4] -pin Fetch_cycle PCF_D[4] -port PCF_D[4]
load net PCF_D[5] -attr @rip PCF_D[5] -pin Fetch_cycle PCF_D[5] -port PCF_D[5]
load net PCF_D[6] -attr @rip PCF_D[6] -pin Fetch_cycle PCF_D[6] -port PCF_D[6]
load net PCF_D[7] -attr @rip PCF_D[7] -pin Fetch_cycle PCF_D[7] -port PCF_D[7]
load net PCF_D[8] -attr @rip PCF_D[8] -pin Fetch_cycle PCF_D[8] -port PCF_D[8]
load net PCF_D[9] -attr @rip PCF_D[9] -pin Fetch_cycle PCF_D[9] -port PCF_D[9]
load net PCSrcE -pin Execute_cycle PCSrcE -pin Fetch_cycle PCSrcE -port PCSrcE
netloc PCSrcE 1 0 3 160 1030 NJ 1030 1520
load net PC_F[0] -attr @rip PC_F[0] -pin Fetch_cycle PC_F[0] -port PC_F[0]
load net PC_F[10] -attr @rip PC_F[10] -pin Fetch_cycle PC_F[10] -port PC_F[10]
load net PC_F[11] -attr @rip PC_F[11] -pin Fetch_cycle PC_F[11] -port PC_F[11]
load net PC_F[12] -attr @rip PC_F[12] -pin Fetch_cycle PC_F[12] -port PC_F[12]
load net PC_F[13] -attr @rip PC_F[13] -pin Fetch_cycle PC_F[13] -port PC_F[13]
load net PC_F[14] -attr @rip PC_F[14] -pin Fetch_cycle PC_F[14] -port PC_F[14]
load net PC_F[15] -attr @rip PC_F[15] -pin Fetch_cycle PC_F[15] -port PC_F[15]
load net PC_F[1] -attr @rip PC_F[1] -pin Fetch_cycle PC_F[1] -port PC_F[1]
load net PC_F[2] -attr @rip PC_F[2] -pin Fetch_cycle PC_F[2] -port PC_F[2]
load net PC_F[3] -attr @rip PC_F[3] -pin Fetch_cycle PC_F[3] -port PC_F[3]
load net PC_F[4] -attr @rip PC_F[4] -pin Fetch_cycle PC_F[4] -port PC_F[4]
load net PC_F[5] -attr @rip PC_F[5] -pin Fetch_cycle PC_F[5] -port PC_F[5]
load net PC_F[6] -attr @rip PC_F[6] -pin Fetch_cycle PC_F[6] -port PC_F[6]
load net PC_F[7] -attr @rip PC_F[7] -pin Fetch_cycle PC_F[7] -port PC_F[7]
load net PC_F[8] -attr @rip PC_F[8] -pin Fetch_cycle PC_F[8] -port PC_F[8]
load net PC_F[9] -attr @rip PC_F[9] -pin Fetch_cycle PC_F[9] -port PC_F[9]
load net PC_TargetE[0] -attr @rip PC_TargetE[0] -pin Execute_cycle PC_TargetE[0] -pin Fetch_cycle PC_TargetE[0] -port PC_TargetE[0]
load net PC_TargetE[10] -attr @rip PC_TargetE[10] -pin Execute_cycle PC_TargetE[10] -pin Fetch_cycle PC_TargetE[10] -port PC_TargetE[10]
load net PC_TargetE[11] -attr @rip PC_TargetE[11] -pin Execute_cycle PC_TargetE[11] -pin Fetch_cycle PC_TargetE[11] -port PC_TargetE[11]
load net PC_TargetE[12] -attr @rip PC_TargetE[12] -pin Execute_cycle PC_TargetE[12] -pin Fetch_cycle PC_TargetE[12] -port PC_TargetE[12]
load net PC_TargetE[13] -attr @rip PC_TargetE[13] -pin Execute_cycle PC_TargetE[13] -pin Fetch_cycle PC_TargetE[13] -port PC_TargetE[13]
load net PC_TargetE[14] -attr @rip PC_TargetE[14] -pin Execute_cycle PC_TargetE[14] -pin Fetch_cycle PC_TargetE[14] -port PC_TargetE[14]
load net PC_TargetE[15] -attr @rip PC_TargetE[15] -pin Execute_cycle PC_TargetE[15] -pin Fetch_cycle PC_TargetE[15] -port PC_TargetE[15]
load net PC_TargetE[1] -attr @rip PC_TargetE[1] -pin Execute_cycle PC_TargetE[1] -pin Fetch_cycle PC_TargetE[1] -port PC_TargetE[1]
load net PC_TargetE[2] -attr @rip PC_TargetE[2] -pin Execute_cycle PC_TargetE[2] -pin Fetch_cycle PC_TargetE[2] -port PC_TargetE[2]
load net PC_TargetE[3] -attr @rip PC_TargetE[3] -pin Execute_cycle PC_TargetE[3] -pin Fetch_cycle PC_TargetE[3] -port PC_TargetE[3]
load net PC_TargetE[4] -attr @rip PC_TargetE[4] -pin Execute_cycle PC_TargetE[4] -pin Fetch_cycle PC_TargetE[4] -port PC_TargetE[4]
load net PC_TargetE[5] -attr @rip PC_TargetE[5] -pin Execute_cycle PC_TargetE[5] -pin Fetch_cycle PC_TargetE[5] -port PC_TargetE[5]
load net PC_TargetE[6] -attr @rip PC_TargetE[6] -pin Execute_cycle PC_TargetE[6] -pin Fetch_cycle PC_TargetE[6] -port PC_TargetE[6]
load net PC_TargetE[7] -attr @rip PC_TargetE[7] -pin Execute_cycle PC_TargetE[7] -pin Fetch_cycle PC_TargetE[7] -port PC_TargetE[7]
load net PC_TargetE[8] -attr @rip PC_TargetE[8] -pin Execute_cycle PC_TargetE[8] -pin Fetch_cycle PC_TargetE[8] -port PC_TargetE[8]
load net PC_TargetE[9] -attr @rip PC_TargetE[9] -pin Execute_cycle PC_TargetE[9] -pin Fetch_cycle PC_TargetE[9] -port PC_TargetE[9]
load net RD1E[0] -attr @rip RD1E[0] -pin Decode_cycle RD1E[0] -pin Execute_cycle RD1E[0] -port RD1E[0]
load net RD1E[10] -attr @rip RD1E[10] -pin Decode_cycle RD1E[10] -pin Execute_cycle RD1E[10] -port RD1E[10]
load net RD1E[11] -attr @rip RD1E[11] -pin Decode_cycle RD1E[11] -pin Execute_cycle RD1E[11] -port RD1E[11]
load net RD1E[12] -attr @rip RD1E[12] -pin Decode_cycle RD1E[12] -pin Execute_cycle RD1E[12] -port RD1E[12]
load net RD1E[13] -attr @rip RD1E[13] -pin Decode_cycle RD1E[13] -pin Execute_cycle RD1E[13] -port RD1E[13]
load net RD1E[14] -attr @rip RD1E[14] -pin Decode_cycle RD1E[14] -pin Execute_cycle RD1E[14] -port RD1E[14]
load net RD1E[15] -attr @rip RD1E[15] -pin Decode_cycle RD1E[15] -pin Execute_cycle RD1E[15] -port RD1E[15]
load net RD1E[1] -attr @rip RD1E[1] -pin Decode_cycle RD1E[1] -pin Execute_cycle RD1E[1] -port RD1E[1]
load net RD1E[2] -attr @rip RD1E[2] -pin Decode_cycle RD1E[2] -pin Execute_cycle RD1E[2] -port RD1E[2]
load net RD1E[3] -attr @rip RD1E[3] -pin Decode_cycle RD1E[3] -pin Execute_cycle RD1E[3] -port RD1E[3]
load net RD1E[4] -attr @rip RD1E[4] -pin Decode_cycle RD1E[4] -pin Execute_cycle RD1E[4] -port RD1E[4]
load net RD1E[5] -attr @rip RD1E[5] -pin Decode_cycle RD1E[5] -pin Execute_cycle RD1E[5] -port RD1E[5]
load net RD1E[6] -attr @rip RD1E[6] -pin Decode_cycle RD1E[6] -pin Execute_cycle RD1E[6] -port RD1E[6]
load net RD1E[7] -attr @rip RD1E[7] -pin Decode_cycle RD1E[7] -pin Execute_cycle RD1E[7] -port RD1E[7]
load net RD1E[8] -attr @rip RD1E[8] -pin Decode_cycle RD1E[8] -pin Execute_cycle RD1E[8] -port RD1E[8]
load net RD1E[9] -attr @rip RD1E[9] -pin Decode_cycle RD1E[9] -pin Execute_cycle RD1E[9] -port RD1E[9]
load net RD2E[0] -attr @rip RD2E[0] -pin Decode_cycle RD2E[0] -pin Execute_cycle RD2E[0] -port RD2E[0]
load net RD2E[10] -attr @rip RD2E[10] -pin Decode_cycle RD2E[10] -pin Execute_cycle RD2E[10] -port RD2E[10]
load net RD2E[11] -attr @rip RD2E[11] -pin Decode_cycle RD2E[11] -pin Execute_cycle RD2E[11] -port RD2E[11]
load net RD2E[12] -attr @rip RD2E[12] -pin Decode_cycle RD2E[12] -pin Execute_cycle RD2E[12] -port RD2E[12]
load net RD2E[13] -attr @rip RD2E[13] -pin Decode_cycle RD2E[13] -pin Execute_cycle RD2E[13] -port RD2E[13]
load net RD2E[14] -attr @rip RD2E[14] -pin Decode_cycle RD2E[14] -pin Execute_cycle RD2E[14] -port RD2E[14]
load net RD2E[15] -attr @rip RD2E[15] -pin Decode_cycle RD2E[15] -pin Execute_cycle RD2E[15] -port RD2E[15]
load net RD2E[1] -attr @rip RD2E[1] -pin Decode_cycle RD2E[1] -pin Execute_cycle RD2E[1] -port RD2E[1]
load net RD2E[2] -attr @rip RD2E[2] -pin Decode_cycle RD2E[2] -pin Execute_cycle RD2E[2] -port RD2E[2]
load net RD2E[3] -attr @rip RD2E[3] -pin Decode_cycle RD2E[3] -pin Execute_cycle RD2E[3] -port RD2E[3]
load net RD2E[4] -attr @rip RD2E[4] -pin Decode_cycle RD2E[4] -pin Execute_cycle RD2E[4] -port RD2E[4]
load net RD2E[5] -attr @rip RD2E[5] -pin Decode_cycle RD2E[5] -pin Execute_cycle RD2E[5] -port RD2E[5]
load net RD2E[6] -attr @rip RD2E[6] -pin Decode_cycle RD2E[6] -pin Execute_cycle RD2E[6] -port RD2E[6]
load net RD2E[7] -attr @rip RD2E[7] -pin Decode_cycle RD2E[7] -pin Execute_cycle RD2E[7] -port RD2E[7]
load net RD2E[8] -attr @rip RD2E[8] -pin Decode_cycle RD2E[8] -pin Execute_cycle RD2E[8] -port RD2E[8]
load net RD2E[9] -attr @rip RD2E[9] -pin Decode_cycle RD2E[9] -pin Execute_cycle RD2E[9] -port RD2E[9]
load net RdE[0] -attr @rip RdE[0] -pin Decode_cycle RdE[0] -pin Execute_cycle RdE[0] -port RdE[0]
load net RdE[1] -attr @rip RdE[1] -pin Decode_cycle RdE[1] -pin Execute_cycle RdE[1] -port RdE[1]
load net RdE[2] -attr @rip RdE[2] -pin Decode_cycle RdE[2] -pin Execute_cycle RdE[2] -port RdE[2]
load net RdM[0] -attr @rip RdM[0] -pin Execute_cycle RdM[0] -pin Hazard RdM[0] -pin Memory_cycle RdM[0] -port RdM[0]
load net RdM[1] -attr @rip RdM[1] -pin Execute_cycle RdM[1] -pin Hazard RdM[1] -pin Memory_cycle RdM[1] -port RdM[1]
load net RdM[2] -attr @rip RdM[2] -pin Execute_cycle RdM[2] -pin Hazard RdM[2] -pin Memory_cycle RdM[2] -port RdM[2]
load net RdW[0] -attr @rip RdW[0] -pin Decode_cycle RdW[0] -pin Hazard RdW[0] -pin Memory_cycle RdW[0] -port RdW[0] -pin WriteBack_cycle RdW[0]
load net RdW[1] -attr @rip RdW[1] -pin Decode_cycle RdW[1] -pin Hazard RdW[1] -pin Memory_cycle RdW[1] -port RdW[1] -pin WriteBack_cycle RdW[1]
load net RdW[2] -attr @rip RdW[2] -pin Decode_cycle RdW[2] -pin Hazard RdW[2] -pin Memory_cycle RdW[2] -port RdW[2] -pin WriteBack_cycle RdW[2]
load net ReadDataW[0] -attr @rip ReadDataW[0] -pin Memory_cycle ReadDataW[0] -port ReadDataW[0] -pin WriteBack_cycle ReadDataW[0]
load net ReadDataW[10] -attr @rip ReadDataW[10] -pin Memory_cycle ReadDataW[10] -port ReadDataW[10] -pin WriteBack_cycle ReadDataW[10]
load net ReadDataW[11] -attr @rip ReadDataW[11] -pin Memory_cycle ReadDataW[11] -port ReadDataW[11] -pin WriteBack_cycle ReadDataW[11]
load net ReadDataW[12] -attr @rip ReadDataW[12] -pin Memory_cycle ReadDataW[12] -port ReadDataW[12] -pin WriteBack_cycle ReadDataW[12]
load net ReadDataW[13] -attr @rip ReadDataW[13] -pin Memory_cycle ReadDataW[13] -port ReadDataW[13] -pin WriteBack_cycle ReadDataW[13]
load net ReadDataW[14] -attr @rip ReadDataW[14] -pin Memory_cycle ReadDataW[14] -port ReadDataW[14] -pin WriteBack_cycle ReadDataW[14]
load net ReadDataW[15] -attr @rip ReadDataW[15] -pin Memory_cycle ReadDataW[15] -port ReadDataW[15] -pin WriteBack_cycle ReadDataW[15]
load net ReadDataW[1] -attr @rip ReadDataW[1] -pin Memory_cycle ReadDataW[1] -port ReadDataW[1] -pin WriteBack_cycle ReadDataW[1]
load net ReadDataW[2] -attr @rip ReadDataW[2] -pin Memory_cycle ReadDataW[2] -port ReadDataW[2] -pin WriteBack_cycle ReadDataW[2]
load net ReadDataW[3] -attr @rip ReadDataW[3] -pin Memory_cycle ReadDataW[3] -port ReadDataW[3] -pin WriteBack_cycle ReadDataW[3]
load net ReadDataW[4] -attr @rip ReadDataW[4] -pin Memory_cycle ReadDataW[4] -port ReadDataW[4] -pin WriteBack_cycle ReadDataW[4]
load net ReadDataW[5] -attr @rip ReadDataW[5] -pin Memory_cycle ReadDataW[5] -port ReadDataW[5] -pin WriteBack_cycle ReadDataW[5]
load net ReadDataW[6] -attr @rip ReadDataW[6] -pin Memory_cycle ReadDataW[6] -port ReadDataW[6] -pin WriteBack_cycle ReadDataW[6]
load net ReadDataW[7] -attr @rip ReadDataW[7] -pin Memory_cycle ReadDataW[7] -port ReadDataW[7] -pin WriteBack_cycle ReadDataW[7]
load net ReadDataW[8] -attr @rip ReadDataW[8] -pin Memory_cycle ReadDataW[8] -port ReadDataW[8] -pin WriteBack_cycle ReadDataW[8]
load net ReadDataW[9] -attr @rip ReadDataW[9] -pin Memory_cycle ReadDataW[9] -port ReadDataW[9] -pin WriteBack_cycle ReadDataW[9]
load net RegwriteE -pin Decode_cycle RegwriteE -pin Execute_cycle RegwriteE -port RegwriteE
netloc RegwriteE 1 1 2 820 1070 1540
load net RegwriteM -pin Execute_cycle RegwriteM -pin Hazard RegwriteM -pin Memory_cycle RegwriteM -port RegwriteM
netloc RegwriteM 1 0 3 100 1510 NJ 1510 1660
load net RegwriteW -pin Decode_cycle RegwriteW -pin Hazard RegwriteW -pin Memory_cycle RegwriteW -port RegwriteW -pin WriteBack_cycle RegwriteW
netloc RegwriteW 1 0 3 120 1150 680 1710 NJ
load net ResultSrcE[0] -attr @rip ResultSrcE[0] -pin Decode_cycle ResultSrcE[0] -pin Execute_cycle ResultSrcE[0] -port ResultSrcE[0]
load net ResultSrcE[1] -attr @rip ResultSrcE[1] -pin Decode_cycle ResultSrcE[1] -pin Execute_cycle ResultSrcE[1] -port ResultSrcE[1]
load net ResultSrcM[0] -attr @rip ResultSrcM[0] -pin Execute_cycle ResultSrcM[0] -pin Memory_cycle ResultSrcM[0] -port ResultSrcM[0]
load net ResultSrcM[1] -attr @rip ResultSrcM[1] -pin Execute_cycle ResultSrcM[1] -pin Memory_cycle ResultSrcM[1] -port ResultSrcM[1]
load net ResultSrcW[0] -attr @rip ResultSrcW[0] -pin Memory_cycle ResultSrcW[0] -port ResultSrcW[0] -pin WriteBack_cycle ResultSrcW[0]
load net ResultSrcW[1] -attr @rip ResultSrcW[1] -pin Memory_cycle ResultSrcW[1] -port ResultSrcW[1] -pin WriteBack_cycle ResultSrcW[1]
load net ResultW[0] -attr @rip ResultW[0] -pin Decode_cycle ResultW[0] -pin Execute_cycle ResultW[0] -port ResultW[0] -pin WriteBack_cycle ResultW[0]
load net ResultW[10] -attr @rip ResultW[10] -pin Decode_cycle ResultW[10] -pin Execute_cycle ResultW[10] -port ResultW[10] -pin WriteBack_cycle ResultW[10]
load net ResultW[11] -attr @rip ResultW[11] -pin Decode_cycle ResultW[11] -pin Execute_cycle ResultW[11] -port ResultW[11] -pin WriteBack_cycle ResultW[11]
load net ResultW[12] -attr @rip ResultW[12] -pin Decode_cycle ResultW[12] -pin Execute_cycle ResultW[12] -port ResultW[12] -pin WriteBack_cycle ResultW[12]
load net ResultW[13] -attr @rip ResultW[13] -pin Decode_cycle ResultW[13] -pin Execute_cycle ResultW[13] -port ResultW[13] -pin WriteBack_cycle ResultW[13]
load net ResultW[14] -attr @rip ResultW[14] -pin Decode_cycle ResultW[14] -pin Execute_cycle ResultW[14] -port ResultW[14] -pin WriteBack_cycle ResultW[14]
load net ResultW[15] -attr @rip ResultW[15] -pin Decode_cycle ResultW[15] -pin Execute_cycle ResultW[15] -port ResultW[15] -pin WriteBack_cycle ResultW[15]
load net ResultW[1] -attr @rip ResultW[1] -pin Decode_cycle ResultW[1] -pin Execute_cycle ResultW[1] -port ResultW[1] -pin WriteBack_cycle ResultW[1]
load net ResultW[2] -attr @rip ResultW[2] -pin Decode_cycle ResultW[2] -pin Execute_cycle ResultW[2] -port ResultW[2] -pin WriteBack_cycle ResultW[2]
load net ResultW[3] -attr @rip ResultW[3] -pin Decode_cycle ResultW[3] -pin Execute_cycle ResultW[3] -port ResultW[3] -pin WriteBack_cycle ResultW[3]
load net ResultW[4] -attr @rip ResultW[4] -pin Decode_cycle ResultW[4] -pin Execute_cycle ResultW[4] -port ResultW[4] -pin WriteBack_cycle ResultW[4]
load net ResultW[5] -attr @rip ResultW[5] -pin Decode_cycle ResultW[5] -pin Execute_cycle ResultW[5] -port ResultW[5] -pin WriteBack_cycle ResultW[5]
load net ResultW[6] -attr @rip ResultW[6] -pin Decode_cycle ResultW[6] -pin Execute_cycle ResultW[6] -port ResultW[6] -pin WriteBack_cycle ResultW[6]
load net ResultW[7] -attr @rip ResultW[7] -pin Decode_cycle ResultW[7] -pin Execute_cycle ResultW[7] -port ResultW[7] -pin WriteBack_cycle ResultW[7]
load net ResultW[8] -attr @rip ResultW[8] -pin Decode_cycle ResultW[8] -pin Execute_cycle ResultW[8] -port ResultW[8] -pin WriteBack_cycle ResultW[8]
load net ResultW[9] -attr @rip ResultW[9] -pin Decode_cycle ResultW[9] -pin Execute_cycle ResultW[9] -port ResultW[9] -pin WriteBack_cycle ResultW[9]
load net Rs1E[0] -attr @rip Rs1E[0] -pin Decode_cycle Rs1E[0] -pin Hazard Rs1E[0] -port Rs1E[0]
load net Rs1E[1] -attr @rip Rs1E[1] -pin Decode_cycle Rs1E[1] -pin Hazard Rs1E[1] -port Rs1E[1]
load net Rs1E[2] -attr @rip Rs1E[2] -pin Decode_cycle Rs1E[2] -pin Hazard Rs1E[2] -port Rs1E[2]
load net Rs2E[0] -attr @rip Rs2E[0] -pin Decode_cycle Rs2E[0] -pin Hazard Rs2E[0] -port Rs2E[0]
load net Rs2E[1] -attr @rip Rs2E[1] -pin Decode_cycle Rs2E[1] -pin Hazard Rs2E[1] -port Rs2E[1]
load net Rs2E[2] -attr @rip Rs2E[2] -pin Decode_cycle Rs2E[2] -pin Hazard Rs2E[2] -port Rs2E[2]
load net WriteDataM[0] -attr @rip WriteDataM[0] -pin Execute_cycle WriteDataM[0] -pin Memory_cycle WriteDataM[0] -port WriteDataM[0]
load net WriteDataM[10] -attr @rip WriteDataM[10] -pin Execute_cycle WriteDataM[10] -pin Memory_cycle WriteDataM[10] -port WriteDataM[10]
load net WriteDataM[11] -attr @rip WriteDataM[11] -pin Execute_cycle WriteDataM[11] -pin Memory_cycle WriteDataM[11] -port WriteDataM[11]
load net WriteDataM[12] -attr @rip WriteDataM[12] -pin Execute_cycle WriteDataM[12] -pin Memory_cycle WriteDataM[12] -port WriteDataM[12]
load net WriteDataM[13] -attr @rip WriteDataM[13] -pin Execute_cycle WriteDataM[13] -pin Memory_cycle WriteDataM[13] -port WriteDataM[13]
load net WriteDataM[14] -attr @rip WriteDataM[14] -pin Execute_cycle WriteDataM[14] -pin Memory_cycle WriteDataM[14] -port WriteDataM[14]
load net WriteDataM[15] -attr @rip WriteDataM[15] -pin Execute_cycle WriteDataM[15] -pin Memory_cycle WriteDataM[15] -port WriteDataM[15]
load net WriteDataM[1] -attr @rip WriteDataM[1] -pin Execute_cycle WriteDataM[1] -pin Memory_cycle WriteDataM[1] -port WriteDataM[1]
load net WriteDataM[2] -attr @rip WriteDataM[2] -pin Execute_cycle WriteDataM[2] -pin Memory_cycle WriteDataM[2] -port WriteDataM[2]
load net WriteDataM[3] -attr @rip WriteDataM[3] -pin Execute_cycle WriteDataM[3] -pin Memory_cycle WriteDataM[3] -port WriteDataM[3]
load net WriteDataM[4] -attr @rip WriteDataM[4] -pin Execute_cycle WriteDataM[4] -pin Memory_cycle WriteDataM[4] -port WriteDataM[4]
load net WriteDataM[5] -attr @rip WriteDataM[5] -pin Execute_cycle WriteDataM[5] -pin Memory_cycle WriteDataM[5] -port WriteDataM[5]
load net WriteDataM[6] -attr @rip WriteDataM[6] -pin Execute_cycle WriteDataM[6] -pin Memory_cycle WriteDataM[6] -port WriteDataM[6]
load net WriteDataM[7] -attr @rip WriteDataM[7] -pin Execute_cycle WriteDataM[7] -pin Memory_cycle WriteDataM[7] -port WriteDataM[7]
load net WriteDataM[8] -attr @rip WriteDataM[8] -pin Execute_cycle WriteDataM[8] -pin Memory_cycle WriteDataM[8] -port WriteDataM[8]
load net WriteDataM[9] -attr @rip WriteDataM[9] -pin Execute_cycle WriteDataM[9] -pin Memory_cycle WriteDataM[9] -port WriteDataM[9]
load net branchE -pin Decode_cycle branchE -pin Execute_cycle branchE -port branchE
netloc branchE 1 1 2 760 850 1400
load net clk -pin Decode_cycle clk -pin Execute_cycle clk -pin Fetch_cycle clk -pin Memory_cycle clk -pin WriteBack_cycle clk -port clk
netloc clk 1 0 2 20 650 640
load net immExtE[0] -attr @rip immExtE[0] -pin Decode_cycle immExtE[0] -pin Execute_cycle immExtE[0] -port immExtE[0]
load net immExtE[10] -attr @rip immExtE[10] -pin Decode_cycle immExtE[10] -pin Execute_cycle immExtE[10] -port immExtE[10]
load net immExtE[11] -attr @rip immExtE[11] -pin Decode_cycle immExtE[11] -pin Execute_cycle immExtE[11] -port immExtE[11]
load net immExtE[12] -attr @rip immExtE[12] -pin Decode_cycle immExtE[12] -pin Execute_cycle immExtE[12] -port immExtE[12]
load net immExtE[13] -attr @rip immExtE[13] -pin Decode_cycle immExtE[13] -pin Execute_cycle immExtE[13] -port immExtE[13]
load net immExtE[14] -attr @rip immExtE[14] -pin Decode_cycle immExtE[14] -pin Execute_cycle immExtE[14] -port immExtE[14]
load net immExtE[15] -attr @rip immExtE[15] -pin Decode_cycle immExtE[15] -pin Execute_cycle immExtE[15] -port immExtE[15]
load net immExtE[1] -attr @rip immExtE[1] -pin Decode_cycle immExtE[1] -pin Execute_cycle immExtE[1] -port immExtE[1]
load net immExtE[2] -attr @rip immExtE[2] -pin Decode_cycle immExtE[2] -pin Execute_cycle immExtE[2] -port immExtE[2]
load net immExtE[3] -attr @rip immExtE[3] -pin Decode_cycle immExtE[3] -pin Execute_cycle immExtE[3] -port immExtE[3]
load net immExtE[4] -attr @rip immExtE[4] -pin Decode_cycle immExtE[4] -pin Execute_cycle immExtE[4] -port immExtE[4]
load net immExtE[5] -attr @rip immExtE[5] -pin Decode_cycle immExtE[5] -pin Execute_cycle immExtE[5] -port immExtE[5]
load net immExtE[6] -attr @rip immExtE[6] -pin Decode_cycle immExtE[6] -pin Execute_cycle immExtE[6] -port immExtE[6]
load net immExtE[7] -attr @rip immExtE[7] -pin Decode_cycle immExtE[7] -pin Execute_cycle immExtE[7] -port immExtE[7]
load net immExtE[8] -attr @rip immExtE[8] -pin Decode_cycle immExtE[8] -pin Execute_cycle immExtE[8] -port immExtE[8]
load net immExtE[9] -attr @rip immExtE[9] -pin Decode_cycle immExtE[9] -pin Execute_cycle immExtE[9] -port immExtE[9]
load net pc_plus4D[0] -attr @rip pc_plus4D[0] -pin Decode_cycle pc_plus4D[0] -pin Fetch_cycle pc_plus4D[0] -port pc_plus4D[0]
load net pc_plus4D[10] -attr @rip pc_plus4D[10] -pin Decode_cycle pc_plus4D[10] -pin Fetch_cycle pc_plus4D[10] -port pc_plus4D[10]
load net pc_plus4D[11] -attr @rip pc_plus4D[11] -pin Decode_cycle pc_plus4D[11] -pin Fetch_cycle pc_plus4D[11] -port pc_plus4D[11]
load net pc_plus4D[12] -attr @rip pc_plus4D[12] -pin Decode_cycle pc_plus4D[12] -pin Fetch_cycle pc_plus4D[12] -port pc_plus4D[12]
load net pc_plus4D[13] -attr @rip pc_plus4D[13] -pin Decode_cycle pc_plus4D[13] -pin Fetch_cycle pc_plus4D[13] -port pc_plus4D[13]
load net pc_plus4D[14] -attr @rip pc_plus4D[14] -pin Decode_cycle pc_plus4D[14] -pin Fetch_cycle pc_plus4D[14] -port pc_plus4D[14]
load net pc_plus4D[15] -attr @rip pc_plus4D[15] -pin Decode_cycle pc_plus4D[15] -pin Fetch_cycle pc_plus4D[15] -port pc_plus4D[15]
load net pc_plus4D[1] -attr @rip pc_plus4D[1] -pin Decode_cycle pc_plus4D[1] -pin Fetch_cycle pc_plus4D[1] -port pc_plus4D[1]
load net pc_plus4D[2] -attr @rip pc_plus4D[2] -pin Decode_cycle pc_plus4D[2] -pin Fetch_cycle pc_plus4D[2] -port pc_plus4D[2]
load net pc_plus4D[3] -attr @rip pc_plus4D[3] -pin Decode_cycle pc_plus4D[3] -pin Fetch_cycle pc_plus4D[3] -port pc_plus4D[3]
load net pc_plus4D[4] -attr @rip pc_plus4D[4] -pin Decode_cycle pc_plus4D[4] -pin Fetch_cycle pc_plus4D[4] -port pc_plus4D[4]
load net pc_plus4D[5] -attr @rip pc_plus4D[5] -pin Decode_cycle pc_plus4D[5] -pin Fetch_cycle pc_plus4D[5] -port pc_plus4D[5]
load net pc_plus4D[6] -attr @rip pc_plus4D[6] -pin Decode_cycle pc_plus4D[6] -pin Fetch_cycle pc_plus4D[6] -port pc_plus4D[6]
load net pc_plus4D[7] -attr @rip pc_plus4D[7] -pin Decode_cycle pc_plus4D[7] -pin Fetch_cycle pc_plus4D[7] -port pc_plus4D[7]
load net pc_plus4D[8] -attr @rip pc_plus4D[8] -pin Decode_cycle pc_plus4D[8] -pin Fetch_cycle pc_plus4D[8] -port pc_plus4D[8]
load net pc_plus4D[9] -attr @rip pc_plus4D[9] -pin Decode_cycle pc_plus4D[9] -pin Fetch_cycle pc_plus4D[9] -port pc_plus4D[9]
load net pc_plus4E[0] -attr @rip pc_plus4E[0] -pin Decode_cycle pc_plus4E[0] -pin Execute_cycle pc_plus4E[0] -port pc_plus4E[0]
load net pc_plus4E[10] -attr @rip pc_plus4E[10] -pin Decode_cycle pc_plus4E[10] -pin Execute_cycle pc_plus4E[10] -port pc_plus4E[10]
load net pc_plus4E[11] -attr @rip pc_plus4E[11] -pin Decode_cycle pc_plus4E[11] -pin Execute_cycle pc_plus4E[11] -port pc_plus4E[11]
load net pc_plus4E[12] -attr @rip pc_plus4E[12] -pin Decode_cycle pc_plus4E[12] -pin Execute_cycle pc_plus4E[12] -port pc_plus4E[12]
load net pc_plus4E[13] -attr @rip pc_plus4E[13] -pin Decode_cycle pc_plus4E[13] -pin Execute_cycle pc_plus4E[13] -port pc_plus4E[13]
load net pc_plus4E[14] -attr @rip pc_plus4E[14] -pin Decode_cycle pc_plus4E[14] -pin Execute_cycle pc_plus4E[14] -port pc_plus4E[14]
load net pc_plus4E[15] -attr @rip pc_plus4E[15] -pin Decode_cycle pc_plus4E[15] -pin Execute_cycle pc_plus4E[15] -port pc_plus4E[15]
load net pc_plus4E[1] -attr @rip pc_plus4E[1] -pin Decode_cycle pc_plus4E[1] -pin Execute_cycle pc_plus4E[1] -port pc_plus4E[1]
load net pc_plus4E[2] -attr @rip pc_plus4E[2] -pin Decode_cycle pc_plus4E[2] -pin Execute_cycle pc_plus4E[2] -port pc_plus4E[2]
load net pc_plus4E[3] -attr @rip pc_plus4E[3] -pin Decode_cycle pc_plus4E[3] -pin Execute_cycle pc_plus4E[3] -port pc_plus4E[3]
load net pc_plus4E[4] -attr @rip pc_plus4E[4] -pin Decode_cycle pc_plus4E[4] -pin Execute_cycle pc_plus4E[4] -port pc_plus4E[4]
load net pc_plus4E[5] -attr @rip pc_plus4E[5] -pin Decode_cycle pc_plus4E[5] -pin Execute_cycle pc_plus4E[5] -port pc_plus4E[5]
load net pc_plus4E[6] -attr @rip pc_plus4E[6] -pin Decode_cycle pc_plus4E[6] -pin Execute_cycle pc_plus4E[6] -port pc_plus4E[6]
load net pc_plus4E[7] -attr @rip pc_plus4E[7] -pin Decode_cycle pc_plus4E[7] -pin Execute_cycle pc_plus4E[7] -port pc_plus4E[7]
load net pc_plus4E[8] -attr @rip pc_plus4E[8] -pin Decode_cycle pc_plus4E[8] -pin Execute_cycle pc_plus4E[8] -port pc_plus4E[8]
load net pc_plus4E[9] -attr @rip pc_plus4E[9] -pin Decode_cycle pc_plus4E[9] -pin Execute_cycle pc_plus4E[9] -port pc_plus4E[9]
load net pc_plus4F[0] -attr @rip pc_plus4F[0] -pin Fetch_cycle pc_plus4F[0] -port pc_plus4F[0]
load net pc_plus4F[10] -attr @rip pc_plus4F[10] -pin Fetch_cycle pc_plus4F[10] -port pc_plus4F[10]
load net pc_plus4F[11] -attr @rip pc_plus4F[11] -pin Fetch_cycle pc_plus4F[11] -port pc_plus4F[11]
load net pc_plus4F[12] -attr @rip pc_plus4F[12] -pin Fetch_cycle pc_plus4F[12] -port pc_plus4F[12]
load net pc_plus4F[13] -attr @rip pc_plus4F[13] -pin Fetch_cycle pc_plus4F[13] -port pc_plus4F[13]
load net pc_plus4F[14] -attr @rip pc_plus4F[14] -pin Fetch_cycle pc_plus4F[14] -port pc_plus4F[14]
load net pc_plus4F[15] -attr @rip pc_plus4F[15] -pin Fetch_cycle pc_plus4F[15] -port pc_plus4F[15]
load net pc_plus4F[1] -attr @rip pc_plus4F[1] -pin Fetch_cycle pc_plus4F[1] -port pc_plus4F[1]
load net pc_plus4F[2] -attr @rip pc_plus4F[2] -pin Fetch_cycle pc_plus4F[2] -port pc_plus4F[2]
load net pc_plus4F[3] -attr @rip pc_plus4F[3] -pin Fetch_cycle pc_plus4F[3] -port pc_plus4F[3]
load net pc_plus4F[4] -attr @rip pc_plus4F[4] -pin Fetch_cycle pc_plus4F[4] -port pc_plus4F[4]
load net pc_plus4F[5] -attr @rip pc_plus4F[5] -pin Fetch_cycle pc_plus4F[5] -port pc_plus4F[5]
load net pc_plus4F[6] -attr @rip pc_plus4F[6] -pin Fetch_cycle pc_plus4F[6] -port pc_plus4F[6]
load net pc_plus4F[7] -attr @rip pc_plus4F[7] -pin Fetch_cycle pc_plus4F[7] -port pc_plus4F[7]
load net pc_plus4F[8] -attr @rip pc_plus4F[8] -pin Fetch_cycle pc_plus4F[8] -port pc_plus4F[8]
load net pc_plus4F[9] -attr @rip pc_plus4F[9] -pin Fetch_cycle pc_plus4F[9] -port pc_plus4F[9]
load net pc_plus4F_D[0] -attr @rip pc_plus4F_D[0] -pin Fetch_cycle pc_plus4F_D[0] -port pc_plus4F_D[0]
load net pc_plus4F_D[10] -attr @rip pc_plus4F_D[10] -pin Fetch_cycle pc_plus4F_D[10] -port pc_plus4F_D[10]
load net pc_plus4F_D[11] -attr @rip pc_plus4F_D[11] -pin Fetch_cycle pc_plus4F_D[11] -port pc_plus4F_D[11]
load net pc_plus4F_D[12] -attr @rip pc_plus4F_D[12] -pin Fetch_cycle pc_plus4F_D[12] -port pc_plus4F_D[12]
load net pc_plus4F_D[13] -attr @rip pc_plus4F_D[13] -pin Fetch_cycle pc_plus4F_D[13] -port pc_plus4F_D[13]
load net pc_plus4F_D[14] -attr @rip pc_plus4F_D[14] -pin Fetch_cycle pc_plus4F_D[14] -port pc_plus4F_D[14]
load net pc_plus4F_D[15] -attr @rip pc_plus4F_D[15] -pin Fetch_cycle pc_plus4F_D[15] -port pc_plus4F_D[15]
load net pc_plus4F_D[1] -attr @rip pc_plus4F_D[1] -pin Fetch_cycle pc_plus4F_D[1] -port pc_plus4F_D[1]
load net pc_plus4F_D[2] -attr @rip pc_plus4F_D[2] -pin Fetch_cycle pc_plus4F_D[2] -port pc_plus4F_D[2]
load net pc_plus4F_D[3] -attr @rip pc_plus4F_D[3] -pin Fetch_cycle pc_plus4F_D[3] -port pc_plus4F_D[3]
load net pc_plus4F_D[4] -attr @rip pc_plus4F_D[4] -pin Fetch_cycle pc_plus4F_D[4] -port pc_plus4F_D[4]
load net pc_plus4F_D[5] -attr @rip pc_plus4F_D[5] -pin Fetch_cycle pc_plus4F_D[5] -port pc_plus4F_D[5]
load net pc_plus4F_D[6] -attr @rip pc_plus4F_D[6] -pin Fetch_cycle pc_plus4F_D[6] -port pc_plus4F_D[6]
load net pc_plus4F_D[7] -attr @rip pc_plus4F_D[7] -pin Fetch_cycle pc_plus4F_D[7] -port pc_plus4F_D[7]
load net pc_plus4F_D[8] -attr @rip pc_plus4F_D[8] -pin Fetch_cycle pc_plus4F_D[8] -port pc_plus4F_D[8]
load net pc_plus4F_D[9] -attr @rip pc_plus4F_D[9] -pin Fetch_cycle pc_plus4F_D[9] -port pc_plus4F_D[9]
load net pc_plus4M[0] -attr @rip pc_plus4M[0] -pin Execute_cycle pc_plus4M[0] -pin Memory_cycle pc_plus4M[0] -port pc_plus4M[0]
load net pc_plus4M[10] -attr @rip pc_plus4M[10] -pin Execute_cycle pc_plus4M[10] -pin Memory_cycle pc_plus4M[10] -port pc_plus4M[10]
load net pc_plus4M[11] -attr @rip pc_plus4M[11] -pin Execute_cycle pc_plus4M[11] -pin Memory_cycle pc_plus4M[11] -port pc_plus4M[11]
load net pc_plus4M[12] -attr @rip pc_plus4M[12] -pin Execute_cycle pc_plus4M[12] -pin Memory_cycle pc_plus4M[12] -port pc_plus4M[12]
load net pc_plus4M[13] -attr @rip pc_plus4M[13] -pin Execute_cycle pc_plus4M[13] -pin Memory_cycle pc_plus4M[13] -port pc_plus4M[13]
load net pc_plus4M[14] -attr @rip pc_plus4M[14] -pin Execute_cycle pc_plus4M[14] -pin Memory_cycle pc_plus4M[14] -port pc_plus4M[14]
load net pc_plus4M[15] -attr @rip pc_plus4M[15] -pin Execute_cycle pc_plus4M[15] -pin Memory_cycle pc_plus4M[15] -port pc_plus4M[15]
load net pc_plus4M[1] -attr @rip pc_plus4M[1] -pin Execute_cycle pc_plus4M[1] -pin Memory_cycle pc_plus4M[1] -port pc_plus4M[1]
load net pc_plus4M[2] -attr @rip pc_plus4M[2] -pin Execute_cycle pc_plus4M[2] -pin Memory_cycle pc_plus4M[2] -port pc_plus4M[2]
load net pc_plus4M[3] -attr @rip pc_plus4M[3] -pin Execute_cycle pc_plus4M[3] -pin Memory_cycle pc_plus4M[3] -port pc_plus4M[3]
load net pc_plus4M[4] -attr @rip pc_plus4M[4] -pin Execute_cycle pc_plus4M[4] -pin Memory_cycle pc_plus4M[4] -port pc_plus4M[4]
load net pc_plus4M[5] -attr @rip pc_plus4M[5] -pin Execute_cycle pc_plus4M[5] -pin Memory_cycle pc_plus4M[5] -port pc_plus4M[5]
load net pc_plus4M[6] -attr @rip pc_plus4M[6] -pin Execute_cycle pc_plus4M[6] -pin Memory_cycle pc_plus4M[6] -port pc_plus4M[6]
load net pc_plus4M[7] -attr @rip pc_plus4M[7] -pin Execute_cycle pc_plus4M[7] -pin Memory_cycle pc_plus4M[7] -port pc_plus4M[7]
load net pc_plus4M[8] -attr @rip pc_plus4M[8] -pin Execute_cycle pc_plus4M[8] -pin Memory_cycle pc_plus4M[8] -port pc_plus4M[8]
load net pc_plus4M[9] -attr @rip pc_plus4M[9] -pin Execute_cycle pc_plus4M[9] -pin Memory_cycle pc_plus4M[9] -port pc_plus4M[9]
load net pc_plus4W[0] -attr @rip pc_plus4W[0] -pin Memory_cycle pc_plus4W[0] -pin WriteBack_cycle pc_plus4W[0] -port pc_plus4W[0]
load net pc_plus4W[10] -attr @rip pc_plus4W[10] -pin Memory_cycle pc_plus4W[10] -pin WriteBack_cycle pc_plus4W[10] -port pc_plus4W[10]
load net pc_plus4W[11] -attr @rip pc_plus4W[11] -pin Memory_cycle pc_plus4W[11] -pin WriteBack_cycle pc_plus4W[11] -port pc_plus4W[11]
load net pc_plus4W[12] -attr @rip pc_plus4W[12] -pin Memory_cycle pc_plus4W[12] -pin WriteBack_cycle pc_plus4W[12] -port pc_plus4W[12]
load net pc_plus4W[13] -attr @rip pc_plus4W[13] -pin Memory_cycle pc_plus4W[13] -pin WriteBack_cycle pc_plus4W[13] -port pc_plus4W[13]
load net pc_plus4W[14] -attr @rip pc_plus4W[14] -pin Memory_cycle pc_plus4W[14] -pin WriteBack_cycle pc_plus4W[14] -port pc_plus4W[14]
load net pc_plus4W[15] -attr @rip pc_plus4W[15] -pin Memory_cycle pc_plus4W[15] -pin WriteBack_cycle pc_plus4W[15] -port pc_plus4W[15]
load net pc_plus4W[1] -attr @rip pc_plus4W[1] -pin Memory_cycle pc_plus4W[1] -pin WriteBack_cycle pc_plus4W[1] -port pc_plus4W[1]
load net pc_plus4W[2] -attr @rip pc_plus4W[2] -pin Memory_cycle pc_plus4W[2] -pin WriteBack_cycle pc_plus4W[2] -port pc_plus4W[2]
load net pc_plus4W[3] -attr @rip pc_plus4W[3] -pin Memory_cycle pc_plus4W[3] -pin WriteBack_cycle pc_plus4W[3] -port pc_plus4W[3]
load net pc_plus4W[4] -attr @rip pc_plus4W[4] -pin Memory_cycle pc_plus4W[4] -pin WriteBack_cycle pc_plus4W[4] -port pc_plus4W[4]
load net pc_plus4W[5] -attr @rip pc_plus4W[5] -pin Memory_cycle pc_plus4W[5] -pin WriteBack_cycle pc_plus4W[5] -port pc_plus4W[5]
load net pc_plus4W[6] -attr @rip pc_plus4W[6] -pin Memory_cycle pc_plus4W[6] -pin WriteBack_cycle pc_plus4W[6] -port pc_plus4W[6]
load net pc_plus4W[7] -attr @rip pc_plus4W[7] -pin Memory_cycle pc_plus4W[7] -pin WriteBack_cycle pc_plus4W[7] -port pc_plus4W[7]
load net pc_plus4W[8] -attr @rip pc_plus4W[8] -pin Memory_cycle pc_plus4W[8] -pin WriteBack_cycle pc_plus4W[8] -port pc_plus4W[8]
load net pc_plus4W[9] -attr @rip pc_plus4W[9] -pin Memory_cycle pc_plus4W[9] -pin WriteBack_cycle pc_plus4W[9] -port pc_plus4W[9]
load net rst -pin Decode_cycle rst -pin Execute_cycle rst -pin Fetch_cycle rst -pin Hazard rst -pin Memory_cycle rst -pin WriteBack_cycle rst -port rst
netloc rst 1 0 2 40 1130 720
load netBundle @ALUControlE 4 ALUControlE[3] ALUControlE[2] ALUControlE[1] ALUControlE[0] -autobundled
netbloc @ALUControlE 1 1 2 920 290 1440
load netBundle @ALUResultM 16 ALUResultM[15] ALUResultM[14] ALUResultM[13] ALUResultM[12] ALUResultM[11] ALUResultM[10] ALUResultM[9] ALUResultM[8] ALUResultM[7] ALUResultM[6] ALUResultM[5] ALUResultM[4] ALUResultM[3] ALUResultM[2] ALUResultM[1] ALUResultM[0] -autobundled
netbloc @ALUResultM 1 0 3 180 990 660J 950 1500
load netBundle @ALUResultW 16 ALUResultW[15] ALUResultW[14] ALUResultW[13] ALUResultW[12] ALUResultW[11] ALUResultW[10] ALUResultW[9] ALUResultW[8] ALUResultW[7] ALUResultW[6] ALUResultW[5] ALUResultW[4] ALUResultW[3] ALUResultW[2] ALUResultW[1] ALUResultW[0] -autobundled
netbloc @ALUResultW 1 0 3 200 1830 580 1650 NJ
load netBundle @Forward_A_E 2 Forward_A_E[1] Forward_A_E[0] -autobundled
netbloc @Forward_A_E 1 1 2 620 910 NJ
load netBundle @Forward_B_E 2 Forward_B_E[1] Forward_B_E[0] -autobundled
netbloc @Forward_B_E 1 1 2 580 930 1560J
load netBundle @InstrD 16 InstrD[15] InstrD[14] InstrD[13] InstrD[12] InstrD[11] InstrD[10] InstrD[9] InstrD[8] InstrD[7] InstrD[6] InstrD[5] InstrD[4] InstrD[3] InstrD[2] InstrD[1] InstrD[0] -autobundled
netbloc @InstrD 1 1 2 680 20 NJ
load netBundle @InstrF 16 InstrF[15] InstrF[14] InstrF[13] InstrF[12] InstrF[11] InstrF[10] InstrF[9] InstrF[8] InstrF[7] InstrF[6] InstrF[5] InstrF[4] InstrF[3] InstrF[2] InstrF[1] InstrF[0] -autobundled
netbloc @InstrF 1 1 2 700J 70 1640J
load netBundle @InstrF_D 16 InstrF_D[15] InstrF_D[14] InstrF_D[13] InstrF_D[12] InstrF_D[11] InstrF_D[10] InstrF_D[9] InstrF_D[8] InstrF_D[7] InstrF_D[6] InstrF_D[5] InstrF_D[4] InstrF_D[3] InstrF_D[2] InstrF_D[1] InstrF_D[0] -autobundled
netbloc @InstrF_D 1 1 2 860J 90 1660J
load netBundle @PCD 16 PCD[15] PCD[14] PCD[13] PCD[12] PCD[11] PCD[10] PCD[9] PCD[8] PCD[7] PCD[6] PCD[5] PCD[4] PCD[3] PCD[2] PCD[1] PCD[0] -autobundled
netbloc @PCD 1 1 2 880 110 NJ
load netBundle @PCE 16 PCE[15] PCE[14] PCE[13] PCE[12] PCE[11] PCE[10] PCE[9] PCE[8] PCE[7] PCE[6] PCE[5] PCE[4] PCE[3] PCE[2] PCE[1] PCE[0] -autobundled
netbloc @PCE 1 1 2 900 330 1500
load netBundle @PCF 16 PCF[15] PCF[14] PCF[13] PCF[12] PCF[11] PCF[10] PCF[9] PCF[8] PCF[7] PCF[6] PCF[5] PCF[4] PCF[3] PCF[2] PCF[1] PCF[0] -autobundled
netbloc @PCF 1 1 2 NJ 150 1640J
load netBundle @PCF_D 16 PCF_D[15] PCF_D[14] PCF_D[13] PCF_D[12] PCF_D[11] PCF_D[10] PCF_D[9] PCF_D[8] PCF_D[7] PCF_D[6] PCF_D[5] PCF_D[4] PCF_D[3] PCF_D[2] PCF_D[1] PCF_D[0] -autobundled
netbloc @PCF_D 1 1 2 NJ 170 NJ
load netBundle @PC_F 16 PC_F[15] PC_F[14] PC_F[13] PC_F[12] PC_F[11] PC_F[10] PC_F[9] PC_F[8] PC_F[7] PC_F[6] PC_F[5] PC_F[4] PC_F[3] PC_F[2] PC_F[1] PC_F[0] -autobundled
netbloc @PC_F 1 1 2 NJ 190 1660J
load netBundle @PC_TargetE 16 PC_TargetE[15] PC_TargetE[14] PC_TargetE[13] PC_TargetE[12] PC_TargetE[11] PC_TargetE[10] PC_TargetE[9] PC_TargetE[8] PC_TargetE[7] PC_TargetE[6] PC_TargetE[5] PC_TargetE[4] PC_TargetE[3] PC_TargetE[2] PC_TargetE[1] PC_TargetE[0] -autobundled
netbloc @PC_TargetE 1 0 3 220 290 600J 270 1580
load netBundle @RD1E 16 RD1E[15] RD1E[14] RD1E[13] RD1E[12] RD1E[11] RD1E[10] RD1E[9] RD1E[8] RD1E[7] RD1E[6] RD1E[5] RD1E[4] RD1E[3] RD1E[2] RD1E[1] RD1E[0] -autobundled
netbloc @RD1E 1 1 2 960 350 1540
load netBundle @RD2E 16 RD2E[15] RD2E[14] RD2E[13] RD2E[12] RD2E[11] RD2E[10] RD2E[9] RD2E[8] RD2E[7] RD2E[6] RD2E[5] RD2E[4] RD2E[3] RD2E[2] RD2E[1] RD2E[0] -autobundled
netbloc @RD2E 1 1 2 860 390 1340
load netBundle @RdE 3 RdE[2] RdE[1] RdE[0] -autobundled
netbloc @RdE 1 1 2 840 810 1340
load netBundle @RdM 3 RdM[2] RdM[1] RdM[0] -autobundled
netbloc @RdM 1 0 3 60 1050 NJ 1050 1320
load netBundle @RdW 3 RdW[2] RdW[1] RdW[0] -autobundled
netbloc @RdW 1 0 3 80 970 600 370 NJ
load netBundle @ReadDataW 16 ReadDataW[15] ReadDataW[14] ReadDataW[13] ReadDataW[12] ReadDataW[11] ReadDataW[10] ReadDataW[9] ReadDataW[8] ReadDataW[7] ReadDataW[6] ReadDataW[5] ReadDataW[4] ReadDataW[3] ReadDataW[2] ReadDataW[1] ReadDataW[0] -autobundled
netbloc @ReadDataW 1 0 3 60 1850 940 1680 NJ
load netBundle @ResultSrcE 2 ResultSrcE[1] ResultSrcE[0] -autobundled
netbloc @ResultSrcE 1 1 2 740 830 1440
load netBundle @ResultSrcM 2 ResultSrcM[1] ResultSrcM[0] -autobundled
netbloc @ResultSrcM 1 0 3 140 1530 NJ 1530 1620
load netBundle @ResultSrcW 2 ResultSrcW[1] ResultSrcW[0] -autobundled
netbloc @ResultSrcW 1 0 3 100 1870 560 1740 NJ
load netBundle @ResultW 16 ResultW[15] ResultW[14] ResultW[13] ResultW[12] ResultW[11] ResultW[10] ResultW[9] ResultW[8] ResultW[7] ResultW[6] ResultW[5] ResultW[4] ResultW[3] ResultW[2] ResultW[1] ResultW[0] -autobundled
netbloc @ResultW 1 1 2 700 1800 NJ
load netBundle @Rs1E 3 Rs1E[2] Rs1E[1] Rs1E[0] -autobundled
netbloc @Rs1E 1 0 3 180 410 NJ 410 1420
load netBundle @Rs2E 3 Rs2E[2] Rs2E[1] Rs2E[0] -autobundled
netbloc @Rs2E 1 0 3 220 430 NJ 430 1380
load netBundle @WriteDataM 16 WriteDataM[15] WriteDataM[14] WriteDataM[13] WriteDataM[12] WriteDataM[11] WriteDataM[10] WriteDataM[9] WriteDataM[8] WriteDataM[7] WriteDataM[6] WriteDataM[5] WriteDataM[4] WriteDataM[3] WriteDataM[2] WriteDataM[1] WriteDataM[0] -autobundled
netbloc @WriteDataM 1 0 3 160 1550 NJ 1550 1480
load netBundle @immExtE 16 immExtE[15] immExtE[14] immExtE[13] immExtE[12] immExtE[11] immExtE[10] immExtE[9] immExtE[8] immExtE[7] immExtE[6] immExtE[5] immExtE[4] immExtE[3] immExtE[2] immExtE[1] immExtE[0] -autobundled
netbloc @immExtE 1 1 2 780 870 1360
load netBundle @pc_plus4D 16 pc_plus4D[15] pc_plus4D[14] pc_plus4D[13] pc_plus4D[12] pc_plus4D[11] pc_plus4D[10] pc_plus4D[9] pc_plus4D[8] pc_plus4D[7] pc_plus4D[6] pc_plus4D[5] pc_plus4D[4] pc_plus4D[3] pc_plus4D[2] pc_plus4D[1] pc_plus4D[0] -autobundled
netbloc @pc_plus4D 1 1 2 660 210 1640J
load netBundle @pc_plus4E 16 pc_plus4E[15] pc_plus4E[14] pc_plus4E[13] pc_plus4E[12] pc_plus4E[11] pc_plus4E[10] pc_plus4E[9] pc_plus4E[8] pc_plus4E[7] pc_plus4E[6] pc_plus4E[5] pc_plus4E[4] pc_plus4E[3] pc_plus4E[2] pc_plus4E[1] pc_plus4E[0] -autobundled
netbloc @pc_plus4E 1 1 2 800 890 1320
load netBundle @pc_plus4F 16 pc_plus4F[15] pc_plus4F[14] pc_plus4F[13] pc_plus4F[12] pc_plus4F[11] pc_plus4F[10] pc_plus4F[9] pc_plus4F[8] pc_plus4F[7] pc_plus4F[6] pc_plus4F[5] pc_plus4F[4] pc_plus4F[3] pc_plus4F[2] pc_plus4F[1] pc_plus4F[0] -autobundled
netbloc @pc_plus4F 1 1 2 NJ 230 1620J
load netBundle @pc_plus4F_D 16 pc_plus4F_D[15] pc_plus4F_D[14] pc_plus4F_D[13] pc_plus4F_D[12] pc_plus4F_D[11] pc_plus4F_D[10] pc_plus4F_D[9] pc_plus4F_D[8] pc_plus4F_D[7] pc_plus4F_D[6] pc_plus4F_D[5] pc_plus4F_D[4] pc_plus4F_D[3] pc_plus4F_D[2] pc_plus4F_D[1] pc_plus4F_D[0] -autobundled
netbloc @pc_plus4F_D 1 1 2 NJ 250 1600J
load netBundle @pc_plus4M 16 pc_plus4M[15] pc_plus4M[14] pc_plus4M[13] pc_plus4M[12] pc_plus4M[11] pc_plus4M[10] pc_plus4M[9] pc_plus4M[8] pc_plus4M[7] pc_plus4M[6] pc_plus4M[5] pc_plus4M[4] pc_plus4M[3] pc_plus4M[2] pc_plus4M[1] pc_plus4M[0] -autobundled
netbloc @pc_plus4M 1 0 3 200 1570 NJ 1570 1340
load netBundle @pc_plus4W 16 pc_plus4W[15] pc_plus4W[14] pc_plus4W[13] pc_plus4W[12] pc_plus4W[11] pc_plus4W[10] pc_plus4W[9] pc_plus4W[8] pc_plus4W[7] pc_plus4W[6] pc_plus4W[5] pc_plus4W[4] pc_plus4W[3] pc_plus4W[2] pc_plus4W[1] pc_plus4W[0] -autobundled
netbloc @pc_plus4W 1 0 3 220 1890 540 1770 NJ
levelinfo -pg 1 0 350 1130 1680
pagesize -pg 1 -db -bbox -sgen -70 0 1850 2130
show
fullfit
#
# initialize ictrl to current module Pipeline_Top work:Pipeline_Top:NOFILE
ictrl init topinfo |
