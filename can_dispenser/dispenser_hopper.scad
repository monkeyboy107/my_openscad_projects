use <can.scad>
//General settings
can_height = 123.53;
dispenser_width = can_height + 2;
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
opening_z = 30;

//Can settings
can_radius = 66.2/2;
can_top_radius = 53.67/2;
can_top_rise = 14.57;
can_bottom_radius = 50/2;
can_bottom_rise = 7.4;

module hopper(can_height, dispenser_width, dispenser_length, wall_thickness, lip_wall_thickness, tall_wall_x, tall_wall_y, tall_wall_z, lip_x, lip_y, lip_z){
    //left_tall_wall
    left_tall_wall_x = 0;
    left_tall_wall_y = tall_wall_y;
    left_tall_wall_z = tall_wall_z;
    left_wall_bottom_back = [left_tall_wall_x, 0, 0];
    left_wall_bottom_forward = [left_tall_wall_x, left_tall_wall_y, 0];
    left_wall_top_back = [left_tall_wall_x, 0, left_tall_wall_z];
    left_wall_top_forward = [left_tall_wall_x, left_tall_wall_y, left_tall_wall_z];
    left_wall_bottom_back_thickness = [left_tall_wall_x - wall_thickness, 0, 0];
    left_wall_bottom_forward_thickness = [left_tall_wall_x - wall_thickness, left_tall_wall_y, 0];
    left_wall_top_back_thickness = [left_tall_wall_x - wall_thickness, 0, left_tall_wall_z];
    left_wall_top_forward_thickness = [left_tall_wall_x - wall_thickness, left_tall_wall_y, left_tall_wall_z];
    left_tall_wall = [left_wall_bottom_back, left_wall_bottom_forward, left_wall_top_back, left_wall_top_forward, left_wall_bottom_back_thickness, left_wall_bottom_forward_thickness, left_wall_top_back_thickness, left_wall_top_forward_thickness];

    //right_tall_wall
    right_tall_wall_x = tall_wall_x;
    right_tall_wall_y = tall_wall_y;
    right_tall_wall_z = tall_wall_z;
    right_wall_bottom_back = [right_tall_wall_x, 0, 0];
    right_wall_bottom_forward = [right_tall_wall_x, right_tall_wall_y, 0];
    right_wall_top_back = [right_tall_wall_x, 0, right_tall_wall_z];
    right_wall_top_forward = [right_tall_wall_x, right_tall_wall_y, right_tall_wall_z];
    right_wall_bottom_back_thickness = [right_tall_wall_x + wall_thickness, 0, 0];
    right_wall_bottom_forward_thickness = [right_tall_wall_x + wall_thickness, right_tall_wall_y, 0];
    right_wall_top_back_thickness = [right_tall_wall_x + wall_thickness, 0, right_tall_wall_z];
    right_wall_top_forward_thickness = [right_tall_wall_x + wall_thickness, right_tall_wall_y, right_tall_wall_z];
    right_tall_wall = [right_wall_bottom_back, right_wall_bottom_forward, right_wall_top_back, right_wall_top_forward, right_wall_bottom_back_thickness, right_wall_bottom_forward_thickness, right_wall_top_back_thickness, right_wall_top_forward_thickness];

    //back_tall_wall
    back_tall_wall_x = tall_wall_x;
    back_tall_wall_y = 0;
    back_tall_wall_z = tall_wall_z;
    back_wall_bottom_left = [0, 0, 0];
    back_wall_bottom_right = [back_tall_wall_x, 0, 0];
    back_wall_top_left = [0, 0, back_tall_wall_z];
    back_wall_top_right = [back_tall_wall_x, 0, back_tall_wall_z];
    back_wall_bottom_left_thickness = [0, -wall_thickness, 0];
    back_wall_bottom_right_thickness = [back_tall_wall_x, -wall_thickness, 0];
    back_wall_top_left_thickness = [0, -wall_thickness, back_tall_wall_z];
    back_wall_top_right_thickness = [back_tall_wall_x, -wall_thickness, back_tall_wall_z];
    back_tall_wall = [back_wall_bottom_left, back_wall_bottom_right, back_wall_top_left, back_wall_top_right, back_wall_bottom_left_thickness, back_wall_bottom_right_thickness, back_wall_top_left_thickness, back_wall_top_right_thickness];

