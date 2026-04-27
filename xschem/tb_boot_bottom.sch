v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 130 -1220 910 -670 {flags=graph
y1=-0.10679693
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=8.7008764e-10
x2=2.6406152e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=./simulation/tb_boot_bottom.raw
autoload=1
hilight_wave=1
y2=1.7340031
color="4 5 6 7 8"
node="track
p1
p2
vg
vo"}
N 710 -360 750 -360 {lab=vi}
N 400 -310 430 -310 {lab=p2}
N 470 -600 470 -580 {lab=vdd}
N 400 -550 430 -550 {lab=p2}
N 780 -510 830 -510 {lab=vg}
N 470 -510 470 -450 {lab=vtop}
N 710 -360 710 -270 {lab=vi}
N 470 -360 470 -320 {lab=vbot}
N 570 -270 570 -250 {lab=#net1}
N 780 -430 780 -370 {lab=vg}
N 780 -430 830 -430 {lab=vg}
N 780 -510 780 -430 {lab=vg}
N 660 -510 780 -510 {lab=vg}
N 660 -360 710 -360 {lab=vi}
N -210 -490 -190 -490 {lab=#net2}
N -210 -490 -210 -470 {lab=#net2}
N -210 -470 -30 -430 {lab=#net2}
N -30 -430 -30 -410 {lab=#net2}
N -70 -410 -30 -410 {lab=#net2}
N -210 -430 -190 -430 {lab=#net3}
N -210 -450 -210 -430 {lab=#net3}
N -210 -450 -30 -470 {lab=#net3}
N -30 -510 -30 -470 {lab=#net3}
N -70 -510 -30 -510 {lab=#net3}
N -30 -510 30 -510 {lab=#net3}
N -30 -410 30 -410 {lab=#net2}
N 110 -510 180 -510 {lab=p2}
N 110 -410 180 -410 {lab=p1}
N -290 -530 -190 -530 {lab=trackb}
N -290 -530 -290 -510 {lab=trackb}
N -290 -390 -190 -390 {lab=track}
N -290 -430 -290 -390 {lab=track}
N 470 -510 600 -510 {lab=vtop}
N 470 -520 470 -510 {lab=vtop}
N 470 -360 600 -360 {lab=vbot}
N 470 -390 470 -360 {lab=vbot}
N 780 -360 780 -300 {lab=GND}
N 570 -270 610 -270 {lab=#net1}
N 660 -270 710 -270 {lab=vi}
N 1080 -300 1110 -300 {lab=track}
N 1150 -360 1150 -330 {lab=votap}
N 1490 -460 1650 -460 {lab=vo}
N 1580 -340 1610 -340 {lab=p1}
N 1270 -360 1350 -360 {lab=votap}
N 1270 -360 1270 -300 {lab=votap}
N 1150 -360 1270 -360 {lab=votap}
N 970 -460 1170 -460 {lab=vc}
N 970 -360 1030 -360 {lab=vc}
N 970 -460 970 -360 {lab=vc}
N 810 -360 970 -360 {lab=vc}
N 1090 -360 1150 -360 {lab=votap}
N 1390 -460 1390 -370 {lab=vo}
N 1220 -460 1390 -460 {lab=vo}
N 1490 -460 1490 -370 {lab=vo}
N 1390 -460 1490 -460 {lab=vo}
N 1650 -460 1650 -370 {lab=vo}
N -290 -390 -290 -340 {lab=track}
N -290 -280 -290 -255 {lab=#net4}
C {devices/code_shown.sym} 980 -1430 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.param vdd=1.2 viq=0.3 vamp=0.2
.param cl=1p cb=1p cp=100f w=100u ng=20
.param ndft=31 npad=5 bin=5 fclk=500e6 runs=15
.param per=1/fclk fin=fclk*bin/ndft trf=100p
.param vh=0 rsw=10 roff=1e9 rs=10

.csparam per=per runs=runs
.csparam tstop1 = 4*per
.csparam tstop2 = per*(ndft+npad)
.option method=gear reltol=1e-6 chgtol=1e-16

.control
    tran 1n $&tstop1
    write tb_boot_bottom.raw
    option numdgt=9
    set wr_singlescale
    set wr_vecnames
    compose bin_vec start=1 stop=$&runs step=1
    foreach i $&bin_vec
      alterparam bin=$i
      reset
      tran 10p $&tstop2 0
      let lin-tstep = per
      let lin-tstart = 1.1n
      linearize
      wrdata tb_boot_bottom_track.txt v(vi) v(vc)
      tran 10p $&tstop2 0
      let lin-tstep = per
      let lin-tstart = 1.9n
      linearize
      wrdata tb_boot_bottom.txt v(vi) v(vo)
      destroy all
      set appendwrite
      unset wr_vecnames
    end
    unset appendwrite
.endc
"}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {launcher.sym} -150 -850 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_boot_bottom.raw tran"
}
C {devices/capa.sym} 470 -420 0 0 {name=Cm1
m=1
value=\{cb\}
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 470 -310 0 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {switch_ngspice.sym} 470 -550 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff "}
C {devices/lab_wire.sym} 470 -600 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {switch_ngspice.sym} 630 -510 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 720 -510 0 0 {name=p16 sig_type=std_logic lab=vg}
C {devices/lab_wire.sym} 630 -550 0 1 {name=p18 sig_type=std_logic lab=p1}
C {switch_ngspice.sym} 630 -360 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 630 -400 0 1 {name=p20 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 400 -550 0 0 {name=p21 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 400 -310 0 0 {name=p22 sig_type=std_logic lab=p2}
C {switch_ngspice.sym} 860 -510 1 0 {name=S5 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=1 ROFF=roff"}
C {devices/lab_wire.sym} 860 -550 0 1 {name=p26 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 560 -510 0 0 {name=p28 sig_type=std_logic lab=vtop}
C {devices/lab_wire.sym} 560 -360 0 0 {name=p29 sig_type=std_logic lab=vbot}
C {devices/capa.sym} 860 -430 3 0 {name=Cp4
m=1
value=cp
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 570 -220 0 0 {name=Vi2 value="sin(\{viq\} vamp fin 0)" savecurrent=false}
C {devices/gnd.sym} 570 -190 0 0 {name=l13 lab=GND}
C {devices/gnd.sym} 430 -290 1 0 {name=l1 lab=GND}
C {devices/gnd.sym} 430 -530 1 0 {name=l2 lab=GND}
C {devices/gnd.sym} 470 -280 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 610 -550 2 0 {name=l4 lab=GND}
C {devices/gnd.sym} 840 -550 2 0 {name=l5 lab=GND}
C {devices/gnd.sym} 610 -400 2 0 {name=l6 lab=GND}
C {devices/gnd.sym} 890 -510 3 0 {name=l7 lab=GND}
C {devices/gnd.sym} 890 -430 3 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} -240 -390 0 0 {name=p30 sig_type=std_logic lab=track}
C {devices/lab_wire.sym} -240 -530 0 0 {name=p31 sig_type=std_logic lab=trackb}
C {devices/lab_wire.sym} 110 -410 2 0 {name=p32 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 110 -510 2 0 {name=p33 sig_type=std_logic lab=p2}
C {devices/capa.sym} 210 -510 3 0 {name=Cp1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 210 -410 3 0 {name=Cp2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 240 -510 2 0 {name=p36 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 240 -410 2 0 {name=p37 sig_type=std_logic lab=vss}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 70 -510 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 70 -410 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -130 -510 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} -130 -410 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -290 -470 3 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {vsource.sym} -290 -225 0 0 {name=Vtrk value="pulse(0 vdd 0 trf trf \{per/2\} per 0)" savecurrent=false}
C {devices/gnd.sym} -290 -195 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 110 -300 0 0 {name=Vsup value=vdd savecurrent=false}
C {devices/lab_wire.sym} 110 -330 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 110 -270 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 210 -300 0 0 {name=Vsup1 value=0 savecurrent=false}
C {devices/lab_wire.sym} 210 -330 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 210 -270 0 0 {name=l14 lab=GND}
C {devices/gnd.sym} 780 -300 0 0 {name=l15 lab=GND}
C {devices/lab_wire.sym} 710 -320 0 0 {name=p2 sig_type=std_logic lab=vi}
C {res.sym} 640 -270 3 0 {name=R1
value=rs
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_nmos.sym} 780 -380 3 1 {name=M1
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} 1060 -360 3 0 {name=Cp
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 1390 -340 0 0 {name=G1 value=100e-3}
C {switch_ngspice.sym} 1200 -460 1 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 1200 -500 0 1 {name=p43 sig_type=std_logic lab=p2}
C {devices/capa.sym} 1490 -340 0 0 {name=Cp3
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1430 -460 0 1 {name=p1 sig_type=std_logic lab=vo}
C {devices/lab_wire.sym} 930 -360 0 1 {name=p4 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 1180 -500 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 1390 -310 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 1490 -310 0 0 {name=l20 lab=GND}
C {switch_ngspice.sym} 1150 -300 0 0 {name=S8 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=1 ROFF=roff"}
C {devices/lab_wire.sym} 1080 -300 0 0 {name=p6 sig_type=std_logic lab=track}
C {devices/gnd.sym} 1150 -270 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 1110 -280 1 0 {name=l22 lab=GND}
C {switch_ngspice.sym} 1650 -340 0 0 {name=S10 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/gnd.sym} 1650 -310 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 1610 -320 1 0 {name=l26 lab=GND}
C {devices/lab_wire.sym} 1580 -340 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 1350 -320 1 0 {name=l16 lab=GND}
C {devices/capa.sym} 1270 -270 0 0 {name=Cp5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1270 -240 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 1290 -360 0 1 {name=p8 sig_type=std_logic lab=votap}
C {res.sym} -290 -310 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
