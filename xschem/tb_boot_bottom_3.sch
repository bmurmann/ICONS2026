v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 130 -1180 910 -630 {flags=graph
y1=0
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
rawfile=./simulation/tb_boot_bottom_3.raw
autoload=1
hilight_wave=1
y2=1.9
linewidth_mult=2
color="4 5 6"
node="\\"vtop-vbot; x6.vtop x6.vbot -\\"
x6.vtop
x6.vbot"}
N 590 -320 590 -300 {lab=#net1}
N 200 -500 220 -500 {lab=#net2}
N 340 -420 380 -420 {lab=#net2}
N 200 -440 220 -440 {lab=#net3}
N 200 -460 200 -440 {lab=#net3}
N 200 -460 380 -480 {lab=#net3}
N 380 -520 380 -480 {lab=#net3}
N 340 -520 380 -520 {lab=#net3}
N 380 -520 440 -520 {lab=#net3}
N 380 -420 440 -420 {lab=#net2}
N 120 -540 220 -540 {lab=trackb}
N 120 -540 120 -520 {lab=trackb}
N 120 -400 220 -400 {lab=track}
N 120 -440 120 -400 {lab=track}
N 590 -320 630 -320 {lab=#net1}
N 1120 -260 1150 -260 {lab=track}
N 1190 -320 1190 -290 {lab=votap}
N 1530 -420 1690 -420 {lab=vo}
N 1620 -300 1650 -300 {lab=p1}
N 1310 -320 1390 -320 {lab=votap}
N 1310 -320 1310 -260 {lab=votap}
N 1190 -320 1310 -320 {lab=votap}
N 1010 -420 1210 -420 {lab=vc}
N 1010 -320 1070 -320 {lab=vc}
N 1010 -420 1010 -320 {lab=vc}
N 1130 -320 1190 -320 {lab=votap}
N 1430 -420 1430 -330 {lab=vo}
N 1260 -420 1430 -420 {lab=vo}
N 1530 -420 1530 -330 {lab=vo}
N 1430 -420 1530 -420 {lab=vo}
N 1690 -420 1690 -330 {lab=vo}
N 790 -410 790 -370 {lab=vdd}
N 820 -410 820 -370 {lab=p1}
N 850 -390 850 -370 {lab=p2}
N 930 -320 1010 -320 {lab=vc}
N 690 -320 740 -320 {lab=vi}
N 80 -400 120 -400 {lab=track}
N -50 -400 20 -400 {lab=#net4}
N -50 -400 -50 -380 {lab=#net4}
N 200 -480 380 -460 {lab=#net2}
N 380 -460 380 -420 {lab=#net2}
N 200 -500 200 -480 {lab=#net2}
N 880 -390 880 -370 {lab=p2}
N 850 -390 880 -390 {lab=p2}
N 850 -410 850 -390 {lab=p2}
C {devices/code_shown.sym} 940 -1150 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.param vdd=1.2 viq=0.6 vamp=0.3
.param cl=1.3p cb=400f w=26u ng=5
.param w4=13u ng4=3 w5=5u cw5=2f w6=3u
.param ndft=31 npad=5 bin=5 fclk=500e6 runs=15
.param per=1/fclk fin=fclk*bin/ndft trf=50p
.param vh=0 rsw=10 roff=1e9 rs=10

.csparam per=per runs=runs
.csparam tstop1 = 4*per
.csparam tstop2 = per*(ndft+npad)
.option method=trap reltol=1e-5 chgtol=1e-16

.control
    tran 1n $&tstop1
    write tb_boot_bottom_3.raw
    option numdgt=9
    set wr_singlescale
    set wr_vecnames
    compose bin_vec start=1 stop=$&runs step=1
    foreach i $&bin_vec
      alterparam bin=$i
      reset
      tran 10p $&tstop2 0
      let lin-tstep = $&per
      let lin-tstart = 1.9n
      linearize
      wrdata tb_boot_bottom_3.txt v(vi) v(vo)
      destroy all
      set appendwrite
      unset wr_vecnames
    end
    unset appendwrite
.endc
"}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {launcher.sym} 710 -600 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_boot_bottom_3.raw tran"
}
C {vsource.sym} 590 -270 0 0 {name=Vi2 value="sin(\{viq\} vamp fin 0)" savecurrent=false}
C {devices/gnd.sym} 590 -240 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 170 -400 0 0 {name=p30 sig_type=std_logic lab=track}
C {devices/lab_wire.sym} 170 -540 0 0 {name=p31 sig_type=std_logic lab=trackb}
C {devices/lab_wire.sym} 520 -420 2 0 {name=p32 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 520 -520 2 0 {name=p33 sig_type=std_logic lab=p2}
C {sg13g2_stdcells/sg13g2_inv_8.sym} 480 -520 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 480 -420 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 280 -520 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 280 -420 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 120 -480 3 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {vsource.sym} -50 -355 0 0 {name=Vtrk value="pulse(0 vdd 0 trf trf \{per/2\} per 0)" savecurrent=false}
C {devices/gnd.sym} -50 -325 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 270 -210 0 0 {name=Vsup value=vdd savecurrent=false}
C {devices/lab_wire.sym} 270 -240 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 270 -180 0 0 {name=l11 lab=GND}
C {devices/vsource.sym} 370 -210 0 0 {name=Vsup1 value=0 savecurrent=false}
C {devices/lab_wire.sym} 370 -240 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/gnd.sym} 370 -180 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 710 -320 0 0 {name=p2 sig_type=std_logic lab=vi}
C {res.sym} 660 -320 3 0 {name=R1
value=rs
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1100 -320 3 0 {name=Cp
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 1430 -300 0 0 {name=G1 value=100e-3}
C {switch_ngspice.sym} 1240 -420 1 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/lab_wire.sym} 1240 -460 0 1 {name=p43 sig_type=std_logic lab=p2}
C {devices/capa.sym} 1530 -300 0 0 {name=Cp3
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1470 -420 0 1 {name=p1 sig_type=std_logic lab=vo}
C {devices/lab_wire.sym} 970 -320 0 1 {name=p4 sig_type=std_logic lab=vc}
C {devices/gnd.sym} 1220 -460 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 1430 -270 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 1530 -270 0 0 {name=l20 lab=GND}
C {switch_ngspice.sym} 1190 -260 0 0 {name=S8 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=1 ROFF=roff"}
C {devices/lab_wire.sym} 1120 -260 0 0 {name=p6 sig_type=std_logic lab=track}
C {devices/gnd.sym} 1190 -230 0 0 {name=l21 lab=GND}
C {devices/gnd.sym} 1150 -240 1 0 {name=l22 lab=GND}
C {switch_ngspice.sym} 1690 -300 0 0 {name=S10 model=SW1
device_model=".MODEL SW1 SW 
+ VT=0.6 VH=vh
+ RON=rsw ROFF=roff"}
C {devices/gnd.sym} 1690 -270 0 0 {name=l25 lab=GND}
C {devices/gnd.sym} 1650 -280 1 0 {name=l26 lab=GND}
C {devices/lab_wire.sym} 1620 -300 0 0 {name=p7 sig_type=std_logic lab=p1}
C {devices/gnd.sym} 1390 -280 1 0 {name=l16 lab=GND}
C {devices/capa.sym} 1310 -230 0 0 {name=Cp5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1310 -200 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 1330 -320 0 1 {name=p8 sig_type=std_logic lab=votap}
C {boot3.sym} 830 -320 0 0 {name=x6}
C {devices/lab_wire.sym} 790 -410 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 820 -410 0 0 {name=p10 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 850 -410 0 0 {name=p11 sig_type=std_logic lab=p2}
C {res.sym} 50 -400 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
