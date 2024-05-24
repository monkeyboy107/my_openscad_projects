//Dimentions
top_radius = 7;
bottom_radius = 7;
height = 4;
smooth_radius = 5.25;
smooth_height = 3;

//Text
top_text = "mg";
bottom_text = "mg";
text_size = top_radius * .6;
text_height = 1;
top_text_translate = [0, 0, smooth_height + 1];
bottom_text_translate = [0, 0, -smooth_height + 3];
bottom_text_rotate = [0, 180, 0];


difference(){
	union(){
		cylinder(height, top_radius, bottom_radius);
		translate([0, 0, height]){
			cylinder(1, top_radius, smooth_radius);
		}
		translate([0, 0, -1]){
			cylinder(1, smooth_radius, bottom_radius);
		}
	}

	translate(top_text_translate){
		linear_extrude(height=text_height){
			text(top_text, size=text_size, halign="center", valign="center");
		}
	}

	translate(bottom_text_translate){
		rotate(bottom_text_rotate){
			linear_extrude(height=text_height){
				text(top_text, size=text_size, halign="center", valign="center");
			}
		}
	}
}
