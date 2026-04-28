v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 140 -1450 920 -900 {flags=graph
y1=-0.14
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=8e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=./simulation/tb_boot_bottom_diff.raw
autoload=1
hilight_wave=1
y2=1.8
color="4 5 6"
node="x7.vg
x7.vtop
x7.vbot"}
N 0 -790 20 -790 {lab=#net1}
N 0 -790 0 -770 {lab=#net1}
N 0 -770 180 -730 {lab=#net1}
N 180 -730 180 -710 {lab=#net1}
N 140 -710 180 -710 {lab=#net1}
N 0 -730 20 -730 {lab=#net2}
N 0 -750 0 -730 {lab=#net2}
N 0 -750 180 -770 {lab=#net2}
N 180 -810 180 -770 {lab=#net2}
N 140 -810 180 -810 {lab=#net2}
N 180 -810 240 -810 {lab=#net2}
N 180 -710 240 -710 {lab=#net1}
N 320 -810 390 -810 {lab=p2}
N 320 -710 390 -710 {lab=p1}
N -80 -830 20 -830 {lab=trackb}
N -80 -830 -80 -810 {lab=trackb}
N -80 -690 20 -690 {lab=track}
N -80 -730 -80 -690 {lab=track}
N 1120 -440 1150 -440 {lab=track}
N 1190 -500 1190 -470 {lab=votap}
N 1595 -480 1625 -480 {lab=p1}
N 1040 -570 1210 -570 {lab=vcp}
N 1040 -500 1070 -500 {lab=vcp}
N 1040 -570 1040 -500 {lab=vcp}
N 1130 -500 1190 -500 {lab=votap}
N 1430 -570 1430 -510 {lab=vop}
N 1515 -570 1515 -510 {lab=vop}
N 1515 -570 1665 -570 {lab=vop}
N 1665 -570 1665 -510 {lab=vop}
N -80 -690 -80 -640 {lab=track}
N -80 -580 -80 -555 {lab=#net3}
N 400 -350 440 -350 {
lab=vsd}
N 220 -390 220 -240 {
lab=vsd}
N 220 -390 400 -390 {
lab=vsd}
N 220 -180 220 -160 {
lab=GND}
N 400 -180 400 -160 {
lab=GND}
N 400 -260 480 -260 {
lab=vsc}
N 400 -260 400 -240 {
lab=vsc}
N 400 -310 440 -310 {
lab=GND}
N 400 -310 400 -290 {
lab=GND}
N 320 -300 320 -260 {
lab=vsc}
N 480 -300 480 -260 {
lab=vsc}
N 400 -390 400 -350 {
lab=vsd}
N 320 -260 400 -260 {
lab=vsc}
N 360 -310 400 -310 {
lab=GND}
N 360 -350 400 -350 {
lab=vsd}
N 320 -500 320 -360 {lab=vsp}
N 480 -460 480 -360 {lab=vsn}
N 580 -460 660 -460 {lab=vin}
N 480 -460 520 -460 {lab=vsn}
N 320 -500 520 -500 {lab=vsp}
N 1430 -570 1515 -570 {lab=vop}
N 1295 -500 1295 -470 {lab=votap}
N 1190 -500 1295 -500 {lab=votap}
N 1120 -165 1150 -165 {lab=track}
N 1190 -225 1190 -195 {lab=votan}
N 1595 -205 1625 -205 {lab=p1}
N 1040 -295 1210 -295 {lab=vcn}
N 1040 -225 1070 -225 {lab=vcn}
N 1040 -295 1040 -225 {lab=vcn}
N 1130 -225 1190 -225 {lab=votan}
N 1430 -295 1430 -235 {lab=von}
N 1515 -295 1515 -235 {lab=von}
N 1515 -295 1665 -295 {lab=von}
N 1665 -295 1665 -235 {lab=von}
N 1430 -295 1515 -295 {lab=von}
N 1295 -225 1295 -195 {lab=votan}
N 1295 -225 1390 -225 {lab=votan}
N 1190 -225 1295 -225 {lab=votan}
N 900 -500 1040 -500 {lab=vcp}
N 580 -500 710 -500 {lab=vip}
N 900 -225 1040 -225 {lab=vcn}
N 660 -460 660 -225 {lab=vin}
N 660 -225 710 -225 {lab=vin}
N 770 -585 770 -550 {lab=vdd}
N 800 -585 800 -550 {lab=p1}
N 830 -585 830 -550 {lab=p2}
N 800 -310 800 -275 {lab=p1}
N 830 -310 830 -275 {lab=p2}
N 770 -310 770 -275 {lab=vdd}
N 1270 -570 1430 -570 {lab=vop}
N 1295 -500 1390 -500 {lab=votap}
N 1270 -295 1430 -295 {lab=von}
C {devices/code_shown.sym} 965 -1425 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.param vdd=1.2 vcm=0.6 vamp=0.6
.param cl=1.3p cb=500f cp=1f w=29u ng=4
.param w4=15u ng4=3 w5=6u ng5=1 w6=4u ng6=1 cw6=3.4f
.param wa=2u wb=2u wc=5u w2=6u w3=6u cw2=1f 
.param ndft=31 npad=5 bin=5 fclk=500e6 runs=15
.param per=1/fclk fin=fclk*bin/ndft trf=100p
.param vh=0 rsw=20 roff=1e9 rs=10

.csparam per=per runs=runs
.csparam tstop1 = 4*per
.csparam tstop2 = per*(ndft+npad)
.option method=trap chgtol=1e-16 reltol=1e-5

.control
    tran 1n $&tstop1
    write tb_boot_bottom_diff.raw
    option numdgt=9
    set wr_singlescale
    set wr_vecnames
    compose bin_vec start=1 stop=$&runs step=1
    foreach i $&bin_vec
      alterparam bin=$i
      reset
      tran 10p $&tstop2 0
      let lin-tstep = per
      let lin-tstart = 1.9n
      linearize
      wrdata tb_boot_bottom_diff.txt v(vip) v(vop) v(von)
      destroy all
      set appendwrite
      unset wr_vecnames
    end
    unset appendwrite
.endc
"}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {launcher.sym} 1250 -720 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_boot_bottom.raw tran"
}
C {devices/lab_wire.sym} -30 -690 0 0 {name=p30 sig_type=std_logic lab=track}
C {devices/lab_wire.sym} -30 -830 0 0 {name=p31 sig_type=std_logic lab=trackb}
C {devices/lab_wire.sym} 320 -710 2 0 {name=p32 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 320 -810 2 0 {name=p33 sig_type=std_logic lab=p2}
C {devices/capa.sym} 420 -810 3 0 {name=Cp1
m=1
value=0.1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 420 -710 3 0 {name=Cp2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 450 -810 2 0 {name=p36 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 450 -710 2 0 {name=p37 sig_type=std_logic lab=vss}
C {sg13g2_stdcells/sg13g2_inv_8.sym} 280 -810 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 280 -710 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 80 -810 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 80 -710 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} -80 -770 3 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {vsource.sym} -80 -525 0 0 {name=Vtrk value="pulse(0 vdd 0 trf trf \{per/2\} per 0)" savecurrent=false}
C {devices/gnd.sym} -80 -495 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 560 -760 0 0 {name=Vsup value=vdd savecurrent=false}
C {devices/lab_wire.sym} 560 -790 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 560 -730 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 660 -760 0 0 {name=Vsup1 value=0 savecurrent=false}
C {devices/lab_wire.sym} 660 -790 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 660 -730 0 0 {name=l14 lab=GND}
C {devices/capa.sym} 1100 -500 3 0 {name=Cp
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 1430 -480 0 0 {name=G1 value=100e-3}
C {switch_ngspice.sym} 1240 -570 1 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 1240 -610 0 1 {name=p43 sig_type=std_logic lab=p2}
C {devices/capa.sym} 1515 -480 0 0 {name=Cp3
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1470 -570 0 1 {name=p1 sig_type=std_logic lab=vop}
C {devices/lab_wire.sym} 970 -500 0 1 {name=p4 sig_type=std_logic lab=vcp}
C {devices/gnd.sym} 1220 -610 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 1430 -450 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 1515 -450 0 0 {name=l20 lab=GND}
C {switch_ngspice.sym} 1190 -440 0 0 {name=S8 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 1120 -440 0 0 {name=p6 sig_type=std_logic lab=track}
C {devices/gnd.sym} 1190 -410 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 1150 -420 1 0 {name=l22 lab=GND}
C {switch_ngspice.sym} 1665 -480 0 0 {name=S10 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/gnd.sym} 1665 -450 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 1625 -460 1 0 {name=l26 lab=GND}
C {devices/lab_wire.sym} 1595 -480 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 1390 -460 1 0 {name=l16 lab=GND}
C {devices/capa.sym} 1295 -440 0 0 {name=Cp5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1295 -410 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 1330 -500 0 1 {name=p8 sig_type=std_logic lab=votap}
C {res.sym} -80 -610 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {boot4.sym} 800 -500 0 0 {name=x6}
C {devices/vcvs.sym} 320 -330 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 480 -330 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 400 -210 0 0 {name=Vcm value=vcm savecurrent=false}
C {devices/gnd.sym} 220 -160 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 400 -160 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 400 -290 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 220 -390 0 1 {name=p12 sig_type=std_logic lab=vsd}
C {devices/lab_wire.sym} 350 -260 0 1 {name=p13 sig_type=std_logic lab=vsc}
C {vsource.sym} 220 -210 0 0 {name=Vdm value="sin(0 vamp fin 0)" savecurrent=false}
C {res.sym} 550 -500 3 0 {name=Rp
value=rs
footprint=1206
device=resistor
m=1}
C {res.sym} 550 -460 1 0 {name=Rm
value=rs
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 320 -420 0 1 {name=p9 sig_type=std_logic lab=vsp}
C {devices/lab_wire.sym} 480 -420 0 1 {name=p10 sig_type=std_logic lab=vsn}
C {devices/lab_wire.sym} 610 -500 0 1 {name=p11 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 610 -460 0 1 {name=p14 sig_type=std_logic lab=vin}
C {devices/capa.sym} 1100 -225 3 0 {name=Cp4
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 1430 -205 0 0 {name=G2 value=100e-3}
C {switch_ngspice.sym} 1240 -295 1 0 {name=S1 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 1240 -335 0 1 {name=p2 sig_type=std_logic lab=p2}
C {devices/capa.sym} 1515 -205 0 0 {name=Cp6
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1470 -295 0 1 {name=p15 sig_type=std_logic lab=von}
C {devices/lab_wire.sym} 970 -225 0 1 {name=p16 sig_type=std_logic lab=vcn}
C {devices/gnd.sym} 1220 -335 2 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1430 -175 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 1515 -175 0 0 {name=l3 lab=GND}
C {switch_ngspice.sym} 1190 -165 0 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 1120 -165 0 0 {name=p17 sig_type=std_logic lab=track}
C {devices/gnd.sym} 1190 -135 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1150 -145 1 0 {name=l9 lab=GND}
C {switch_ngspice.sym} 1665 -205 0 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/gnd.sym} 1665 -175 0 0 {name=l12 lab=GND}
C {devices/gnd.sym} 1625 -185 1 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 1595 -205 0 0 {name=p18 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 1390 -185 1 0 {name=l15 lab=GND}
C {devices/capa.sym} 1295 -165 0 0 {name=Cp7
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1295 -135 0 0 {name=l18 lab=GND}
C {devices/lab_wire.sym} 1330 -225 0 1 {name=p19 sig_type=std_logic lab=votan}
C {boot4.sym} 800 -225 0 0 {name=x7}
C {devices/lab_wire.sym} 830 -585 0 1 {name=p20 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 800 -585 0 1 {name=p21 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 770 -585 0 1 {name=p22 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 830 -310 0 1 {name=p23 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 800 -310 0 1 {name=p24 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 770 -310 0 1 {name=p25 sig_type=std_logic lab=vdd}
