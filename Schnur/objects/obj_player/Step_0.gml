//step event is called every frame
//basic controls
if (keyboard_check(ord("D"))) x += 4;
if (keyboard_check(ord("A"))) x -= 4;
if (keyboard_check(ord("W"))) y -= 4;
if (keyboard_check(ord("S"))) y += 4;

//player object rotates towards mouse coordinates
image_angle = point_direction(x,y,mouse_x, mouse_y);

//shooting
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"Layer_Bullets",obj_bullet)
	cooldown = 5;
}

//every frame cooldown counts down to 0
cooldown = cooldown - 1;