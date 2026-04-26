v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 350 -910 980 -620 {flags=graph
y1=0.02
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=8e-13
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
rawfile=./simulation/tb_track_nmos.raw
autoload=1
hilight_wave=1
y2=1.7
color="6 4 12 13"
node="vi2
vo2
vg2
\\"vgs; vg2 vi2 -\\""}
N 920 -500 920 -480 {lab=vo1}
N 840 -500 920 -500 {lab=vo1}
N 640 -500 780 -500 {lab=vi1}
N 640 -500 640 -480 {lab=vi1}
N 810 -560 810 -540 {lab=vg1}
N 560 -560 810 -560 {lab=vg1}
N 560 -560 560 -480 {lab=vg1}
N 810 -500 810 -430 {lab=GND}
N 840 -230 840 -210 {lab=vo2}
N 760 -230 840 -230 {lab=vo2}
N 560 -250 560 -230 {lab=vi2}
N 560 -330 560 -310 {lab=vg2}
N 560 -330 730 -330 {lab=vg2}
N 730 -330 730 -270 {lab=vg2}
N 560 -230 560 -210 {lab=vi2}
N 430 -460 430 -440 {lab=#net1}
N 350 -460 430 -460 {lab=#net1}
N 320 -460 320 -390 {lab=GND}
N 150 -480 150 -460 {lab=#net2}
N 150 -560 150 -540 {lab=#net3}
N 150 -560 320 -560 {lab=#net3}
N 320 -560 320 -500 {lab=#net3}
N 150 -460 150 -440 {lab=#net2}
N 150 -460 290 -460 {lab=#net2}
N 920 -330 920 -310 {lab=vg2}
N 730 -330 920 -330 {lab=vg2}
N 730 -230 730 -170 {lab=GND}
N 560 -230 700 -230 {lab=vi2}
N 350 -230 350 -210 {lab=vo3}
N 270 -230 350 -230 {lab=vo3}
N 70 -250 70 -230 {lab=vi3}
N 70 -330 70 -310 {lab=vg3}
N 70 -330 240 -330 {lab=vg3}
N 240 -330 240 -270 {lab=vg3}
N 70 -230 70 -210 {lab=vi3}
N 180 -230 210 -230 {lab=vi3}
N 430 -330 430 -310 {lab=vg3}
N 240 -330 430 -330 {lab=vg3}
N 240 -230 240 -170 {lab=vi3}
N 180 -170 240 -170 {lab=vi3}
N 180 -230 180 -170 {lab=vi3}
N 70 -230 180 -230 {lab=vi3}
C {devices/code_shown.sym} 1040 -830 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.param vdd=1.2 viq=0.3 vamp=0.2
.param cl=5p cb=1p w=100u ng=20
.param ndft=53 npad=5 bin=3 
.param fclk=500e6 per=1/fclk fin=fclk*bin/ndft

.csparam per = per
.csparam t1 = 4*per
.csparam tstart = 0
.csparam tstop = per*(ndft-1+npad)
.option method=trap reltol=1e-6

.control
    tran 1n $&t1 uic
    write tb_track_nmos.raw
    option numdgt=12
    set wr_singlescale
    set wr_vecnames
    compose bin_vec start=1 stop=26 step=1
    foreach i $&bin_vec
      alterparam bin=$i
      reset
      tran 10p $&tstop $&tstart uic
      let lin-tstep = per
      linearize
      wrdata tb_track_nmos.txt v(vi1) v(vo1) v(vo2) v(vo3)
      set appendwrite
      unset set wr_vecnames
    end
    unset appendwrite
    op
    show
.endc
"}
C {title.sym} 200 -60 0 0 {name=l8 author="Boris Murmann"}
C {devices/gnd.sym} 560 -420 0 0 {name=l2 lab=GND}
C {launcher.sym} 180 -770 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_track_nmos.raw tran"
}
C {vsource.sym} 640 -450 0 0 {name=Vi value="sin(\{viq\} vamp fin 0)" savecurrent=false}
C {devices/gnd.sym} 920 -420 0 0 {name=l3 lab=GND}
C {vsource.sym} 560 -450 0 0 {name=Vg value="vdd" savecurrent=false}
C {sg13g2_pr/sg13_lv_nmos.sym} 810 -520 1 0 {name=M1
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 920 -450 0 0 {name=C1
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 870 -500 0 1 {name=p2 sig_type=std_logic lab=vo1}
C {devices/gnd.sym} 640 -420 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 700 -500 0 1 {name=p1 sig_type=std_logic lab=vi1}
C {devices/lab_wire.sym} 700 -560 0 1 {name=p3 sig_type=std_logic lab=vg1}
C {devices/gnd.sym} 810 -430 0 0 {name=l4 lab=GND}
C {vsource.sym} 560 -180 0 0 {name=Vi1 value="sin(\{viq\} vamp fin 0)" savecurrent=false}
C {devices/gnd.sym} 840 -150 0 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 730 -250 1 0 {name=M2
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 840 -180 0 0 {name=C2
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 790 -230 0 1 {name=p4 sig_type=std_logic lab=vo2}
C {devices/gnd.sym} 560 -150 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 620 -230 0 1 {name=p5 sig_type=std_logic lab=vi2}
C {devices/lab_wire.sym} 690 -330 0 1 {name=p6 sig_type=std_logic lab=vg2}
C {capa.sym} 560 -280 0 0 {name=C3
m=1
value="cb ic=vdd"
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 430 -380 0 0 {name=l6 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 -480 1 0 {name=M3
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 430 -410 0 0 {name=C4
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 150 -380 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 320 -390 0 0 {name=l11 lab=GND}
C {vsource.sym} 150 -510 0 0 {name=Vg1 value="vdd" savecurrent=false}
C {vsource.sym} 150 -410 0 0 {name=Vg2 value="viq" savecurrent=false}
C {devices/gnd.sym} 920 -250 0 0 {name=l5 lab=GND}
C {capa.sym} 920 -280 0 0 {name=C5
m=1
value=cp
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 70 -180 0 0 {name=Vi2 value="sin(\{viq\} vamp fin 0)" savecurrent=false}
C {devices/gnd.sym} 350 -150 0 0 {name=l12 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 -250 1 0 {name=M4
l=0.13u
w=w
ng=ng
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {capa.sym} 350 -180 0 0 {name=C6
m=1
value=cl
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 300 -230 0 1 {name=p7 sig_type=std_logic lab=vo3}
C {devices/gnd.sym} 70 -150 0 0 {name=l13 lab=GND}
C {devices/lab_wire.sym} 130 -230 0 1 {name=p8 sig_type=std_logic lab=vi3}
C {devices/lab_wire.sym} 200 -330 0 1 {name=p9 sig_type=std_logic lab=vg3}
C {capa.sym} 70 -280 0 0 {name=C7
m=1
value="cb ic=vdd"
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 430 -250 0 0 {name=l14 lab=GND}
C {capa.sym} 430 -280 0 0 {name=C8
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 730 -170 0 0 {name=l15 lab=GND}
