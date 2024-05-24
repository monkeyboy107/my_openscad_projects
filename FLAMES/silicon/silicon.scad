$fn=255;
//Wafer cylinder
height = 21;
top_radius = 6;
bottom_radius = 6;

//Wafer Stalagmite
stalagmite_height = 3;
stalagmite_top_radius = .5;
stalagmite_bottom_radius = 1;
stalagmite_translate = [0, 0, height];

//Text
text = "Si";
text_size = 3;
text_depth = .3;

difference(){
	union(){
		cylinder(height, bottom_radius, top_radius);
		translate(stalagmite_translate){
			cylinder(stalagmite_height, stalagmite_bottom_radius, stalagmite_top_radius);
		}
	}
	
	for(text_height=[0:text_size:height]){
		translate([0, 0, text_height]){
			for(rotation=[
			[[90, 0, 90], [top_radius -text_depth, 0, text_size/2]],
			[[90, 0, 180], [0, top_radius -text_depth, text_size/2]],
			[[-90, 180, 90], [-top_radius + text_depth, 0, text_size/2]],
			[[-90, 180, 180], [0, -top_radius + text_depth, text_size/2]],
			[[90, 0, 135], [top_radius/1.5 -text_depth/1.5, top_radius/1.5 + text_depth, text_size/2]],
			[[90, 0, 45], [top_radius/1.47 -text_depth, -top_radius/1.5 -text_depth, text_size/2]],
			[[90, 0, 325], [-top_radius/1.6 + text_depth/2, -top_radius/1.3 + text_depth/2, text_size/2]],
			[[90, 0, 225], [-top_radius/1.4 + text_depth/1.7, top_radius/1.5 + text_depth/1.5, text_size/2]]]){
				translate(rotation[1]){
					rotate(rotation[0]){
						linear_extrude(text_depth){
							text(text, size=text_size, valign="center",halign="center");
						}
					}
				}
			}
		}
	}
}
