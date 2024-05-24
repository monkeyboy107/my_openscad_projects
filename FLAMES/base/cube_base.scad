input_length = 10;
input_height = 10;
input_depth = 10;
box_size = 1;

module box(input_length, input_depth, input_height, box_size){
	length = input_length;
	height = input_height - box_size;
	depth = input_depth;

	bottom_back_left =   [0,      0,     0];
	top_back_left =      [0,      0,     height];
	bottom_front_left =  [0,      depth, 0];
	top_front_left =     [0,      depth, height];
	bottom_back_right =  [length, 0,     0];
	top_back_right =     [length, 0,     height];
	bottom_front_right = [length, depth, 0];
	top_front_right =    [length, depth, height];

	box = [bottom_back_left, top_back_left, bottom_front_left, top_front_left, bottom_back_right, top_back_right, bottom_front_right, top_front_right];

	hull(){
		for(position = box){
			translate(position){
				cube(box_size);
			}
		}
	}
}

box(input_length, input_depth, input_height, box_size);
