//create event is only called when object is created
//set up motion

audio_sound_pitch(snd_shooting, random_range(0.8,1.2));
audio_play_sound(snd_shooting, 1, false);

direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-4,4); 
//bullets won't shoot in a straight, stale line
speed = 16; //movement is 16 pixels per frame 
image_angle = direction;
