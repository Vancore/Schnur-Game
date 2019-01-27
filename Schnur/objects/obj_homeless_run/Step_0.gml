//ask if player exists and if so, follow player
//if (instance_exists(obj_player))
if (distance_to_object(obj_player) < 300)
{
	//layer_sprite_change(0, spr_homeless2)
	var mouseDirection = point_direction(mouse_x, mouse_y, x, y)
	motion_set(mouseDirection, homelessSpeed);
	//move_towards_point(obj_player.x, obj_player.y, spd);
}
image_angle = direction;


//destroy sprite when hp equals/is less than 0
if (hp <= 0) 
{
	
	with (obj_score) 
	{
		gamescore += 1; 
		if (gamescore == 10) 
		{
		room_goto(rm_endscreen)
		audio_stop_all()
		}
	}
	//with is used to reference to another object and its properties
	var soundNumber = irandom(8);
	switch(soundNumber)
	{
		case 0: 
		audio_play_sound(snd_ouch1, 1, 0)
		break;
		
		case 1: 
		audio_play_sound(snd_ouch2, 1, 0)
		break;
		
		case 2: 
		audio_play_sound(snd_ouch3, 1, 0)
		break;
		
		case 3: 
		audio_play_sound(snd_ouch4, 1, 0)
		break;
		
		case 4: 
		audio_play_sound(snd_ouch5, 1, 0)
		break;
		
		case 5: 
		audio_play_sound(snd_ouch6, 1, 0)
		break;
		
		case 6: 
		audio_play_sound(snd_ouch7, 1, 0)
		break;
		
		case 7: 
		audio_play_sound(snd_ouch8, 1, 0)
		break;
		
		case 8: 
		audio_play_sound(snd_ouch9, 1, 0)
		break;
		
	}
	//audio_sound_pitch(snd_death, random_range(0.8, 1.2));
	//audio_play_sound(snd_death, 0, 0)
	
	instance_create_layer(x,y, "Layer_Instances", obj_house);
	homelessSpeed = 0;
	instance_destroy();
	
	
}


