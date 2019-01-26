//ask if player exists and if so, follow player
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}
image_angle = direction;

//destroy enemy when hp equals/is less than 0
if (hp <= 0) instance_destroy();