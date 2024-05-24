$fn=255;
//Box dimentions
input_length = 15;
input_height = 15;
input_depth = 10;

box_size = 3;
length = input_length;
height = input_height - box_size;
depth = input_depth;

//Box dimentions
bottom_back_left =   [0,      0,     0];
top_back_left =      [0,      0,     height];
bottom_front_left =  [0,      depth, 0];
top_front_left =     [0,      depth, height];
bottom_back_right =  [length, 0,     0];
top_back_right =     [length, 0,     height];
bottom_front_right = [length, depth, 0];
top_front_right =    [length, depth, height];

//Translation of cutaway
cutaway_rotation = [0, 45, 0];
cutaway_translate = [13, 0, 15];
//4.62962962963

//Funnel
funnel_translate = [15, 6, 12];
funnel_rotate = [0, 45, 0];
funnel_top_radius = input_depth * .3;
funnel_bottom_radius = input_depth * .3;
funnel_height = 3;

//Xs on sides
x_rotate = [90, 0, 0];
back_x_translate = [3, .9, 2];
front_x_translate = [3, 15, 2];
x_font = 12;
x_depth = 4;

box = [bottom_back_left, top_back_left, bottom_front_left, top_front_left, bottom_back_right, top_back_right, bottom_front_right, top_front_right];

//Main box
difference(){
	hull(){
		for(position = box){
			translate(position){
				cube(box_size);
			}
		}
	}
	translate(cutaway_translate){
		rotate(cutaway_rotation){
			cube(100, 100);
		}
	}
	translate(front_x_translate){
			rotate(x_rotate){
				linear_extrude(height=x_depth){
					text("X", size=x_font);
				}
			}
	}

	translate(back_x_translate){
		rotate(x_rotate){
			linear_extrude(height=x_depth){
				text("X", size=x_font);
			}
		}
	}
}
/*
translate(front_x_translate){
		rotate(x_rotate){
			linear_extrude(height=x_depth){
				text("X", size=x_font);
			}
		}
}
*/
//Funnel
translate(funnel_translate){
	rotate(funnel_rotate){
		cylinder(funnel_height, funnel_top_radius, funnel_bottom_radius);
	}
}
