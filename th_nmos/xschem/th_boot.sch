v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 750 -460 850 -460 {lab=vop}
N 850 -460 850 -410 {lab=vop}
N 720 -460 720 -350 {lab=vss}
N 850 -460 950 -460 {lab=vop}
N 240 -270 340 -270 {lab=vom}
N 340 -270 340 -220 {lab=vom}
N 210 -350 210 -310 {lab=track}
N 210 -270 210 -180 {lab=vss}
N 340 -270 440 -270 {lab=vom}
N 850 -350 850 -320 {lab=vss}
N 340 -160 340 -120 {lab=vss}
N 110 -120 340 -120 {lab=vss}
N 650 -460 690 -460 {lab=vip}
N 110 -270 180 -270 {lab=vim}
N 410 -410 410 -380 {lab=vss}
N 340 -440 370 -440 {lab=ph}
N 410 -690 410 -670 {lab=vdd}
N 340 -640 370 -640 {lab=ph}
N 410 -600 410 -580 {lab=vtop}
N 720 -600 720 -500 {lab=vgp}
N 630 -600 720 -600 {lab=vgp}
N 410 -600 570 -600 {lab=vtop}
N 410 -610 410 -600 {lab=vtop}
N 650 -460 650 -380 {lab=vip}
N 410 -490 570 -490 {lab=vbot}
N 410 -520 410 -490 {lab=vbot}
N 410 -490 410 -450 {lab=vbot}
N 630 -490 650 -490 {lab=vip}
N 650 -490 650 -460 {lab=vip}
N 230 -540 260 -540 {lab=trackb}
N 120 -540 150 -540 {lab=track}
N 720 -600 770 -600 {lab=vgp}
N 830 -600 870 -600 {lab=vss}
N 630 -210 650 -210 {lab=#net1}
N 630 -210 630 -190 {lab=#net1}
N 630 -190 810 -150 {lab=#net1}
N 810 -150 810 -130 {lab=#net1}
N 770 -130 810 -130 {lab=#net1}
N 630 -150 650 -150 {lab=#net2}
N 630 -170 630 -150 {lab=#net2}
N 630 -170 810 -190 {lab=#net2}
N 810 -230 810 -190 {lab=#net2}
N 770 -230 810 -230 {lab=#net2}
N 600 -250 650 -250 {lab=trackb}
N 600 -110 650 -110 {lab=track}
N 810 -230 870 -230 {lab=#net2}
N 810 -130 870 -130 {lab=#net1}
N 1030 -610 1030 -540 {lab=vss}
N 1060 -610 1110 -610 {lab=#net3}
N 1110 -610 1110 -560 {lab=#net3}
N 980 -560 1110 -560 {lab=#net3}
N 980 -610 980 -560 {lab=#net3}
N 980 -610 1000 -610 {lab=#net3}
N 1110 -640 1110 -610 {lab=#net3}
N 1110 -560 1110 -530 {lab=#net3}
N 1110 -470 1110 -430 {lab=vss}
N 1030 -720 1030 -650 {lab=#net4}
N 1110 -720 1110 -700 {lab=#net4}
N 1030 -720 1110 -720 {lab=#net4}
N 610 -380 650 -380 {lab=vip}
N 950 -230 1020 -230 {lab=ph}
N 950 -130 1020 -130 {lab=pt}
C {sg13g2_pr/sg13_lv_nmos.sym} 720 -480 3 1 {name=Mp
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 850 -380 0 0 {name=Cp
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {ipin.sym} 610 -380 0 0 {name=p1 lab=vip}
C {opin.sym} 950 -460 0 0 {name=p2 lab=vop}
C {sg13g2_pr/sg13_lv_nmos.sym} 210 -290 3 1 {name=Mm
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 340 -190 0 0 {name=Cm
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 210 -350 0 1 {name=p4 sig_type=std_logic lab=track}
C {ipin.sym} 110 -270 0 0 {name=p5 lab=vim}
C {opin.sym} 440 -270 0 0 {name=p6 lab=vom}
C {ipin.sym} 110 -360 0 0 {name=p7 lab=track}
C {devices/lab_wire.sym} 850 -320 2 1 {name=p3 sig_type=std_logic lab=vss}
C {iopin.sym} 110 -120 0 1 {name=p8 lab=vss}
C {iopin.sym} 110 -430 0 1 {name=p10 lab=vdd}
C {devices/lab_wire.sym} 210 -180 2 1 {name=p11 sig_type=std_logic lab=vss}
C {devices/capa.sym} 410 -550 0 0 {name=Cm1
m=1
value=\{cb\}
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 410 -440 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=0.1
+ RON=1 ROFF=10G"}
C {devices/lab_wire.sym} 410 -380 2 1 {name=p12 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 370 -420 2 1 {name=p13 sig_type=std_logic lab=vss}
C {switch_ngspice.sym} 410 -640 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=0.1
+ RON=1 ROFF=10G "}
C {devices/lab_wire.sym} 410 -690 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 370 -620 2 1 {name=p15 sig_type=std_logic lab=vss}
C {switch_ngspice.sym} 600 -600 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=0.1
+ RON=1 ROFF=10G"}
C {devices/lab_wire.sym} 690 -600 0 0 {name=p16 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 580 -640 0 0 {name=p17 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 600 -640 0 1 {name=p18 sig_type=std_logic lab=pt}
C {switch_ngspice.sym} 600 -490 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=0.1
+ RON=1 ROFF=10G"}
C {devices/lab_wire.sym} 580 -530 0 0 {name=p19 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 600 -530 0 1 {name=p20 sig_type=std_logic lab=pt}
C {devices/lab_wire.sym} 340 -640 0 0 {name=p21 sig_type=std_logic lab=ph}
C {devices/lab_wire.sym} 340 -440 0 0 {name=p22 sig_type=std_logic lab=ph}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 190 -540 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 260 -540 0 1 {name=p23 sig_type=std_logic lab=trackb}
C {devices/lab_wire.sym} 120 -540 0 0 {name=p24 sig_type=std_logic lab=track}
C {switch_ngspice.sym} 800 -600 1 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=0.1
+ RON=1 ROFF=10G"}
C {devices/lab_wire.sym} 780 -640 0 0 {name=p25 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 800 -640 0 1 {name=p26 sig_type=std_logic lab=ph}
C {devices/lab_wire.sym} 870 -600 2 0 {name=p27 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 500 -600 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 500 -490 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 710 -230 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 710 -130 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_wire.sym} 600 -110 0 0 {name=p30 sig_type=std_logic lab=track}
C {devices/lab_wire.sym} 600 -250 0 0 {name=p31 sig_type=std_logic lab=trackb}
C {devices/lab_wire.sym} 950 -130 2 0 {name=p32 sig_type=std_logic lab=pt}
C {devices/lab_wire.sym} 950 -230 2 0 {name=p33 sig_type=std_logic lab=ph}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 910 -230 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 910 -130 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} 1030 -630 3 1 {name=Mdum
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/lab_wire.sym} 1030 -540 2 1 {name=p34 sig_type=std_logic lab=vss}
C {vsource.sym} 1110 -500 0 0 {name=V1 value=vcm savecurrent=false}
C {vsource.sym} 1110 -670 0 0 {name=V2 value=vdd savecurrent=false}
C {devices/lab_wire.sym} 1110 -430 2 1 {name=p35 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 720 -350 2 1 {name=p9 sig_type=std_logic lab=vss}
C {devices/capa.sym} 1050 -230 3 0 {name=Cp1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1050 -130 3 0 {name=Cp2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1080 -230 2 0 {name=p36 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1080 -130 2 0 {name=p37 sig_type=std_logic lab=vss}
