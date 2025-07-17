lo1 = 9.5;
ho1 = 6.5;

li1 = 7.2;
hi1 = 5;

li2 = 4.0;
hi2 = ho1;

ofs1 = (lo1 - li1) / 2;
ofs2 = (lo1 - li2) / 2;

rr = 5.8;
o4 = (lo1) / 2;

module hitek() {

xx = 0.5;
    
union() {
translate([-1.5, (lo1-xx)/2, -0.1]) cube([lo1 + 3, xx, xx], center = false);
translate([(lo1-xx)/2, -1.5, -0.1]) cube([xx, lo1+3, xx], center = false);
difference() {
	union() {
        translate([0, 0, 0])
			cube([lo1, lo1, ho1], center = false);
        }
    translate([ofs1, ofs1, 0]) cube([li1, li1, hi1], center = false);
translate([o4, o4, 0])rotate([0,0,45])cylinder(10,rr,0,$fn=4, center = false);
}
    translate([ofs2, ofs2, 0]) cube([li2, li2, hi2], center = false);
  // #translate([0, 0, hi1]) cube([lo1, lo1, ho1-hi1], center = false);
}

}

cl = 5.5;
ch = 4;
cx = 4.5;
cw = 1.4;
ri = 1.2;

co1 = (cl - cx) / 2;
co2 = (cl - cw) / 2;

module cherry() {

union() {
difference() {
	union() {
        translate([0, 0, 0])
			cube([cl, cl, ch], center = false);
        }
    translate([co1, co2, 0]) cube([cx, cw, ch], center = false);
    translate([co2, co1, 0]) cube([cw, cx, ch], center = false);
    translate([cl/2, cl/2, 0])rotate([0,0,0])cylinder(10,ri,ri,$fn=40, center = false);
}
}

}

o3 = (lo1 - cl) / 2;
translate([0, 0, 0])hitek();
translate([o3, o3, ho1])cherry();

