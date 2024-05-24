//General settings
can_height = 123.53;
dispenser_width = can_height + 5;
dispenser_length = 67;
wall_thickness = 4;
lip_wall_thickness = 2;
tall_wall_x = dispenser_width;
tall_wall_y = 109.26;
eject_wall_x = dispenser_width;
eject_wall_y = 180;
eject_wall_z = 53.67/2;
lip_x = tall_wall_x;
lip_y = dispenser_length;
lip_z = 5;
lip_z_offset = eject_wall_z;
back_wall_z = 50/2;

//eject_ramp
eject_ramp_x = tall_wall_x;
eject_ramp_y = tall_wall_y;
eject_ramp_z = back_wall_z;
eject_ramp_bottom_left = [0, eject_ramp_y, 0];
eject_ramp_bottom_right = [eject_ramp_x, eject_ramp_y, 0];
eject_ramp_top_left = [0, 0, eject_ramp_z];
eject_ramp_top_right = [eject_ramp_x, 0, eject_ramp_z];
eject_ramp_back_left = [0, 0, 0];
eject_ramp_back_right = [eject_ramp_x, 0, 0];
eject_ramp = [eject_ramp_bottom_left, eject_ramp_bottom_right, eject_ramp_top_left, eject_ramp_top_right, eject_ramp_back_left, eject_ramp_back_right];

//eject_flat
eject_flat_x = dispenser_width;
eject_flat_y = 180;
eject_flat_z = 0;
eject_flat_thickness = 1;
eject_flat_back_left = [0, 0, 0];
eject_flat_back_right = [eject_flat_x, 0, 0];
eject_flat_front_left = [0, eject_flat_y, 0];
eject_flat_front_right = [eject_flat_x, eject_flat_y, 0];
eject_flat_back_right_thickness = [eject_flat_x, 0, eject_flat_thickness];
eject_flat_back_left_thickness = [0, 0, eject_flat_thickness];
eject_flat_front_left_thickness = [0, eject_flat_y, eject_flat_thickness];
eject_flat_front_right_thickness = [eject_flat_x, eject_flat_y, eject_flat_thickness];
eject_flat = [eject_flat_back_left, eject_flat_back_right, eject_flat_front_left, eject_flat_front_right, eject_flat_back_left_thickness, eject_flat_back_right_thickness, eject_flat_front_left_thickness, eject_flat_front_right_thickness];

//left_eject_wall
left_eject_wall_x = -4;
left_eject_wall_y = eject_wall_y;
left_eject_wall_z = eject_wall_z;
left_eject_bottom_back = [left_eject_wall_x, 0, 0];
left_eject_bottom_forward = [left_eject_wall_x, left_eject_wall_y, 0];
left_eject_top_back = [left_eject_wall_x, 0, left_eject_wall_z];
left_eject_top_forward = [left_eject_wall_x, left_eject_wall_y, left_eject_wall_z];
left_eject_bottom_back_thickness = [left_eject_wall_x + wall_thickness, 0, 0];
left_eject_bottom_forward_thickness = [left_eject_wall_x + wall_thickness, left_eject_wall_y, 0];
left_eject_top_back_thickness = [left_eject_wall_x + wall_thickness, 0, left_eject_wall_z];
left_eject_top_forward_thickness = [left_eject_wall_x + wall_thickness, left_eject_wall_y, left_eject_wall_z];
left_eject = [left_eject_bottom_back, left_eject_bottom_forward, left_eject_top_back, left_eject_top_forward, left_eject_bottom_back_thickness, left_eject_bottom_forward_thickness, left_eject_top_back_thickness, left_eject_top_forward_thickness];

//right_eject_wall
right_eject_wall_x = dispenser_width + 4;
right_eject_wall_y = eject_wall_y;
right_eject_wall_z = eject_wall_z;
right_eject_bottom_back = [right_eject_wall_x, 0, 0];
right_eject_bottom_forward = [right_eject_wall_x, right_eject_wall_y, 0];
right_eject_top_back = [right_eject_wall_x, 0, right_eject_wall_z];
right_eject_top_forward = [right_eject_wall_x, right_eject_wall_y, right_eject_wall_z];
right_eject_bottom_back_thickness = [right_eject_wall_x - wall_thickness, 0, 0];
right_eject_bottom_forward_thickness = [right_eject_wall_x - wall_thickness, right_eject_wall_y, 0];
right_eject_top_back_thickness = [right_eject_wall_x - wall_thickness, 0, right_eject_wall_z];
right_eject_top_forward_thickness = [right_eject_wall_x - wall_thickness, right_eject_wall_y, right_eject_wall_z];
right_eject = [right_eject_bottom_back, right_eject_bottom_forward, right_eject_top_back, right_eject_top_forward, right_eject_bottom_back_thickness, right_eject_bottom_forward_thickness, right_eject_top_back_thickness, right_eject_top_forward_thickness];

