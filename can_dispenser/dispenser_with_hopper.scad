hopper_x = 0;
hopper_y = 0;
hopper_z = 60;

translate([hopper_x, hopper_y, hopper_z]){
    import("dispenser_hopper_opened.stl");
}

import("/home/kerley/Documents/3d projects/self_made/can_dispenser/dispenser.stl");

