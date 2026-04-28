v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -500 660 -500 {lab=vop}
N 660 -500 660 -450 {lab=vop}
N 530 -500 530 -430 {lab=vss}
N 660 -500 760 -500 {lab=vop}
N 560 -280 660 -280 {lab=vom}
N 660 -280 660 -230 {lab=vom}
N 530 -360 530 -320 {lab=track}
N 530 -280 530 -190 {lab=vss}
N 660 -280 760 -280 {lab=vom}
N 530 -590 530 -540 {lab=track}
N 430 -590 530 -590 {lab=track}
N 660 -390 660 -360 {lab=vss}
N 660 -170 660 -130 {lab=vss}
N 430 -130 660 -130 {lab=vss}
N 430 -500 500 -500 {lab=vip}
N 430 -280 500 -280 {lab=vim}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -520 3 1 {name=Mp
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 660 -420 0 0 {name=Cp
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 430 -500 0 0 {name=p1 lab=vip}
C {opin.sym} 760 -500 0 0 {name=p2 lab=vop}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -300 3 1 {name=Mm
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 660 -200 0 0 {name=Cm
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 530 -360 0 1 {name=p4 sig_type=std_logic lab=track}
C {ipin.sym} 430 -280 0 0 {name=p5 lab=vim}
C {opin.sym} 760 -280 0 0 {name=p6 lab=vom}
C {ipin.sym} 430 -590 0 0 {name=p7 lab=track}
C {devices/lab_wire.sym} 660 -360 2 1 {name=p3 sig_type=std_logic lab=vss}
C {iopin.sym} 430 -130 0 1 {name=p8 lab=vss}
C {iopin.sym} 430 -650 0 1 {name=p10 lab=vdd}
C {devices/lab_wire.sym} 530 -430 2 1 {name=p9 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 530 -190 2 1 {name=p11 sig_type=std_logic lab=vss}