//front_eject_wall
front_eject_wall_x = eject_wall_x;
front_eject_wall_y = eject_wall_y;
front_eject_wall_z = eject_wall_z;
front_eject_bottom_left = [0, front_eject_wall_y, 0];
front_eject_bottom_right = [front_eject_wall_x, front_eject_wall_y, 0];
front_eject_top_left = [0, front_eject_wall_y, front_eject_wall_z];
front_eject_top_right = [front_eject_wall_x, front_eject_wall_y, front_eject_wall_z];
front_eject_bottom_left_thickness = [0, front_eject_wall_y  + wall_thickness, 0];
front_eject_bottom_right_thickness = [front_eject_wall_x, front_eject_wall_y + wall_thickness, 0];
front_eject_top_left_thickness = [0, front_eject_wall_y + wall_thickness, front_eject_wall_z];
front_eject_top_right_thickness = [front_eject_wall_x, front_eject_wall_y + wall_thickness, front_eject_wall_z];
front_eject = [front_eject_bottom_left, front_eject_bottom_right, front_eject_top_left, front_eject_top_right, front_eject_bottom_left_thickness, front_eject_bottom_right_thickness, front_eject_top_left_thickness, front_eject_top_right_thickness];

//back_eject_wall
back_eject_wall_x = eject_wall_x;
back_eject_wall_y = 0;
back_eject_wall_z = eject_wall_z;
back_eject_bottom_left = [0, back_eject_wall_y, 0];
back_eject_bottom_right = [back_eject_wall_x, back_eject_wall_y, 0];
back_eject_top_left = [0, back_eject_wall_y, back_eject_wall_z];
back_eject_top_right = [back_eject_wall_x, back_eject_wall_y, back_eject_wall_z];
back_eject_bottom_left_thickness = [0, back_eject_wall_y  + wall_thickness, 0];
back_eject_bottom_right_thickness = [back_eject_wall_x, back_eject_wall_y + wall_thickness, 0];
back_eject_top_left_thickness = [0, back_eject_wall_y + wall_thickness, back_eject_wall_z];
back_eject_top_right_thickness = [back_eject_wall_x, back_eject_wall_y + wall_thickness, back_eject_wall_z];
back_eject = [back_eject_bottom_left, back_eject_bottom_right, back_eject_top_left, back_eject_top_right, back_eject_bottom_left_thickness, back_eject_bottom_right_thickness, back_eject_top_left_thickness, back_eject_top_right_thickness];

//eject_finger_assist
eject_finger_assist_radius = 11;
eject_finger_assist_length = dispenser_width + 10;
eject_finger_assist_x = -5;
eject_finger_assist_y = 145;
eject_finger_assist_z = eject_wall_z;

//left_lip_wall
left_lip_wall_lip_x = 0;
left_lip_wall_lip_y = lip_y;
left_lip_wall_lip_z = lip_z;
left_wall_lip_bottom_back = [left_lip_wall_lip_x, lip_wall_thickness, 0];
left_wall_lip_bottom_forward = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset];
left_wall_lip_top_back = [left_lip_wall_lip_x, lip_wall_thickness, lip_z_offset + left_lip_wall_lip_z];
left_wall_lip_top_forward = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset + left_lip_wall_lip_z];
left_wall_lip_bottom_back_thickness = [left_lip_wall_lip_x, lip_wall_thickness, lip_z_offset];
left_wall_lip_bottom_forward_thickness = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset];
left_wall_lip_top_back_thickness = [left_lip_wall_lip_x, lip_wall_thickness, lip_z_offset + left_lip_wall_lip_z];
left_wall_lip_top_forward_thickness = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset + left_lip_wall_lip_z];
left_lip_wall = [left_wall_lip_bottom_back, left_wall_lip_bottom_forward, left_wall_lip_top_back, left_wall_lip_top_forward, left_wall_lip_bottom_back_thickness, left_wall_lip_bottom_forward_thickness, left_wall_lip_top_back_thickness, left_wall_lip_top_forward_thickness];

