if(parent != -1){
//	draw_line(parent.x, parent.y, x, y)
	draw_line_width(x,y, parent.x,parent.y, 3);
}

physics_draw_debug();