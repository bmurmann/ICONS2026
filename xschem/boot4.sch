v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -240 820 -240 {lab=vi}
N 180 -190 210 -190 {lab=p2}
N 850 -480 900 -480 {lab=vg}
N 780 -240 780 -130 {lab=vi}
N 790 -480 850 -480 {lab=vg}
N 730 -130 780 -130 {lab=vi}
N 880 -240 910 -240 {lab=vo}
N 910 -130 990 -130 {lab=vo}
N 180 -670 250 -670 {lab=vdd}
N 250 -670 250 -640 {lab=vdd}
N 960 -480 980 -480 {lab=#net1}
N 930 -480 930 -420 {lab=GND}
N 1010 -480 1010 -420 {lab=GND}
N 250 -190 250 -160 {lab=GND}
N 250 -240 250 -220 {lab=vbot}
N 160 -610 250 -610 {lab=vtop}
N 160 -510 250 -510 {lab=vtop}
N 910 -240 910 -130 {lab=vo}
N 850 -310 850 -250 {lab=vg}
N 160 -510 160 -480 {lab=vtop}
N 290 -610 790 -610 {lab=vg}
N 650 -310 650 -280 {lab=vg}
N 850 -480 850 -310 {lab=vg}
N 850 -240 850 -190 {lab=GND}
N 250 -580 250 -510 {lab=vtop}
N 160 -610 160 -510 {lab=vtop}
N 790 -610 790 -480 {lab=vg}
N 250 -480 250 -370 {lab=vtop}
N 680 -240 780 -240 {lab=vi}
N 650 -310 850 -310 {lab=vg}
N 650 -240 650 -190 {lab=GND}
N 480 -240 620 -240 {lab=vbot}
N 250 -310 250 -240 {lab=vbot}
N 680 -480 790 -480 {lab=vg}
N 590 -480 620 -480 {lab=vtop}
N 250 -510 250 -480 {lab=vtop}
N 650 -540 650 -480 {lab=vtop}
N 590 -540 650 -540 {lab=vtop}
N 590 -540 590 -480 {lab=vtop}
N 250 -480 590 -480 {lab=vtop}
N 480 -350 480 -340 {lab=vg2}
N 480 -280 480 -240 {lab=vbot}
N 250 -240 480 -240 {lab=vbot}
N 480 -350 650 -350 {lab=vg2}
N 480 -370 480 -350 {lab=vg2}
N 650 -440 650 -350 {lab=vg2}
C {devices/capa.sym} 250 -340 0 0 {name=Cm1
m=1
value=cb
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1010 -520 0 1 {name=p26 sig_type=std_logic lab=p2}
C {devices/gnd.sym} 250 -160 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1040 -480 3 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 850 -260 3 1 {name=M1
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {title.sym} 165 -40 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 730 -130 0 0 {name=p1 lab=vi}
C {opin.sym} 990 -130 0 0 {name=p2 lab=vo}
C {ipin.sym} 180 -190 0 0 {name=p3 lab=p2}
C {iopin.sym} 180 -670 0 1 {name=p5 lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 930 -500 3 1 {name=M8
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 930 -520 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1010 -500 3 1 {name=M4
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 930 -420 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 1010 -420 0 1 {name=l10 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 230 -190 0 0 {name=M6
l=0.13u
w=w6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 250 -400 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 250 -270 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -610 0 1 {name=M5
l=0.13u
w=w5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 850 -400 0 0 {name=p16 sig_type=std_logic lab=vg}
C {devices/gnd.sym} 850 -190 0 1 {name=l15 lab=GND}
C {devices/capa.sym} 160 -450 0 1 {name=Cw6
m=1
value=\{cw5+cw2\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 160 -420 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 650 -260 3 1 {name=M3
l=0.13u
w=w3
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 650 -190 0 1 {name=l6 lab=GND}
C {devices/gnd.sym} 440 -380 1 0 {name=l4 lab=GND}
C {switch_ngspice.sym} 480 -400 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {ipin.sym} 440 -310 0 0 {name=p7 lab=p1}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 -460 3 0 {name=M2
l=0.13u
w=w2
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 480 -430 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {switch_ngspice.sym} 480 -310 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 650 -400 0 0 {name=p8 sig_type=std_logic lab=vg2}
C {devices/gnd.sym} 440 -290 1 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 440 -400 0 0 {name=p10 sig_type=std_logic lab=p2}
