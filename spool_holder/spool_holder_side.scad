$fn = 40;

width = 3;
height = 15;

forward_offset_x = 125;
forward_offset_y = 100;

side_offset_x = 125;
side_offset_y = -125;

left_bridge_offset_x = 7;
left_bridge_offset_y = 5;

right_bridge_offset_x = 7;
right_bridge_offset_y = -7;

rod_stl_path = "spool_holder_rod.stl";

thickness = 3;
difference(){
translate([0, 0, 0]){
hull(){
    cylinder(height, thickness, thickness);
    translate([forward_offset_x, forward_offset_y, 0])
    {
        cylinder(height, thickness, thickness);
    }
}

hull(){
    cylinder(height, thickness, thickness);
    translate([side_offset_x, side_offset_y, 0])
    {
        cylinder(height, thickness, thickness);
    }
}

hull(){
    translate([forward_offset_x, forward_offset_y]){
        cylinder(height, thickness, thickness);
    }
    translate([side_offset_x, side_offset_y]){
        cylinder(height, thickness, thickness);
    }
}
}
import(rod_stl_path);}

difference(){
    hull(){
        translate([left_bridge_offset_x, left_bridge_offset_y, 0]){
        cylinder(height, thickness, thickness){};
        }
        translate([right_bridge_offset_x, right_bridge_offset_y, 0]){
        cylinder(height, thickness, thickness){};
        }
    }
    import(rod_stl_path);
}