//right_lip_wall
right_lip_wall_lip_x = lip_x;
right_lip_wall_lip_y = lip_y;
right_lip_wall_lip_z = lip_z;
right_wall_lip_bottom_back = [right_lip_wall_lip_x, lip_wall_thickness, lip_z_offset];
right_wall_lip_bottom_forward = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset];
right_wall_lip_top_back = [right_lip_wall_lip_x, lip_wall_thickness, lip_z_offset + right_lip_wall_lip_z];
right_wall_lip_top_forward = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset + right_lip_wall_lip_z];
right_wall_lip_bottom_back_thickness = [right_lip_wall_lip_x, lip_wall_thickness, lip_z_offset];
right_wall_lip_bottom_forward_thickness = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset];
right_wall_lip_top_back_thickness = [right_lip_wall_lip_x, lip_wall_thickness, lip_z_offset + right_lip_wall_lip_z];
right_wall_lip_top_forward_thickness = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset + right_lip_wall_lip_z];
right_lip_wall = [right_wall_lip_bottom_back, right_wall_lip_bottom_forward, right_wall_lip_top_back, right_wall_lip_top_forward, right_wall_lip_bottom_back_thickness, right_wall_lip_bottom_forward_thickness, right_wall_lip_top_back_thickness, right_wall_lip_top_forward_thickness];


//back_lip_wall
back_lip_wall_x = lip_x;
back_lip_wall_y = lip_wall_thickness;
back_lip_wall_z = lip_z + lip_z_offset;
back_wall_lip_bottom_left = [0, back_lip_wall_y, 0];
back_wall_lip_bottom_right = [back_lip_wall_x, back_lip_wall_y, 0];
back_wall_lip_top_left = [0, back_lip_wall_y, back_lip_wall_z];
back_wall_lip_top_right = [back_lip_wall_x, back_lip_wall_y, back_lip_wall_z];
back_wall_lip_bottom_left_thickness = [0, back_lip_wall_y, 0];
back_wall_lip_bottom_right_thickness = [back_lip_wall_x, back_lip_wall_y, 0];
back_wall_lip_top_left_thickness = [0, back_lip_wall_y, back_lip_wall_z];
back_wall_lip_top_right_thickness = [back_lip_wall_x, back_lip_wall_y, back_lip_wall_z];
back_lip_wall = [back_wall_lip_bottom_left, back_wall_lip_bottom_right, back_wall_lip_top_left, back_wall_lip_top_right, back_wall_lip_bottom_left_thickness, back_wall_lip_bottom_right_thickness, back_wall_lip_top_left_thickness, back_wall_lip_top_right_thickness];

//Ejection and offload ramp
union(){
    //Eject ramp
    hull(){
        for(point = eject_ramp){
            translate(point){
                cylinder(1);
            }
        }
    }

    //Eject flat
    hull(){
        for(point = eject_flat){
            translate(point){
                cylinder(1);
            }
        }
    }
    difference(){
        union(){
            //Left eject
            hull(){
                for(point = left_eject){
                    translate(point){
                        cylinder(1);
                    }
                }
            }

            //Right eject
            hull(){
                for(point = right_eject){
                    translate(point){
                        cylinder(1);
                    }
                }
            }
        }
        translate([eject_finger_assist_x, eject_finger_assist_y, eject_finger_assist_z]){
            rotate([0, 90, 0]){
                cylinder(eject_finger_assist_length, eject_finger_assist_radius, eject_finger_assist_radius);
            }
        }
    }

    //Front eject
    hull(){
        for(point = front_eject){
            translate(point){
                cylinder(1);
            }
        }
    }
}

//Lip
hull(){
    for(point = left_lip_wall){
        translate(point){
            cylinder(1);
        }
    }
}
hull(){
    for(point = right_lip_wall){
        translate(point){
            cylinder(1);
        }
    }
}
hull(){
    for(point = back_lip_wall){
        translate(point){
            cylinder(1);
        }
    }
}
hull(){
    for(point = back_eject){
        translate(point){
            cylinder(1);
        }
    }
}
