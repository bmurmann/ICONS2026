v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 130 -930 930 -530 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=1.9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vop
vgp"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
rawfile=./simulations/th_nmos.raw
autoload=1}
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
N 50 -260 50 -220 {
lab=VDD}
N 50 -160 50 -140 {
lab=GND}
N 230 -420 230 -340 {lab=vip}
N 390 -420 390 -340 {lab=vim}
N 690 -310 790 -310 {lab=vop}
N 790 -310 790 -260 {lab=vop}
N 540 -310 630 -310 {lab=vip}
N 660 -390 660 -350 {lab=vgp}
N 50 -570 50 -530 {
lab=vgp}
N 50 -470 50 -450 {
lab=GND}
N 660 -310 660 -240 {lab=GND}
C {devices/code_shown.sym} 950 -550 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2 vcm=0.7 vamp=0.2
.param w=10u l=0.13u nf=5
.param cl=1p
.param nfft=16 fclk=10Meg per=1/fclk cycles=3 fin=fclk*cycles/nfft

.csparam per = 10n
.csparam tstart = per/4
.csparam tstop = per*(nfft+3)
.option method=gear reltol=1e-6

.control
    tran 1n $&tstop
    write th_nmos.raw
 
    option interp
    tran $&per $&tstop $&tstart
    write th_nmos_samp.raw
.endc
"}
C {devices/vcvs.sym} 230 -310 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} 390 -310 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} 310 -190 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} 130 -140 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 310 -140 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 310 -270 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 50 -190 0 0 {name=V1 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} 50 -260 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 50 -140 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 660 -330 3 1 {name=M1
l=\{l\}
w=\{w/nf\}
ng=1
m=nf
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 790 -200 0 0 {name=l3 lab=GND}
C {devices/capa.sym} 790 -230 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 390 -420 0 1 {name=p10 sig_type=std_logic lab=vim}
C {devices/lab_wire.sym} 230 -420 0 1 {name=p11 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 130 -370 0 1 {name=p12 sig_type=std_logic lab=vsd}
C {devices/lab_wire.sym} 260 -240 0 1 {name=p13 sig_type=std_logic lab=vsc}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {devices/lab_wire.sym} 660 -390 0 1 {name=p3 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 540 -310 0 0 {name=p4 sig_type=std_logic lab=vip}
C {devices/lab_wire.sym} 50 -570 0 0 {name=p1 sig_type=std_logic lab=vgp}
C {devices/gnd.sym} 50 -450 0 0 {name=l2 lab=GND}
C {sqwsource.sym} 50 -500 0 0 {name=V2 vhi=1.2 freq=10e6}
C {devices/gnd.sym} 660 -240 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 770 -310 0 0 {name=p2 sig_type=std_logic lab=vop}
C {launcher.sym} 1050 -690 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/th_nmos.raw tran"
}
C {vsource.sym} 130 -190 0 0 {name=Vdm value="sin(0 \{vamp\} \{fin\} 0)" savecurrent=false}
