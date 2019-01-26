with (obj_player)
{
	image_xscale = max(image_xscale - 0.05, 1);
	image_yscale = image_xscale;
}
alarm[0] = countdown;
instance_destroy();