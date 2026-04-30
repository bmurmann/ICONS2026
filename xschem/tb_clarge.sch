v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 870 -660 870 -570 {lab=#net1}
N 820 -570 870 -570 {lab=#net1}
N 1000 -660 1000 -570 {lab=vout}
N 1000 -570 1080 -570 {lab=vout}
N 560 -610 590 -610 {lab=p1}
N 560 -850 590 -850 {lab=p1}
N 940 -810 990 -810 {lab=#net2}
N 940 -810 940 -700 {lab=#net2}
N 630 -810 630 -750 {lab=vtop}
N 630 -910 630 -880 {lab=#net3}
N 960 -660 1000 -660 {lab=vout}
N 940 -660 940 -590 {lab=GND}
N 630 -660 630 -640 {lab=vbot}
N 870 -660 910 -660 {lab=#net1}
N 630 -660 760 -660 {lab=vbot}
N 630 -690 630 -660 {lab=vbot}
N 820 -660 870 -660 {lab=#net1}
N 630 -810 760 -810 {lab=vtop}
N 630 -820 630 -810 {lab=vtop}
N 820 -810 940 -810 {lab=#net2}
N 470 -910 470 -870 {lab=#net3}
N 470 -910 630 -910 {lab=#net3}
C {devices/code_shown.sym} 1155 -805 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2 vh=0.1 roff=1e9 rsw=10
.option reltol=1e-6 gmin=1e-15

.control
    set color0=white    ; Set background to white
    set color1=black    ; Set grid and text to black
    set xbrushwidth=5
    tran 10p 40n
    plot v(vtop, vbot) yl 1 1.25
.endc
.end
"}
C {devices/vsource.sym} 470 -840 0 0 {name=Vsup value=vdd savecurrent=false}
C {devices/gnd.sym} 470 -810 0 0 {name=l11 lab=GND}
C {devices/capa.sym} 1080 -540 0 1 {name=Cw1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1080 -510 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 820 -540 0 0 {name=Vsup1 value="dc 0.6 ac 1" savecurrent=false}
C {devices/gnd.sym} 820 -510 0 0 {name=l12 lab=GND}
C {devices/capa.sym} 630 -720 0 0 {name=Cm1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 790 -700 0 1 {name=p20 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 560 -610 0 0 {name=p22 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 1020 -850 0 1 {name=p26 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 720 -810 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 720 -660 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {devices/gnd.sym} 590 -590 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} 590 -830 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 630 -580 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 770 -850 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1000 -850 2 0 {name=l5 lab=GND}
C {devices/gnd.sym} 770 -700 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1050 -810 3 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 940 -680 3 1 {name=M1
l=0.13u
w=100u
ng=20
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 560 -850 0 0 {name=p1 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 790 -850 0 1 {name=p3 sig_type=std_logic lab=p2}
C {devices/vsource.sym} 490 -410 0 0 {name=Vsup2 value="pwl 0 vdd 10n vdd 10.1n 0" savecurrent=false}
C {devices/lab_wire.sym} 490 -440 0 0 {name=p4 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 490 -380 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 690 -410 0 0 {name=Vsup3 value="pwl 0 0 20n 0 20.1n Vdd" savecurrent=false}
C {devices/lab_wire.sym} 690 -440 0 0 {name=p6 sig_type=std_logic lab=p2}
C {devices/gnd.sym} 690 -380 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 940 -590 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 1000 -600 0 1 {name=p9 sig_type=std_logic lab=vout}
C {switch_ngspice.sym} 630 -610 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0
+ RON=10 ROFF=10G "}
C {switch_ngspice.sym} 630 -850 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0
+ RON=10 ROFF=10G "}
C {switch_ngspice.sym} 790 -660 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0
+ RON=10 ROFF=10G "}
C {switch_ngspice.sym} 790 -810 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0
+ RON=10 ROFF=10G "}
C {switch_ngspice.sym} 1020 -810 1 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.9 VH=0
+ RON=10 ROFF=10G "}