    //front_tall_wall
    front_tall_wall_x = tall_wall_x;
    front_tall_wall_y = tall_wall_y;
    front_tall_wall_z = tall_wall_z;
    front_tall_wall_opening = 0;
    front_wall_bottom_left = [0, front_tall_wall_y, front_tall_wall_opening];
    front_wall_bottom_right = [front_tall_wall_x, front_tall_wall_y, front_tall_wall_opening];
    front_wall_top_left = [0, front_tall_wall_y, front_tall_wall_z];
    front_wall_top_right = [front_tall_wall_x, front_tall_wall_y, front_tall_wall_z];
    front_wall_bottom_left_thickness = [0, front_tall_wall_y + wall_thickness, front_tall_wall_opening];
    front_wall_bottom_right_thickness = [front_tall_wall_x, front_tall_wall_y + wall_thickness, front_tall_wall_opening];
    front_wall_top_left_thickness = [0, front_tall_wall_y + wall_thickness, front_tall_wall_z];
    front_wall_top_right_thickness = [front_tall_wall_x, front_tall_wall_y + wall_thickness, front_tall_wall_z];
    front_tall_wall = [front_wall_bottom_left, front_wall_bottom_right, front_wall_top_left, front_wall_top_right, front_wall_bottom_left_thickness, front_wall_bottom_right_thickness, front_wall_top_left_thickness, front_wall_top_right_thickness];

