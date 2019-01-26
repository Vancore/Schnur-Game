//every frame, the image will be scaled up until 1 (100%)
image_xscale = min(image_xscale + 0.02, 1);
image_yscale = image_xscale;

if (image_xscale == 1)
{
	//change obj_enemyspawn into obj_enemy and perform obj_enemy's events
	instance_change (obj_enemy, true);
}