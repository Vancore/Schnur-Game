instance_create_layer(random(room_width), random(room_height), "Layer_Homeless", obj_homeless_spawn);

alarm[0] = spawnrate;
//after event finishes, alarm resets --> loop
//event is carried out every second (60 fps)