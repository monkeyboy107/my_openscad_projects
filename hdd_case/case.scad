module case (width, length, wall_height, wall_thickness, x_offset, y_offset, z_offset){
    //Negative space
    top_right_point = [width + x_offset, length + y_offset, z_offset];
    top_left_point = [width + x_offset, y_offset, z_offset];
    bottom_right_point = [x_offset, length + y_offset, z_offset];
    bottom_left_point = [x_offset, y_offset, z_offset];

    //Base space
    top_right_point_base = [width + wall_thickness, length + wall_thickness, 0];
    top_left_point_base = [width + wall_thickness, -wall_thickness, 0];
    bottom_right_point_base = [-wall_thickness, length + wall_thickness, 0];
    bottom_left_point_base = [-wall_thickness, -wall_thickness, 0];
    
    //Lists for the for loops
    base_points = [top_right_point_base, top_left_point_base, bottom_right_point_base, bottom_left_point_base];
    points = [top_right_point, top_left_point, bottom_right_point, bottom_left_point];

    difference(){
        hull(){
            for (point = base_points){
                translate(point){
                    cylinder(height);
                }
            }
        }
        hull(){
            for (point = points){
                translate(point){
                    cylinder(height);
                }
            }
        }
    }
}

module roofed_case(width, length, wall_height, wall_thickness, x_offset, y_offset, z_offset, roof_thickness){
    case(width, length, wall_height, wall_thickness, x_offset, y_offset, z_offset);
    top_right_point_base = [width + wall_thickness, length + wall_thickness, wall_height];
    top_left_point_base = [width + wall_thickness, -wall_thickness, wall_height ];
    bottom_right_point_base = [-wall_thickness, length + wall_thickness, wall_height];
    bottom_left_point_base = [-wall_thickness, -wall_thickness, wall_height];
    points = [top_right_point_base, top_left_point_base, bottom_right_point_base, bottom_left_point_base];
    hull(){
           for(point = points){
               translate(point) cylinder(roof_thickness);
           }
    }
    
}

//Changeable values
width = 100;
length = 100;
wall_height = 10;
x_offset = 0;
y_offset = 0;
z_offset = 1;
wall_thickness = 3;
roof_thickness = 3;

//Non-changeable values
height = z_offset + wall_height;

//This is for making sure it renders correctly
/*
translate([0, 0, wall_height + 10]){
    case(width,
        length,
        wall_height,
        wall_thickness,
        x_offset,
        y_offset,
        z_offset);
}

roofed_case(width,
     length,
     wall_height,
     wall_thickness,
     x_offset,
     y_offset,
     z_offset);
*/
