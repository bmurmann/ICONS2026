v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 880 -530 920 -530 {lab=#net1}
N 540 -480 570 -480 {lab=GND}
N 950 -740 1000 -740 {lab=vg}
N 880 -530 880 -440 {lab=#net1}
N 890 -740 950 -740 {lab=vg}
N 830 -530 880 -530 {lab=#net1}
N 950 -530 950 -470 {lab=GND}
N 830 -440 880 -440 {lab=#net1}
N 980 -530 1010 -530 {lab=#net2}
N 1010 -530 1010 -440 {lab=#net2}
N 1010 -440 1090 -440 {lab=#net2}
N 540 -870 610 -870 {lab=vdd}
N 610 -870 610 -840 {lab=vdd}
N 1060 -740 1080 -740 {lab=#net3}
N 1030 -740 1030 -680 {lab=GND}
N 1110 -740 1110 -680 {lab=GND}
N 610 -530 610 -510 {lab=vbot}
N 610 -480 610 -450 {lab=GND}
N 610 -600 610 -530 {lab=vbot}
N 610 -740 610 -660 {lab=vtop}
N 610 -740 770 -740 {lab=vtop}
N 610 -530 770 -530 {lab=vbot}
N 610 -760 610 -740 {lab=vtop}
N 520 -810 610 -810 {lab=vtop}
N 520 -810 520 -760 {lab=vtop}
N 520 -760 610 -760 {lab=vtop}
N 610 -780 610 -760 {lab=vtop}
N 950 -740 950 -540 {lab=vg}
N 650 -810 890 -810 {lab=vg}
N 890 -810 890 -740 {lab=vg}
N 830 -740 890 -740 {lab=vg}
N 520 -760 520 -740 {lab=vtop}
C {devices/code_shown.sym} 1195 -895 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2 vcm=0.6
.param cl=1.3p cb=400f w=26u ng=4
.param w4=13u ng4=3 w5=5u w6=3u cw5=2f

.control
    op
    print allv    
    ac dec 1000 1e5 250e6
    alter rbot=1k
    alter rtop=1k
    ac dec 100 1e5 250e6
    alter rbot=2k
    alter rtop=2k
    ac dec 100 1e5 250e6

    set color0=white    ; Set background to white
    set color1=black    ; Set grid and text to black
    set xbrushwidth=5
    plot ac1.v(vg) ac2.v(vg) ac3.v(vg) linear
.endc
.end
"}
C {devices/vsource.sym} 1350 -370 0 0 {name=Vsup value=vdd savecurrent=false}
C {devices/lab_wire.sym} 1350 -400 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1350 -340 0 0 {name=l11 lab=GND}
C {devices/capa.sym} 610 -630 0 0 {name=Cm1
m=1
value="cb ic=vdd"
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 610 -450 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1140 -740 3 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 950 -550 3 1 {name=M1
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1030 -760 3 1 {name=M8
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 1030 -780 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {sg13g2_pr/sg13_lv_nmos.sym} 1110 -760 3 1 {name=M4
l=0.13u
w=w4
ng=ng4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1030 -680 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 1110 -680 0 1 {name=l10 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 590 -480 0 0 {name=M6
l=0.13u
w=w6
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 610 -680 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 610 -560 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {sg13g2_pr/sg13_lv_pmos.sym} 630 -810 0 1 {name=M5
l=0.13u
w=w5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} 950 -640 0 0 {name=p16 sig_type=std_logic lab=vg}
C {devices/gnd.sym} 950 -470 0 1 {name=l15 lab=GND}
C {devices/capa.sym} 520 -710 0 1 {name=Cw5
m=1
value=cw5
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 520 -680 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 540 -870 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 540 -480 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1110 -780 2 1 {name=l8 lab=GND}
C {devices/capa.sym} 1090 -410 0 1 {name=Cw1
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1090 -380 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 830 -410 0 0 {name=Vsup1 value="dc vcm ac 1" savecurrent=false}
C {devices/gnd.sym} 830 -380 0 0 {name=l12 lab=GND}
C {res.sym} 800 -530 1 0 {name=rbot
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 800 -740 1 0 {name=rtop
value=10
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 370 -590 0 0 {name=Vsup2 value=vdd savecurrent=false}
C {devices/lab_wire.sym} 370 -680 0 0 {name=p1 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 370 -560 2 1 {name=p2 sig_type=std_logic lab=vbot}
C {ind.sym} 370 -650 0 0 {name=L4
m=1
value=1meg
footprint=1206
device=inductor}
