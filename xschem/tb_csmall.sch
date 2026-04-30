v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 940 -810 940 -700 {lab=vtop}
N 960 -660 1080 -660 {lab=vout}
N 940 -660 940 -580 {lab=GND}
N 730 -810 940 -810 {lab=vtop}
N 730 -660 910 -660 {lab=vbot}
N 730 -660 730 -640 {lab=vbot}
N 730 -700 730 -660 {lab=vbot}
N 730 -810 730 -750 {lab=vtop}
N 1080 -660 1080 -640 {lab=vout}
C {devices/code_shown.sym} 1155 -815 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2

.control
    set color0=white    ; Set background to white
    set color1=black    ; Set grid and text to black
    set xbrushwidth=5
    nodeset v(vtop)=1.8
    op
    print allv    
    ac dec 100 1e6 1e9
    plot v(vtop) yl 0.95 1.05
.endc
.end
"}
C {devices/capa.sym} 1080 -610 0 1 {name=Cw1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1080 -580 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 730 -610 0 0 {name=Vsup1 value="dc 0.6 ac 1" savecurrent=false}
C {devices/gnd.sym} 730 -580 0 0 {name=l12 lab=GND}
C {devices/capa.sym} 730 -730 0 0 {name=Cm1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 820 -810 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 820 -660 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {sg13g2_pr/sg13_lv_nmos.sym} 940 -680 3 1 {name=M1
l=0.13u
w=100u
ng=20
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 630 -710 0 0 {name=Vsup4 value=vdd savecurrent=false}
C {devices/gnd.sym} 940 -580 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 630 -800 0 0 {name=p7 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 1020 -660 0 1 {name=p9 sig_type=std_logic lab=vout}
C {res.sym} 630 -770 0 0 {name=R1
value=1e9
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 630 -680 0 0 {name=p1 sig_type=std_logic lab=vbot}
