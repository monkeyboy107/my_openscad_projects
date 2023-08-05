//Changeable values
width = 126.16;
length = 80;
wall_height = 22;
z_offset = 8.86;
wall_thickness = 1;
//z_offset = 0; /* This is a temp */

//Non-changeable values
height = z_offset + wall_height;


//Negative space
top_right_point = [width, length, z_offset];
top_left_point = [width, 0, z_offset];
bottom_right_point = [0, length, z_offset];
bottom_left_point = [0, 0, z_offset];

//Base space
top_right_point_base = [width + wall_thickness, length + wall_thickness, 0];
top_left_point_base = [width + wall_thickness, -wall_thickness, 0];
bottom_right_point_base = [-wall_thickness, length + wall_thickness, 0];
bottom_left_point_base = [-wall_thickness, -wall_thickness, 0];

difference(){
    hull(){
        translate(top_right_point_base){
            cylinder(height);
        }

        translate(top_left_point_base){
            cylinder(height);
        }

        translate(bottom_right_point_base){
            cylinder(height);
        }

        translate(bottom_left_point_base){
            cylinder(height);
        }
    }

    hull(){
        translate(top_right_point){
            cylinder(height);
        }

        translate(top_left_point){
            cylinder(height);
        }

        translate(bottom_right_point){
            cylinder(height);
        }

        translate(bottom_left_point){
            cylinder(height);
        }
    }
}
