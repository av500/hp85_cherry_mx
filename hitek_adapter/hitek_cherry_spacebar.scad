$fn = 30;

dd = 9.5;
hh = 11;

angle = 14;

d2 = dd / cos(angle);
h2 = hh + d2 * sin(angle);

ofs = 0;


module space() {

difference() {
	union() {
        translate([0, 0, 0]) cube([dd,dd,h2], center = false);
    }
    translate([0, 0, hh]) 
        rotate([0,-angle,0])cube([d2, dd, 5], center = false);
}

}

translate([0, 0, 0])space();

