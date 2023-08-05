use <case_with_port_holes.scad>
use <../hdd_case/2.5in_case.scad>

translate([0, 0, 12]){
    make_case();
}

translate([130, 0, 0]){
	rotate([0, 0, 90]){
	    make_25_holder();
    }
}
