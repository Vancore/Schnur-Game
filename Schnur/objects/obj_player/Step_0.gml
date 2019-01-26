//step event is called every frame
//basic controls
/*if (keyboard_check(ord("D"))) x += 4;
if (keyboard_check(ord("A"))) x -= 4;
if (keyboard_check(ord("W"))) y -= 4;
if (keyboard_check(ord("S"))) y += 4;
if (keyboard_check(vk_right)) x += 4;
if (keyboard_check(vk_left)) x -= 4;
if (keyboard_check(vk_up)) y -= 4;
if (keyboard_check(vk_down)) y += 4;*/


//shooting
/*if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Layer_Bullets",obj_bullet)
	cooldown = 5;
}

//every frame cooldown counts down to 0
cooldown = cooldown - 1;*/
/*
if(bounceRange > 0) {
	
}


//Horizontal bounce
if(place_meeting(x + hspeed, y, obj_obstacle1) && bounceRange != 0) {
	playerSpeed = 0
    //direction = -direction + 180;
	if(direction >= 0 && direction < 90) {
		move_towards_point(x+50, y-50, 20)
	} else if (direction >= 90 && direction < 180){
		move_towards_point(x-50, y-50, 20)	
	} else if (direction >= 180 && direction < 270){
		move_towards_point(x-50, y+50, 20)	
	} else {
		move_towards_point(x+50, y+50, 20)
	}
	bounceRange -= 1
} else {
	playerSpeed = 5
	bounceRange = 120
	if (instance_exists(obj_player)) move_towards_point(mouse_x, mouse_y, playerSpeed);
	//player object rotates towards mouse coordinates
	image_angle = point_direction(x,y,mouse_x, mouse_y);
}

//Vertical bounce
if(place_meeting(x, y + vspeed, obj_obstacle1) && bounceRange != 0) {
    playerSpeed = 0
	//direction = -direction;
	if(direction >= 0 && direction < 90) {
		move_towards_point(x+50, y-50, 20)
	} else if (direction >= 90 && direction < 180){
		move_towards_point(x-50, y-50, 20)	
	} else if (direction >= 180 && direction < 270){
		move_towards_point(x-50, y+50, 20)	
	} else {
		move_towards_point(x+50, y+50, 20)
	}
	bounceRange -= 1
} else {
	playerSpeed = 5	
	bounceTime = 120
	
	if (instance_exists(obj_player)) move_towards_point(mouse_x, mouse_y, playerSpeed);
	//player object rotates towards mouse coordinates
	image_angle = point_direction(x,y,mouse_x, mouse_y);
}

/*
if point_distance(x, y, obj_obstacle1.x, obj_obstacle1.y) < 5{
    playerSpeed = 0
	direction = -direction;
	move_towards_point(x+50, y-50, 40)
	bounceTime -= 1
} else {
	playerSpeed = 5	
	bounceTime = 120
}*/

//var distanceToObstacle = point_distance(x, y, obj_obstacle1.x, obj_obstacle1.y)

var distanceToObstacle = distance_to_object(obstacle)

if (distanceToObstacle < bounceRange && movementState == 1){
    playerSpeed = 0;
	speed = 0
	var mouseDirection = point_direction(mouse_x, mouse_y, x, y)
	
	motion_set(mouseDirection, 10)
	
	
} else if (distanceToObstacle >= bounceRange && movementState == 1) {
	playerSpeed = 5;
	speed = 5
	movementState = 2;
	if (instance_exists(obj_player)) move_towards_point(mouse_x, mouse_y, playerSpeed);	
	image_angle = point_direction(x,y,mouse_x, mouse_y);
} else {
	if (instance_exists(obj_player)) move_towards_point(mouse_x, mouse_y, playerSpeed);	
	image_angle = point_direction(x,y,mouse_x, mouse_y);
}