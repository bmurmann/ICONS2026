v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 80 -920 720 -520 {flags=graph
y1=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"ronp; 1 @n.xm2.nsg13_lv_pmos[gds] /\\"
\\"ronn; 1 @n.xm1.nsg13_lv_nmos[gds] /\\"
\\"rontot; 1 @n.xm1.nsg13_lv_nmos[gds] @n.xm2.nsg13_lv_pmos[gds] + /\\""
color="7 4 12"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/tb_tgate.raw
autoload=1
sim_type=dc
x2=1.2
y2=4000}
N 410 -200 410 -180 {
lab=GND}
N 410 -310 410 -260 {lab=vi}
N 500 -220 530 -220 {lab=vi}
N 500 -390 530 -390 {lab=vi}
N 500 -310 500 -220 {lab=vi}
N 590 -220 620 -220 {lab=#net1}
N 590 -390 620 -390 {lab=#net1}
N 620 -390 620 -220 {lab=#net1}
N 560 -390 560 -330 {lab=GND}
N 560 -280 560 -220 {lab=vdd}
N 560 -460 560 -430 {lab=vdd}
N 410 -310 500 -310 {lab=vi}
N 500 -390 500 -310 {lab=vi}
N 330 -200 330 -180 {
lab=GND}
N 330 -460 560 -460 {lab=vdd}
N 330 -460 330 -260 {lab=vdd}
C {devices/code_shown.sym} 840 -760 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt

.save @n.xm1.nsg13_lv_nmos[gds]
.save @n.xm2.nsg13_lv_pmos[gds]
.save all
.dc Vi 0 1.2 0.01

.control
   run
   write tb_tgate.raw
   op
   show
.endc
"}
C {devices/gnd.sym} 410 -180 0 0 {name=l5 lab=GND}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {launcher.sym} 910 -460 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_tgate.raw dc"
}
C {vsource.sym} 410 -230 0 0 {name=Vi value="0.6" savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -410 1 0 {name=M1
l=0.13u
w=1.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -200 3 0 {name=M2
l=0.13u
w=3.9u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 560 -180 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 560 -330 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 560 -280 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 330 -180 0 0 {name=l3 lab=GND}
C {vsource.sym} 330 -230 0 0 {name=Vdd value="1.2" savecurrent=false}
C {lab_wire.sym} 460 -460 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 460 -310 0 0 {name=p3 sig_type=std_logic lab=vi}
