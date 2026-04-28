v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -240 590 -240 {lab=vi}
N 210 -190 240 -190 {lab=p2}
N 620 -450 670 -450 {lab=vg}
N 550 -240 550 -150 {lab=vi}
N 560 -450 620 -450 {lab=vg}
N 500 -240 550 -240 {lab=vi}
N 620 -240 620 -180 {lab=GND}
N 500 -150 550 -150 {lab=vi}
N 650 -240 680 -240 {lab=vo}
N 680 -240 680 -150 {lab=vo}
N 680 -150 760 -150 {lab=vo}
N 210 -580 280 -580 {lab=vdd}
N 280 -580 280 -550 {lab=vdd}
N 730 -450 750 -450 {lab=#net1}
N 700 -450 700 -390 {lab=GND}
N 780 -450 780 -390 {lab=GND}
N 280 -240 280 -220 {lab=vbot}
N 280 -190 280 -160 {lab=GND}
N 280 -310 280 -240 {lab=vbot}
N 280 -450 280 -370 {lab=vtop}
N 280 -450 440 -450 {lab=vtop}
N 280 -240 440 -240 {lab=vbot}
N 280 -470 280 -450 {lab=vtop}
N 190 -520 280 -520 {lab=vtop}
N 190 -520 190 -470 {lab=vtop}
N 190 -470 280 -470 {lab=vtop}
N 280 -490 280 -470 {lab=vtop}
N 470 -410 470 -370 {lab=p1}
N 620 -450 620 -250 {lab=vg}
N 320 -520 560 -520 {lab=vg}
N 560 -520 560 -450 {lab=vg}
N 500 -450 560 -450 {lab=vg}
N 190 -470 190 -450 {lab=vtop}
C {devices/capa.sym} 280 -340 0 0 {name=Cm1
m=1
value=cb
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 470 -240 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 470 -280 0 1 {name=p20 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 280 -160 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 450 -280 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} 810 -450 3 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 620 -260 3 1 {name=M1
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} 165 -40 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 500 -150 0 0 {name=p1 lab=vi}
C {opin.sym} 760 -150 0 0 {name=p2 lab=vo}
C {ipin.sym} 210 -190 0 0 {name=p3 lab=p2}
C {iopin.sym} 210 -580 0 1 {name=p5 lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 700 -470 3 1 {name=M8
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 700 -490 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 780 -470 3 1 {name=M4
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 700 -390 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 780 -390 0 1 {name=l10 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 -190 0 0 {name=M6
l=0.13u
w=w6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 280 -390 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 280 -270 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {sg13g2_pr/sg13_lv_pmos.sym} 300 -520 0 1 {name=M5
l=0.13u
w=w5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {switch_ngspice.sym} 470 -450 1 1 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/gnd.sym} 450 -410 0 1 {name=l4 lab=GND}
C {ipin.sym} 470 -370 0 0 {name=p4 lab=p1}
C {devices/lab_wire.sym} 620 -350 0 0 {name=p16 sig_type=std_logic lab=vg}
C {devices/gnd.sym} 620 -180 0 1 {name=l15 lab=GND}
C {devices/capa.sym} 190 -420 0 1 {name=Cw5
m=1
value=cw5
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 190 -390 0 0 {name=l1 lab=GND}
C {ipin.sym} 780 -490 1 0 {name=p7 lab=p1b}
