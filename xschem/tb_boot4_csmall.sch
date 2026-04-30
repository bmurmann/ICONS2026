v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 910 -1030 950 -1030 {lab=#net1}
N 310 -980 340 -980 {lab=p2}
N 910 -1030 910 -920 {lab=#net1}
N 970 -1270 1030 -1270 {lab=vg}
N 310 -1460 380 -1460 {lab=vdd}
N 380 -1460 380 -1430 {lab=vdd}
N 1090 -1270 1110 -1270 {lab=#net2}
N 1060 -1270 1060 -1210 {lab=GND}
N 1140 -1270 1140 -1210 {lab=GND}
N 380 -980 380 -950 {lab=GND}
N 380 -1030 380 -1010 {lab=vbot}
N 290 -1400 380 -1400 {lab=vtop}
N 290 -1300 380 -1300 {lab=vtop}
N 1060 -1030 1060 -920 {lab=#net3}
N 980 -1100 980 -1040 {lab=#net4}
N 290 -1300 290 -1270 {lab=vtop}
N 420 -1400 920 -1400 {lab=vg}
N 780 -1100 780 -1070 {lab=#net4}
N 980 -1030 980 -980 {lab=GND}
N 380 -1370 380 -1300 {lab=vtop}
N 290 -1400 290 -1300 {lab=vtop}
N 920 -1400 920 -1270 {lab=vg}
N 380 -1270 380 -1160 {lab=vtop}
N 810 -1030 910 -1030 {lab=#net1}
N 780 -1100 980 -1100 {lab=#net4}
N 780 -1030 780 -980 {lab=GND}
N 610 -1030 750 -1030 {lab=vbot}
N 380 -1100 380 -1030 {lab=vbot}
N 810 -1270 920 -1270 {lab=vg}
N 720 -1270 750 -1270 {lab=vtop}
N 380 -1300 380 -1270 {lab=vtop}
N 780 -1330 780 -1270 {lab=vtop}
N 720 -1330 780 -1330 {lab=vtop}
N 720 -1330 720 -1270 {lab=vtop}
N 380 -1270 720 -1270 {lab=vtop}
N 610 -1140 610 -1030 {lab=vbot}
N 380 -1030 610 -1030 {lab=vbot}
N 610 -1140 780 -1140 {lab=vbot}
N 780 -1230 780 -1140 {lab=vbot}
N 1010 -1030 1060 -1030 {lab=#net3}
N 980 -1160 980 -1100 {lab=#net4}
N 970 -1270 970 -1200 {lab=vg}
N 920 -1270 970 -1270 {lab=vg}
C {devices/code_shown.sym} 1255 -1315 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2
.param cl=1.3p cb=1pF w=35u ng=7
.param w4=17.5u ng4=3
.param w5=12u cw5=4.7f w6=8u
.param w3=5u w2=10u cw2=4f
.option gmin=1e-15
.control
    set color0=white
    set color1=black
    set xbrushwidth=4
    op
    print allv    
    ac dec 100 1e7 10e9
    plot v(vg) yl 0.95 1
.endc
.end
"}
C {devices/vsource.sym} 170 -1080 0 0 {name=Vsup4 value=vdd savecurrent=false}
C {devices/lab_wire.sym} 170 -1170 0 0 {name=p7 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 170 -1050 0 0 {name=p1 sig_type=std_logic lab=vbot}
C {devices/capa.sym} 380 -1130 0 0 {name=Cm2
m=1
value=cb
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1140 -1310 0 1 {name=p26 sig_type=std_logic lab=p2}
C {devices/gnd.sym} 380 -950 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1170 -1270 3 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 980 -1050 3 1 {name=M2
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 310 -980 0 0 {name=p4 lab=p2}
C {iopin.sym} 310 -1460 0 1 {name=p5 lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1060 -1290 3 1 {name=M8
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 1060 -1310 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1140 -1290 3 1 {name=M4
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1060 -1210 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 1140 -1210 0 1 {name=l10 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 -980 0 0 {name=M6
l=0.13u
w=w6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 380 -1190 0 0 {name=p8 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 380 -1060 0 0 {name=p10 sig_type=std_logic lab=vbot}
C {sg13g2_pr/sg13_lv_pmos.sym} 400 -1400 0 1 {name=M5
l=0.13u
w=w5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 1000 -1270 0 0 {name=p16 sig_type=std_logic lab=vg}
C {devices/gnd.sym} 980 -980 0 1 {name=l1 lab=GND}
C {devices/capa.sym} 290 -1240 0 1 {name=Cw6
m=1
value=\{cw5+cw2\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 290 -1210 0 0 {name=l2 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 780 -1050 3 1 {name=M3
l=0.13u
w=w3
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 780 -980 0 1 {name=l6 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} 780 -1250 3 0 {name=M7
l=0.13u
w=w2
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/capa.sym} 1060 -890 0 1 {name=Cw1
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1060 -860 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 910 -890 0 0 {name=Vsup1 value="dc 0.6 ac 1" savecurrent=false}
C {devices/gnd.sym} 910 -860 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} 1290 -900 0 0 {name=Vsup2 value=0 savecurrent=false}
C {devices/gnd.sym} 1290 -870 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1290 -930 0 1 {name=p2 sig_type=std_logic lab=p2}
C {devices/vsource.sym} 1380 -900 0 0 {name=Vsup3 value=vdd savecurrent=false}
C {devices/gnd.sym} 1380 -870 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} 1380 -930 0 1 {name=p3 sig_type=std_logic lab=p1}
C {vcvs.sym} 950 -1160 1 0 {name=E1 value=1}
C {devices/gnd.sym} 920 -1160 1 0 {name=l11 lab=GND}
C {devices/gnd.sym} 930 -1200 2 0 {name=l13 lab=GND}
C {ind.sym} 170 -1140 0 0 {name=L14
m=1
value=1k
footprint=1206
device=inductor}
