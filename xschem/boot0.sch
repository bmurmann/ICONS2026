v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -310 530 -310 {lab=vi}
N 180 -260 210 -260 {lab=p2}
N 180 -500 210 -500 {lab=p2}
N 560 -460 610 -460 {lab=vg}
N 250 -460 250 -400 {lab=vtop}
N 490 -310 490 -220 {lab=vi}
N 250 -310 250 -270 {lab=vbot}
N 560 -380 610 -380 {lab=vg}
N 560 -460 560 -380 {lab=vg}
N 440 -460 560 -460 {lab=vg}
N 440 -310 490 -310 {lab=vi}
N 250 -460 380 -460 {lab=vtop}
N 250 -470 250 -460 {lab=vtop}
N 250 -310 380 -310 {lab=vbot}
N 250 -340 250 -310 {lab=vbot}
N 440 -220 490 -220 {lab=vi}
N 620 -310 620 -220 {lab=vo}
N 620 -220 700 -220 {lab=vo}
N 410 -560 410 -500 {lab=p1}
N 380 -560 410 -560 {lab=p1}
N 180 -560 250 -560 {lab=vdd}
N 250 -560 250 -530 {lab=vdd}
N 580 -310 620 -310 {lab=vo}
C {devices/capa.sym} 250 -370 0 0 {name=Cm1
m=1
value=\{cb\}
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 250 -260 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {switch_ngspice.sym} 250 -500 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff "}
C {switch_ngspice.sym} 410 -460 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 500 -460 0 0 {name=p16 sig_type=std_logic lab=vg}
C {switch_ngspice.sym} 410 -310 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 410 -350 0 1 {name=p20 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 180 -260 0 0 {name=p22 sig_type=std_logic lab=p2}
C {switch_ngspice.sym} 640 -460 1 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=1 ROFF=roff"}
C {devices/lab_wire.sym} 640 -500 0 1 {name=p26 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 340 -460 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 340 -310 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {devices/capa.sym} 640 -380 3 0 {name=Cp4
m=1
value=cp
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 210 -240 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} 210 -480 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 250 -230 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 390 -500 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 620 -500 2 0 {name=l5 lab=GND}
C {devices/gnd.sym} 390 -350 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} 670 -460 3 0 {name=l7 lab=GND}
C {devices/gnd.sym} 670 -380 3 0 {name=l9 lab=GND}
C {title.sym} 165 -40 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 440 -220 0 0 {name=p1 lab=vi}
C {opin.sym} 700 -220 0 0 {name=p2 lab=vo}
C {ipin.sym} 180 -500 0 0 {name=p3 lab=p2}
C {ipin.sym} 380 -560 0 0 {name=p4 lab=p1}
C {iopin.sym} 180 -560 0 1 {name=p5 lab=vdd}
C {switch_ngspice.sym} 550 -310 1 0 {name=S6 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 550 -350 0 1 {name=p6 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 530 -350 2 0 {name=l10 lab=GND}
