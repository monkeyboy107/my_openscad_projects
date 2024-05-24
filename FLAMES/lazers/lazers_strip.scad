$fn=250;
input_length = 20;
input_height = 5;
input_depth = 2;

box_size = 1;
length = input_length;
height = input_height - box_size;
depth = input_depth;

//lazer settings
number_of_lazers = 3;
lazer_top_radius = 1;
lazer_bottom_radius = 1;
lazer_height = 10;
lazer_spacing = input_length/number_of_lazers;

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

translate([1, input_depth/1.25, input_height]){
	cylinder(lazer_height, lazer_top_radius, lazer_bottom_radius);
}

for(i = [1:number_of_lazers]){
	translate([i * lazer_spacing, input_depth/1.25, input_height]){
		cylinder(lazer_height, lazer_top_radius, lazer_bottom_radius);
	}
}