    //left_lip_wall
    left_lip_wall_lip_x = 0;
    left_lip_wall_lip_y = lip_y;
    left_lip_wall_lip_z = lip_z;
    left_wall_lip_bottom_back = [left_lip_wall_lip_x, 0, lip_z_offset];
    left_wall_lip_bottom_forward = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset];
    left_wall_lip_top_back = [left_lip_wall_lip_x, 0, lip_z_offset + left_lip_wall_lip_z];
    left_wall_lip_top_forward = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset + left_lip_wall_lip_z];
    left_wall_lip_bottom_back_thickness = [left_lip_wall_lip_x, 0, lip_z_offset];
    left_wall_lip_bottom_forward_thickness = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset];
    left_wall_lip_top_back_thickness = [left_lip_wall_lip_x, 0, lip_z_offset + left_lip_wall_lip_z];
    left_wall_lip_top_forward_thickness = [left_lip_wall_lip_x, left_lip_wall_lip_y, lip_z_offset + left_lip_wall_lip_z];
    negative_left_wall_lip_bottom_back = [left_lip_wall_lip_x, 0, 0];
    negative_left_wall_lip_bottom_forward = [left_lip_wall_lip_x, left_lip_wall_lip_y, 0];
    negative_left_wall_lip_top_back = [left_lip_wall_lip_x, 0, 0];
    negative_left_wall_lip_top_forward = [left_lip_wall_lip_x, left_lip_wall_lip_y, left_lip_wall_lip_z];
    negative_left_wall_lip_bottom_back_thickness = [left_lip_wall_lip_x, 0, 0];
    negative_left_wall_lip_bottom_forward_thickness = [left_lip_wall_lip_x, left_lip_wall_lip_y, 0];
    negative_left_wall_lip_top_back_thickness = [left_lip_wall_lip_x, 0, left_lip_wall_lip_z];
    negative_left_wall_lip_top_forward_thickness = [left_lip_wall_lip_x, left_lip_wall_lip_y, left_lip_wall_lip_z];
    left_lip_wall = [left_wall_lip_bottom_back, left_wall_lip_bottom_forward, left_wall_lip_top_back, left_wall_lip_top_forward, left_wall_lip_bottom_back_thickness, left_wall_lip_bottom_forward_thickness, left_wall_lip_top_back_thickness, left_wall_lip_top_forward_thickness];
    negative_left_lip_wall = [negative_left_wall_lip_bottom_back, negative_left_wall_lip_bottom_forward, negative_left_wall_lip_top_back, negative_left_wall_lip_top_forward, negative_left_wall_lip_bottom_back_thickness, negative_left_wall_lip_bottom_forward_thickness, negative_left_wall_lip_top_back_thickness, negative_left_wall_lip_top_forward_thickness];

    //right_lip_wall
    right_lip_wall_lip_x = lip_x;
    right_lip_wall_lip_y = lip_y;
    right_lip_wall_lip_z = lip_z;
    right_wall_lip_bottom_back = [right_lip_wall_lip_x, 0, lip_z_offset];
    right_wall_lip_bottom_forward = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset];
    right_wall_lip_top_back = [right_lip_wall_lip_x, 0, lip_z_offset + right_lip_wall_lip_z];
    right_wall_lip_top_forward = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset + right_lip_wall_lip_z];
    right_wall_lip_bottom_back_thickness = [right_lip_wall_lip_x, 0, lip_z_offset];
    right_wall_lip_bottom_forward_thickness = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset];
    right_wall_lip_top_back_thickness = [right_lip_wall_lip_x, 0, lip_z_offset + right_lip_wall_lip_z];
    right_wall_lip_top_forward_thickness = [right_lip_wall_lip_x, right_lip_wall_lip_y, lip_z_offset + right_lip_wall_lip_z];
    negative_right_wall_lip_bottom_back = [right_lip_wall_lip_x, 0, 0];
    negative_right_wall_lip_bottom_forward = [right_lip_wall_lip_x, right_lip_wall_lip_y, 0];
    negative_right_wall_lip_top_back = [right_lip_wall_lip_x, 0, 0];
    negative_right_wall_lip_top_forward = [right_lip_wall_lip_x, right_lip_wall_lip_y, right_lip_wall_lip_z];
    negative_right_wall_lip_bottom_back_thickness = [right_lip_wall_lip_x, 0, 0];
    negative_right_wall_lip_bottom_forward_thickness = [right_lip_wall_lip_x, right_lip_wall_lip_y, 0];
    negative_right_wall_lip_top_back_thickness = [right_lip_wall_lip_x, 0, right_lip_wall_lip_z];
    negative_right_wall_lip_top_forward_thickness = [right_lip_wall_lip_x, right_lip_wall_lip_y, right_lip_wall_lip_z];
    right_lip_wall = [right_wall_lip_bottom_back, right_wall_lip_bottom_forward, right_wall_lip_top_back, right_wall_lip_top_forward, right_wall_lip_bottom_back_thickness, right_wall_lip_bottom_forward_thickness, right_wall_lip_top_back_thickness, right_wall_lip_top_forward_thickness];
    negative_right_lip_wall = [negative_right_wall_lip_bottom_back, negative_right_wall_lip_bottom_forward, negative_right_wall_lip_top_back, negative_right_wall_lip_top_forward, negative_right_wall_lip_bottom_back_thickness, negative_right_wall_lip_bottom_forward_thickness, negative_right_wall_lip_top_back_thickness, negative_right_wall_lip_top_forward_thickness];

    //back_lip_wall
    back_lip_wall_x = lip_x;
    back_lip_wall_y = 0;
    back_lip_wall_z = lip_z;
    back_wall_lip_bottom_left = [0, back_lip_wall_y, lip_z_offset];
    back_wall_lip_bottom_right = [back_lip_wall_x, back_lip_wall_y, lip_z_offset];
    back_wall_lip_top_left = [0, back_lip_wall_y, lip_z_offset + back_lip_wall_z];
    back_wall_lip_top_right = [back_lip_wall_x, back_lip_wall_y, lip_z_offset + back_lip_wall_z];
    back_wall_lip_bottom_left_thickness = [0, back_lip_wall_y, lip_z_offset];
    back_wall_lip_bottom_right_thickness = [back_lip_wall_x, back_lip_wall_y, lip_z_offset];
    back_wall_lip_top_left_thickness = [0, back_lip_wall_y, lip_z_offset + back_lip_wall_z];
    back_wall_lip_top_right_thickness = [back_lip_wall_x, back_lip_wall_y, lip_z_offset + back_lip_wall_z];
    negative_back_wall_lip_bottom_left = [0, back_lip_wall_y, 0];
    negative_back_wall_lip_bottom_right = [back_lip_wall_x, back_lip_wall_y, 0];
    negative_back_wall_lip_top_left = [0, back_lip_wall_y, back_lip_wall_z];
    negative_back_wall_lip_top_right = [back_lip_wall_x, back_lip_wall_y, back_lip_wall_z];
    negative_back_wall_lip_bottom_left_thickness = [0, back_lip_wall_y, 0];
    negative_back_wall_lip_bottom_right_thickness = [back_lip_wall_x, back_lip_wall_y, 0];
    negative_back_wall_lip_top_left_thickness = [0, back_lip_wall_y, back_lip_wall_z];
    negative_back_wall_lip_top_right_thickness = [back_lip_wall_x, back_lip_wall_y, back_lip_wall_z];
    back_lip_wall = [back_wall_lip_bottom_left, back_wall_lip_bottom_right, back_wall_lip_top_left, back_wall_lip_top_right, back_wall_lip_bottom_left_thickness, back_wall_lip_bottom_right_thickness, back_wall_lip_top_left_thickness, back_wall_lip_top_right_thickness];
    negative_back_lip_wall = [negative_back_wall_lip_bottom_left, negative_back_wall_lip_bottom_right, negative_back_wall_lip_top_left, negative_back_wall_lip_top_right, negative_back_wall_lip_bottom_left_thickness, negative_back_wall_lip_bottom_right_thickness, negative_back_wall_lip_top_left_thickness, negative_back_wall_lip_top_right_thickness];

    //front_lip_wall
    front_lip_wall_x = lip_x;
    front_lip_wall_y = lip_y;
    front_lip_wall_z = lip_z;
    front_wall_lip_bottom_left = [0, front_lip_wall_y, lip_z_offset];
    front_wall_lip_bottom_right = [front_lip_wall_x, front_lip_wall_y, lip_z_offset];
    front_wall_lip_top_left = [0, front_lip_wall_y, lip_z_offset + front_lip_wall_z];
    front_wall_lip_top_right = [front_lip_wall_x, front_lip_wall_y, lip_z_offset + front_lip_wall_z];
    front_wall_lip_bottom_left_thickness = [0, front_lip_wall_y, lip_z_offset];
    front_wall_lip_bottom_right_thickness = [front_lip_wall_x, front_lip_wall_y, lip_z_offset];
    front_wall_lip_top_left_thickness = [0, front_lip_wall_y, lip_z_offset + front_lip_wall_z];
    front_wall_lip_top_right_thickness = [front_lip_wall_x, front_lip_wall_y, lip_z_offset + front_lip_wall_z];
    negative_front_wall_lip_bottom_left = [0, front_lip_wall_y, 0];
    negative_front_wall_lip_bottom_right = [front_lip_wall_x, front_lip_wall_y, 0];
    negative_front_wall_lip_top_left = [0, front_lip_wall_y, front_lip_wall_z];
    negative_front_wall_lip_top_right = [front_lip_wall_x, front_lip_wall_y, front_lip_wall_z];
    negative_front_wall_lip_bottom_left_thickness = [0, front_lip_wall_y, 0];
    negative_front_wall_lip_bottom_right_thickness = [front_lip_wall_x, front_lip_wall_y, 0];
    negative_front_wall_lip_top_left_thickness = [0, front_lip_wall_y, front_lip_wall_z];
    negative_front_wall_lip_top_right_thickness = [front_lip_wall_x, front_lip_wall_y, front_lip_wall_z];
    front_lip_wall = [front_wall_lip_bottom_left, front_wall_lip_bottom_right, front_wall_lip_top_left, front_wall_lip_top_right, front_wall_lip_bottom_left_thickness, front_wall_lip_bottom_right_thickness, front_wall_lip_top_left_thickness, front_wall_lip_top_right_thickness];
    negative_front_lip_wall = [negative_front_wall_lip_bottom_left, negative_front_wall_lip_bottom_right, negative_front_wall_lip_top_left, negative_front_wall_lip_top_right, negative_front_wall_lip_bottom_left_thickness, negative_front_wall_lip_bottom_right_thickness, negative_front_wall_lip_top_left_thickness, negative_front_wall_lip_top_right_thickness];

    //Tall corners
    for(x = [-wall_thickness, tall_wall_x], y = [-wall_thickness, tall_wall_y]){
        translate([x, y, 0]) {
        cube([wall_thickness, wall_thickness, tall_wall_z]);
        }
    }

    //Magazine
    difference(){
        union(){
            //Left wall
            hull(){
                for(point = left_tall_wall){
                    translate(point){
                        cylinder(1);
                    }
                }
            }

            //Right wall
            hull(){
                    for(point = right_tall_wall){
                        translate(point){
                                cylinder(1);
                        }
                }
            }

            //Back wall
            hull(){
                for(point = back_tall_wall){
                    translate(point){
                            cylinder(1);
                    }
                }
            }

            //Front wall
            hull(){
                for(point = front_tall_wall){
                    translate(point){
                            cylinder(1);
                    }
                }
            }
        }
            //Negative lip
            //Left lip
            hull(){
                for(point = negative_left_lip_wall){
                    translate(point){
                        cylinder(1);
                    }
                }
            }
            //Right lip
            hull(){
                for(point = negative_right_lip_wall){
                    translate(point){
                            cylinder(1);
                    }
                }
            }
            //Back lip
            hull(){
            for(point = negative_back_lip_wall){
                    translate(point){
                        cylinder(1);
                    }
                }
            }
            //Front lip
            hull(){
                for(point = negative_front_lip_wall){
                    translate(point){
                        cylinder(1);
                    }
                }
            }
    }
    //Lip
    union(){
        //Left lip
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
            for(point = front_lip_wall){
                translate(point){
                cylinder(1);
                }
            }
        }
    }
}

