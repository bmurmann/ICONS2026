v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -340 280 -340 {lab=#net1}
N 280 -340 280 -250 {lab=#net1}
N 150 -250 280 -250 {lab=#net1}
N 150 -340 150 -250 {lab=#net1}
N 150 -340 170 -340 {lab=#net1}
N 280 -370 280 -340 {lab=#net1}
N 280 -250 280 -220 {lab=#net1}
N 200 -450 200 -380 {lab=#net2}
N 280 -450 280 -430 {lab=#net2}
N 200 -450 280 -450 {lab=#net2}
N 200 -340 200 -280 {lab=GND}
N 470 -340 520 -340 {lab=#net3}
N 520 -340 520 -250 {lab=#net3}
N 390 -250 520 -250 {lab=#net3}
N 390 -340 390 -250 {lab=#net3}
N 390 -340 410 -340 {lab=#net3}
N 520 -370 520 -340 {lab=#net3}
N 520 -250 520 -220 {lab=#net3}
N 440 -450 440 -380 {lab=#net4}
N 520 -450 520 -430 {lab=#net4}
N 440 -450 520 -450 {lab=#net4}
N 440 -340 440 -280 {lab=GND}
N 600 -250 700 -250 {lab=GND}
N 740 -250 790 -250 {lab=#net5}
C {devices/code_shown.sym} 870 -370 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt

.control
    op
    show
.endc
"}
C {title.sym} 250 -40 0 0 {name=l8 author="Boris Murmann"}
C {vsource.sym} 280 -190 0 0 {name=V1 value=0.6 savecurrent=false}
C {vsource.sym} 280 -400 0 0 {name=V2 value=1.2 savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 -360 1 0 {name=M1
l=0.13u
w=100u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 280 -160 0 0 {name=l1 lab=GND}
C {gnd.sym} 200 -280 0 0 {name=l2 lab=GND}
C {vsource.sym} 520 -190 0 0 {name=V3 value=0.7 savecurrent=false}
C {vsource.sym} 520 -400 0 0 {name=V4 value=1.2 savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 -360 1 0 {name=M2
l=0.13u
w=100u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 520 -160 0 0 {name=l3 lab=GND}
C {gnd.sym} 440 -280 0 0 {name=l4 lab=GND}
C {gnd.sym} 700 -220 0 0 {name=l5 lab=GND}
C {gnd.sym} 600 -250 0 0 {name=l6 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 720 -250 0 1 {name=M3
l=0.13u
w=100u
ng=10
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 790 -220 0 0 {name=V5 value=0.6 savecurrent=false}
C {gnd.sym} 790 -190 0 0 {name=l7 lab=GND}
C {gnd.sym} 700 -280 2 0 {name=l9 lab=GND}
