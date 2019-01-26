if (parent != -1){
// if the parent is set to anything, we want to draw a line from its current position to its parents position
draw_line_width(x,y,parent.x, parent.y,3)
//x,y is current position 
//parent.x, parent.y is parents position
//last value is width (now 3 pixels)

}

physics_draw_debug();
//to see what is inside of game makers physics engine