module hopper_with_opening(can_height, dispenser_width, dispenser_length, wall_thickness, lip_wall_thickness, tall_wall_x, tall_wall_y, tall_wall_z, lip_x, lip_y, lip_z, opening_z){
    difference(){
        hopper(can_height, dispenser_width, dispenser_length, wall_thickness, lip_wall_thickness, tall_wall_x, tall_wall_y, tall_wall_z, lip_x, lip_y, lip_z);
        hull(){
            for (x = [wall_thickness -lip_wall_thickness, can_height -1], y = [wall_thickness, 1000], z = [0, opening_z]){
                translate([x, y, z]){
                    cylinder(1);
                }
            }
        }
    }
}

hopper(can_height, dispenser_width, dispenser_length, wall_thickness, lip_wall_thickness, tall_wall_x, tall_wall_y, tall_wall_z, lip_x, lip_y, lip_z);
/*translate([dispenser_width + 30, 0, 0]){
    hopper_with_opening(can_height, dispenser_width, dispenser_length, wall_thickness, lip_wall_thickness, tall_wall_x, tall_wall_y, tall_wall_z, lip_x, lip_y, lip_z, opening_z);
}

translate([160, 30, 30]){
    rotate([0, 90, 0]){
        can(can_height, can_radius, can_top_rise, can_top_radius, can_bottom_rise, can_bottom_radius);
    }
}*/
