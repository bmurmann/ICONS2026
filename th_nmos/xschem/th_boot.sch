v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 910 -430 940 -430 {lab=vop}
N 390 -240 390 -190 {lab=vom}
N 390 -240 490 -240 {lab=vom}
N 390 -130 390 -90 {lab=vss}
N 160 -90 390 -90 {lab=vss}
N 700 -430 740 -430 {lab=vip}
N 460 -380 460 -350 {lab=vss}
N 390 -410 420 -410 {lab=ph}
N 460 -660 460 -640 {lab=vdd}
N 390 -610 420 -610 {lab=ph}
N 460 -570 460 -550 {lab=vtop}
N 770 -570 820 -570 {lab=vgp}
N 460 -570 620 -570 {lab=vtop}
N 460 -580 460 -570 {lab=vtop}
N 700 -430 700 -350 {lab=vip}
N 460 -490 460 -460 {lab=vbot}
N 460 -460 460 -420 {lab=vbot}
N 680 -460 700 -460 {lab=vip}
N 700 -460 700 -430 {lab=vip}
N 280 -510 310 -510 {lab=trackb}
N 880 -570 920 -570 {lab=vss}
N 680 -180 700 -180 {lab=#net1}
N 680 -180 680 -160 {lab=#net1}
N 680 -160 860 -120 {lab=#net1}
N 860 -120 860 -100 {lab=#net1}
N 820 -100 860 -100 {lab=#net1}
N 680 -120 700 -120 {lab=#net2}
N 680 -140 680 -120 {lab=#net2}
N 680 -140 860 -160 {lab=#net2}
N 860 -200 860 -160 {lab=#net2}
N 820 -200 860 -200 {lab=#net2}
N 650 -220 700 -220 {lab=trackb}
N 650 -80 700 -80 {lab=track}
N 860 -200 920 -200 {lab=#net2}
N 860 -100 920 -100 {lab=#net1}
N -110 -310 -110 -240 {lab=vss}
N -80 -310 -30 -310 {lab=#net3}
N -30 -310 -30 -260 {lab=#net3}
N -160 -260 -30 -260 {lab=#net3}
N -160 -310 -160 -260 {lab=#net3}
N -160 -310 -140 -310 {lab=#net3}
N -30 -340 -30 -310 {lab=#net3}
N -30 -260 -30 -230 {lab=#net3}
N -30 -170 -30 -130 {lab=vss}
N -110 -420 -110 -350 {lab=#net4}
N -30 -420 -30 -400 {lab=#net4}
N -110 -420 -30 -420 {lab=#net4}
N 1000 -200 1070 -200 {lab=ph}
N 1000 -100 1070 -100 {lab=pt}
N 1000 -430 1060 -430 {lab=vss}
N 910 -530 1080 -530 {lab=vop}
N 910 -530 910 -430 {lab=vop}
N 800 -430 910 -430 {lab=vop}
N 760 -720 800 -720 {lab=vgp}
N 760 -720 760 -570 {lab=vgp}
N 680 -570 760 -570 {lab=vgp}
N 310 -240 390 -240 {lab=vom}
N 160 -240 250 -240 {lab=vim}
N 460 -460 620 -460 {lab=vbot}
N 70 -510 200 -510 {lab=track}
N 770 -570 770 -470 {lab=vgp}
N 760 -570 770 -570 {lab=vgp}
N 660 -350 700 -350 {lab=vip}
N 770 -430 770 -350 {lab=vss}
C {title.sym} 250 -30 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 660 -350 0 0 {name=p1 lab=vip}
C {devices/capa.sym} 390 -160 0 0 {name=Cm
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 160 -240 0 0 {name=p5 lab=vim}
C {opin.sym} 490 -240 0 0 {name=p6 lab=vom}
C {ipin.sym} 70 -510 0 0 {name=p7 lab=track}
C {iopin.sym} 160 -90 0 1 {name=p8 lab=vss}
C {iopin.sym} 160 -400 0 1 {name=p10 lab=vdd}
C {devices/capa.sym} 460 -520 0 0 {name=Cm1
m=1
value=\{cb\}
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 460 -410 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 460 -350 2 1 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 420 -390 2 1 {name=p13 sig_type=std_logic lab=vss}
C {switch_ngspice.sym} 460 -610 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff "}
C {devices/lab_wire.sym} 460 -660 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 420 -590 2 1 {name=p15 sig_type=std_logic lab=vss}
C {switch_ngspice.sym} 650 -570 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 740 -570 0 0 {name=p16 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 630 -610 0 0 {name=p17 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 650 -610 0 1 {name=p18 sig_type=std_logic lab=pt}
C {switch_ngspice.sym} 650 -460 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 630 -500 0 0 {name=p19 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 650 -500 0 1 {name=p20 sig_type=std_logic lab=pt}
C {devices/lab_wire.sym} 390 -610 0 0 {name=p21 sig_type=std_logic lab=ph}
C {devices/lab_wire.sym} 390 -410 0 0 {name=p22 sig_type=std_logic lab=ph}
C {devices/lab_wire.sym} 310 -510 0 1 {name=p23 sig_type=std_logic lab=trackb}
C {switch_ngspice.sym} 850 -570 1 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=1 ROFF=roff"}
C {devices/lab_wire.sym} 830 -610 0 0 {name=p25 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 850 -610 0 1 {name=p26 sig_type=std_logic lab=ph}
C {devices/lab_wire.sym} 920 -570 2 0 {name=p27 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 550 -570 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 550 -460 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {devices/lab_wire.sym} 650 -80 0 0 {name=p30 sig_type=std_logic lab=track}
C {devices/lab_wire.sym} 650 -220 0 0 {name=p31 sig_type=std_logic lab=trackb}
C {devices/lab_wire.sym} 1000 -100 2 0 {name=p32 sig_type=std_logic lab=pt}
C {devices/lab_wire.sym} 1000 -200 2 0 {name=p33 sig_type=std_logic lab=ph}
C {devices/lab_wire.sym} -110 -240 2 1 {name=p34 sig_type=std_logic lab=vss}
C {vsource.sym} -30 -200 0 0 {name=V1 value=vcm savecurrent=false}
C {vsource.sym} -30 -370 0 0 {name=V2 value=vdd savecurrent=false}
C {devices/lab_wire.sym} -30 -130 2 1 {name=p35 sig_type=std_logic lab=vss}
C {devices/capa.sym} 1100 -200 3 0 {name=Cp1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1100 -100 3 0 {name=Cp2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1130 -200 2 0 {name=p36 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1130 -100 2 0 {name=p37 sig_type=std_logic lab=vss}
C {opin.sym} 1080 -530 0 0 {name=p2 lab=vop}
C {devices/capa.sym} 970 -430 3 0 {name=Cp
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {sg13g2_inv_2.sym} 960 -200 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 960 -100 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_2.sym} 240 -510 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nand2_2.sym} 760 -200 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_nand2_2.sym} 760 -100 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13_lv_nmos.sym} -110 -330 3 1 {name=mdum
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 830 -720 3 0 {name=Cp4
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 860 -720 2 0 {name=p50 sig_type=std_logic lab=vss}
C {res.sym} 280 -240 1 0 {name=R2
value=10
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 1060 -430 2 0 {name=p3 sig_type=std_logic lab=vss}
C {sg13_lv_nmos.sym} 770 -450 3 1 {name=mdum1
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 770 -350 2 1 {name=p4 sig_type=std_logic lab=vss}
