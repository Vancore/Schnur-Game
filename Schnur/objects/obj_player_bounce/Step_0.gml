

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
		if (instance_exists(obj_player_bounce)) move_towards_point(mouse_x, mouse_y, playerSpeed);	
		
	} else {
		if (instance_exists(obj_player_bounce)) move_towards_point(mouse_x, mouse_y, playerSpeed);	
		image_angle = point_direction(x,y,mouse_x, mouse_y);
	}

	