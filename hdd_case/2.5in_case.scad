include<case.scad>

//Changeable values
width = 70;
length = 101;
wall_height = 12;
x_offset = 0;
y_offset = 0;
z_offset = 1;
wall_thickness = 3;

//Opening
disk_x = 70;
disk_y = wall_thickness + 3;
disk_z = 10;
position_disk_x = 0;
position_disk_y = -4;
position_disk_z = z_offset;

//Manual eject
heigh_eject = 10;
radius_1_eject = 22/2;
radius_2_eject = 22/2;
position_eject_x = width/2;
position_eject_y = 105;
position_eject_z = radius_1_eject/2;
rotate_eject_x = 90;
rotate_eject_y = 0;
rotate_eject_z = -0;

//Non-changeable values
height = z_offset + wall_height;

module make_25_holder(){
	difference(){
		roofed_case(width,
		     length,
		     wall_height,
		     wall_thickness,
		     x_offset,
		     y_offset,
		     z_offset);
		translate([position_disk_x, position_disk_y, position_disk_z]) {
		    color([0, 1, 0]) cube([disk_x, disk_y, disk_z]);
		}
		translate([position_eject_x, position_eject_y, position_eject_z]){
		    rotate([rotate_eject_x, rotate_eject_y, rotate_eject_z]){
			    color([0, 1, 0]) cylinder(heigh_eject, radius_1_eject, radius_2_eject);
		    }
		}
	}
}

make_25_holder();
