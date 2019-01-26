//ask if player exists and if so, follow player
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
}
image_angle = direction;

//destroy enemy when hp equals/is less than 0
if (hp <= 0) 
{
	with (obj_score) gamescore += 5; 
	//with is used to reference to another object and its properties
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	audio_play_sound(snd_death, 0, 0)
	instance_destroy();
}