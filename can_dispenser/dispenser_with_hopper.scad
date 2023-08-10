hopper_x = 0;
hopper_y = 0;
hopper_z = 28;

can_x = 5;
can_y = 35;
can_z = 52 + 1/7;
can_rotate_x = 0;
can_rotate_y = 90;
can_rotate_z = 0;

translate([hopper_x, hopper_y, hopper_z]){
    #import("dispenser_hopper_opened.stl");
}

translate([can_x, can_y, can_z]){
    rotate([can_rotate_x, can_rotate_y, can_rotate_z]){
        import("can.stl");
    }
}

#import("/home/kerley/Documents/3d projects/self_made/can_dispenser/dispenser.stl");
