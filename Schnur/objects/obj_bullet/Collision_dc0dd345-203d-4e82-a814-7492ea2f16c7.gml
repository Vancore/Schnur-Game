//code runes when collision between bullets and enemy instances are detected
with(other) //this is needed because otherwise the could would refer to obj_bullet
{
	hp -= 1;
}
instance_destroy();