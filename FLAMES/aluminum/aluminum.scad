//Box
box_height = 4;
//Top box
top_box_origin_length = 3;
top_box_length = 30;
top_box_origin_width = 10;
top_box_width = 3;
top_box_height = box_height/3;
top_box_bottom_left =  [top_box_origin_width, top_box_origin_length, top_box_height + top_box_height];
top_box_bottom_right = [top_box_width, top_box_origin_length, top_box_height + top_box_height];
top_box_top_left =     [top_box_origin_width, top_box_length, top_box_height + top_box_height];
top_box_top_right =    [top_box_width, top_box_length, top_box_height + top_box_height];

top_box = [
top_box_bottom_left,
top_box_bottom_right,
top_box_top_left,
top_box_top_right
];

//Bottom box
bottom_box_length = 33;
bottom_box_width = 13;
bottom_box_bottom_left =  [0,                0, 0];
bottom_box_bottom_right = [bottom_box_width, 0, 0];
bottom_box_top_left =     [0,                bottom_box_length, 0];
bottom_box_top_right =    [bottom_box_width, bottom_box_length, 0];

bottom_box = [
bottom_box_bottom_left,
bottom_box_bottom_right,
bottom_box_top_left,
bottom_box_top_right
];

boxes = [bottom_box, top_box];

//Text
text = "Aluminum 1KG";
text_depth = 1;
text_size = 3.1;
text_translate = [8, 3, box_height-text_depth];
text_rotate = [0, 0, 90];

difference(){
	hull(){
		for(box=boxes){
			for(point=box){
				translate(point){
					cube(top_box_height);
				}
			}
		}
	}
	translate(text_translate){
		rotate(text_rotate){
			linear_extrude(text_depth){
				#text(text, size=text_size);
			}
		}
	}
}
