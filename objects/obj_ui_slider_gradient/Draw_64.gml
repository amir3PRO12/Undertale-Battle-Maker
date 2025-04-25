// bounding box
//draw_rectangle(x-1,y-1,x+width+1,y+height+1, false)

// vertex gradient drawing takes MINIMUM 2 color points
draw_primitive_begin(pr_trianglestrip)
for (var _c = 0; _c < array_length(color_points); _c++) {
	var offset = _c * width / (array_length(color_points)-1)
	draw_vertex_color(x + offset,y,color_points[_c],1)	
	draw_vertex_color(x + offset,y+height,color_points[_c],1)	
	
}
draw_primitive_end()

draw_rectangle(x+width*slider_pos -1,y-1, 
			x+width*slider_pos + 1, y+height+1, true)