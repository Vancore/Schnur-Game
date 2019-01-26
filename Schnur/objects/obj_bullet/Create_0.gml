//create event is only called when object is created
//set up motion

direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-4,4); 
//bullets won't shoot in a straight, stale line
speed = 16; //movement is 16 pixels per frame 
image_angle = direction;
