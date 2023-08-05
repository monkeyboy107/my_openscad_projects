use <case_with_port_holes.scad>
use <../hdd_case/3.5in_case.scad>

translate([0, 0, 29]){
    make_case();
}

translate([130, -0.1, 0]){
	rotate([0, 0, 90]){
	    make_35_holder();
    }
}
