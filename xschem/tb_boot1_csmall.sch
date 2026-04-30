v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 950 -820 950 -710 {lab=vtop}
N 970 -670 1090 -670 {lab=vout}
N 950 -670 950 -590 {lab=GND}
N 740 -820 950 -820 {lab=vtop}
N 740 -670 920 -670 {lab=vbot}
N 740 -670 740 -650 {lab=vbot}
N 740 -710 740 -670 {lab=vbot}
N 740 -820 740 -760 {lab=vtop}
N 1090 -670 1090 -650 {lab=vout}
C {devices/code_shown.sym} 1155 -835 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2
.param cl=1.3p cb=180f w=7.5u ng=2

.control
    set color0=white
    set color1=black
    set xbrushwidth=4
    op
    print allv    
    ac dec 100 1e6 1e9
    plot v(vtop)
.endc
.end
"}
C {devices/capa.sym} 1090 -620 0 1 {name=Cw1
m=1
value=1.3p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1090 -590 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 740 -620 0 0 {name=Vsup1 value="dc 0.6 ac 1" savecurrent=false}
C {devices/gnd.sym} 740 -590 0 0 {name=l12 lab=GND}
C {devices/capa.sym} 740 -740 0 0 {name=Cm1
m=1
value=180f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 830 -820 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 830 -670 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {sg13g2_pr/sg13_lv_nmos.sym} 950 -690 3 1 {name=M1
l=0.13u
w=7.5u
ng=20
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 640 -720 0 0 {name=Vsup4 value=vdd savecurrent=false}
C {devices/gnd.sym} 950 -590 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 640 -810 0 0 {name=p7 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 1030 -670 0 1 {name=p9 sig_type=std_logic lab=vout}
C {res.sym} 640 -780 0 0 {name=R1
value=1e9
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 640 -690 0 0 {name=p1 sig_type=std_logic lab=vbot}
