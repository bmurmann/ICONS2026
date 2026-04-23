v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 180 -850 810 -560 {flags=graph
y1=-2.1e-08
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
rawfile=./simulation/tb_th_boot.raw
autoload=1
hilight_wave=-1
y2=1.6
color=7
node=x1.vgp}
N 310 -330 350 -330 {
lab=vsd}
N 130 -370 130 -220 {
lab=vsd}
N 130 -370 310 -370 {
lab=vsd}
N 130 -160 130 -140 {
lab=GND}
N 310 -160 310 -140 {
lab=GND}
N 310 -240 390 -240 {
lab=vsc}
N 310 -240 310 -220 {
lab=vsc}
N 310 -290 350 -290 {
lab=GND}
N 310 -290 310 -270 {
lab=GND}
N 230 -280 230 -240 {
lab=vsc}
N 390 -280 390 -240 {
lab=vsc}
N 310 -370 310 -330 {
lab=vsd}
N 230 -240 310 -240 {
lab=vsc}
N 270 -290 310 -290 {
lab=GND}
N 270 -330 310 -330 {
lab=vsd}
N 500 -160 500 -140 {
lab=GND}
N 670 -360 670 -290 {lab=vdd}
N 500 -400 570 -400 {lab=track}
N 500 -400 500 -220 {lab=track}
N 810 -460 870 -460 {lab=vop}
N 810 -420 870 -420 {lab=vom}
N 230 -480 230 -340 {lab=vsp}
N 390 -440 390 -340 {lab=vsm}
N 490 -480 570 -480 {lab=vip}
N 490 -440 570 -440 {lab=vim}
N 390 -440 430 -440 {lab=vsm}
N 230 -480 430 -480 {lab=vsp}
C {devices/code_shown.sym} 930 -820 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
.param vdd=1.2 vcm=0.3 vamp=0.4
.param rs=1m cl=5p cb=5p w=50u l=0.13u nf=10
.param nfft=32 fclk=500Meg per=1/fclk trf=50p 
.param bin=1 fin=fclk*bin/nfft

.csparam per = per
.csparam t1 = 4*per
.csparam tstart = 3/4*per
.csparam tstop = \{3/4*per + per*(nfft+3)\}
.option method=gear reltol=1e-6 delmax=1p

.control
    tran 1n $&t1
    write tb_th_boot.raw
 
    option interp
    set wr_singlescale
    set wr_vecnames
    compose bin_vec start=1 stop=15 step=1
    foreach i $&bin_vec
      alterparam bin=$i
      reset
      tran $&per $&tstop $&tstart
      wrdata tb_th_boot.txt v(vop) 
      set appendwrite
      unset set wr_vecnames
    end
    unset appendwrite
    op
    show n.x1.xmdum.nsg13_lv_nmos
.endc
"}
C {devices/vcvs.sym} 230 -310 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 390 -310 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 310 -190 0 0 {name=Vcm value=vcm savecurrent=false}
C {devices/gnd.sym} 130 -140 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 310 -140 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 310 -270 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 670 -260 0 0 {name=Vsup value=vdd savecurrent=false}
C {devices/lab_wire.sym} 670 -300 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 670 -230 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 130 -370 0 1 {name=p12 sig_type=std_logic lab=vsd}
C {devices/lab_wire.sym} 260 -240 0 1 {name=p13 sig_type=std_logic lab=vsc}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {devices/lab_wire.sym} 500 -300 0 1 {name=p1 sig_type=std_logic lab=track}
C {devices/gnd.sym} 500 -140 0 0 {name=l2 lab=GND}
C {launcher.sym} 1010 -160 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_th_boot.raw tran"
}
C {vsource.sym} 130 -190 0 0 {name=Vdm value="sin(0 vamp fin 0)" savecurrent=false}
C {th_boot.sym} 720 -460 0 0 {name=x1}
C {res.sym} 460 -480 3 0 {name=Rp
value=rs
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 720 -360 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 870 -460 0 1 {name=p2 sig_type=std_logic lab=vop}
C {devices/lab_wire.sym} 870 -420 0 1 {name=p3 sig_type=std_logic lab=vom}
C {res.sym} 460 -440 1 0 {name=Rm
value=rs
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 230 -400 0 1 {name=p4 sig_type=std_logic lab=vsp}
C {devices/lab_wire.sym} 390 -400 0 1 {name=p6 sig_type=std_logic lab=vsm}
C {vsource.sym} 500 -190 0 0 {name=Vtrk value="dc vdd pulse(0 vdd 0 trf trf \{per/2\} per 0)" savecurrent=false}
C {devices/lab_wire.sym} 520 -480 0 1 {name=p8 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 520 -440 0 1 {name=p9 sig_type=std_logic lab=vim}
