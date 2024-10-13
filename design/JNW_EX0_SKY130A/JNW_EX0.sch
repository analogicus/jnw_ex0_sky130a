v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 50 -310 130 -310 {
lab=IBPS_4U}
N 10 -280 170 -280 {
lab=VSS}
N -20 -310 10 -310 {
lab=VSS}
N -20 -310 -20 -280 {
lab=VSS}
N -20 -280 10 -280 {
lab=VSS}
N 170 -280 200 -280 {
lab=VSS}
N 200 -310 200 -280 {
lab=VSS}
N 170 -310 200 -310 {
lab=VSS}
N -60 -280 -20 -280 {
lab=VSS}
N 0 -390 10 -390 {
lab=IBPS_4U}
N 10 -390 10 -340 {
lab=IBPS_4U}
N 170 -400 300 -400 {
lab=IBNS_20U}
N 170 -400 170 -340 {
lab=IBNS_20U}
N 10 -360 60 -360 {
lab=IBPS_4U}
N 60 -360 60 -310 {
lab=IBPS_4U}
C {cborder/border_s.sym} 520 0 0 0 {
user="wulff"
company="wulff"
name=xa[4:0]}
C {devices/ipin.sym} -60 -280 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 0 -390 0 0 {name=p3 lab=IBPS_5U}
C {devices/opin.sym} 300 -400 0 0 {name=p4 lab=IBNS_20U}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 130 -310 0 0 {name=xa1[3:0]}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 50 -310 0 1 {name=xa0}
