v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -310 530 -310 {lab=vi}
N 180 -260 210 -260 {lab=p2}
N 180 -560 210 -560 {lab=p2}
N 490 -310 490 -220 {lab=vi}
N 250 -310 250 -270 {lab=vbot}
N 440 -310 490 -310 {lab=vi}
N 250 -520 380 -520 {lab=vtop}
N 250 -530 250 -520 {lab=vtop}
N 250 -310 380 -310 {lab=vbot}
N 250 -340 250 -310 {lab=vbot}
N 560 -310 560 -250 {lab=GND}
N 440 -220 490 -220 {lab=vi}
N 590 -310 620 -310 {lab=vo}
N 620 -310 620 -220 {lab=vo}
N 620 -220 700 -220 {lab=vo}
N 410 -620 410 -560 {lab=p1}
N 380 -620 410 -620 {lab=p1}
N 180 -620 250 -620 {lab=vdd}
N 250 -620 250 -590 {lab=vdd}
N 560 -520 560 -320 {lab=vg}
N 250 -520 250 -400 {lab=vtop}
N 670 -520 690 -520 {lab=#net1}
N 640 -520 640 -460 {lab=GND}
N 720 -520 720 -460 {lab=GND}
N 440 -520 560 -520 {lab=vg}
N 560 -520 610 -520 {lab=vg}
C {devices/capa.sym} 250 -370 0 0 {name=Cm1
m=1
value=cb
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 250 -260 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {switch_ngspice.sym} 250 -560 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff "}
C {switch_ngspice.sym} 410 -520 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 500 -520 0 0 {name=p16 sig_type=std_logic lab=vg}
C {switch_ngspice.sym} 410 -310 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 410 -350 0 1 {name=p20 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 180 -260 0 0 {name=p22 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 720 -560 0 1 {name=p26 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 340 -520 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 340 -310 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {devices/gnd.sym} 210 -240 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} 210 -540 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 250 -230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 390 -560 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 390 -350 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} 750 -520 3 0 {name=l7 lab=GND}
C {devices/gnd.sym} 560 -250 0 0 {name=l15 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -330 3 1 {name=M1
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} 165 -40 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 440 -220 0 0 {name=p1 lab=vi}
C {opin.sym} 700 -220 0 0 {name=p2 lab=vo}
C {ipin.sym} 180 -560 0 0 {name=p3 lab=p2}
C {ipin.sym} 380 -620 0 0 {name=p4 lab=p1}
C {iopin.sym} 180 -620 0 1 {name=p5 lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -540 3 1 {name=M8
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 640 -560 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 720 -540 3 1 {name=M4
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 640 -460 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 720 -460 0 1 {name=l10 lab=GND}
