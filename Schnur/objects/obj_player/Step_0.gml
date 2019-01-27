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

image_angle = point_direction(x,y,mouse_x, mouse_y);

//shooting
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Layer_Bullets",obj_bullet)
	cooldown = 10;
}

//every frame cooldown counts down to 0
cooldown = cooldown - 1;

//avoid bug when cursor hovers over object


	/*var distanceToObstacle = distance_to_object(obstacle)

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
		
	} else {
		if (instance_exists(obj_player)) move_towards_point(mouse_x, mouse_y, playerSpeed);	
		image_angle = point_direction(x,y,mouse_x, mouse_y);
	}*/
	
if (distance_to_point(mouse_x, mouse_y) > 100)
{
	move_towards_point(mouse_x, mouse_y, playerSpeed)
}
	