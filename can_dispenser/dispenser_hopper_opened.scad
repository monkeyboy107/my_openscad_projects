use <can.scad>
use <dispenser_hopper.scad>
//General settings
dispenser_length = 67;
wall_thickness = 4;
lip_wall_thickness = 2;
tall_wall_x = 125;
tall_wall_y = dispenser_length;
tall_wall_z = dispenser_length * 3;
lip_x = tall_wall_x;
lip_y = tall_wall_y;
lip_z = 5;
lip_z_offset = tall_wall_z;
opening_z = 40;

//Can settings
can_radius = 66.2/2;
can_top_radius = 53.67/2;
can_top_rise = 14.57;
can_bottom_radius = 50/2;
can_bottom_rise = 7.4;
can_height = 123.53;

dispenser_width = can_height + 2;

hopper_with_opening(can_height, dispenser_width, dispenser_length, wall_thickness, lip_wall_thickness, tall_wall_x, tall_wall_y, tall_wall_z, lip_x, lip_y, lip_z, opening_z);

/*
translate([5, 40, 10]){
    rotate([0, 90, 0]){
        can(can_height, can_radius, can_top_rise, can_top_radius, can_bottom_rise, can_bottom_radius);
    }
}
*/
