offsetY=0;
//create at 0 position
offset = 0;
ropelength = 150;
host= self;
//this is the object that hosts the rope

next_rope = instance_create_layer(x,y +offsetY, "Instances", obj_Rope);
//in tutorial aber alte version: instance_create(x , y + offsetY, obj_Rope);
//offsetY is 0 (see above) but if we would change that it would increase

attach=physics_joint_distance_create(host,next_rope, host.x, host.y, next_rope.x, next_rope.y,false);;
//bind the rope that we just created to the host, which is the object rope holder
//the first two instances are the one you want to joint together
//next two are the position in the world where the two instances are linked at 
//  (gonna use the center at each object)
//      first position is host.x, host.y,
//      second position is next_rope.x, next_rope.y
//last instance is the collider and we make false because we don't want them to colide with each other
//  !!! false müssen wir also wahrscheinlich ändern dass die schnur mit sich colliden wird!!!


physics_joint_set_value( attach, phy_joint_damping_ratio,1 );
// springyness of the rope. it is holding on to itself
	//!!! könnte hilfreich sein für die hombase 
physics_joint_set_value( attach, phy_joint_frequency, 10);
// ferquency in which the rope updates per roomspeed step


with (next_rope){
	parent=other.id;
	//we want to tell this piece of rope, who its parent is 
	//because we use a draw command to draw the line that connects between the two of them
	//illuminating the need of sprites?! -> will look smoother
	//!!! wir brauchen vllt keine sprites??
	
}
repeat(ropelength){
//we want to create many pieces of rope tied to each other
//repeats the same junk of code 10 times
//is almost like the first junk of code but we need the upper one to link it to the holding object
// !!! also brauchen wir vielleicht noch eins extra, dass wir 2 verlinkte punkte haben
//der teil hier ist dynamisch generiert
// 10 instances of the rope are generated here
//!!! um die länge zu verändern müssen wir das repeat wahrscheinlich bearbeiten

	offsetY += 1; 
	//move down by 1 pixel
	last_rope=next_rope;
	//next rope is the first rope
	//we want to store last rope in next rope
	next_rope= instance_create_layer(x, y, "Instances", obj_Rope) ;
	
	link = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false )
	//create link from this rope to last rope
	//link i sthe same as attached but we already used attached so we use the word link
	//we dont want to override "attache" to use it maybe later
	// its going to be between last rope and next rope
	//link them at last_rope.x, last_rope.y 
	// link them to each other at them x and y coordinates
	//false that they dont collide with each other 
	// !!! vllt sollten wir das false dann ändern
	
	physics_joint_set_value( link, phy_joint_damping_ratio,0.1 );
	// springyness of the rope. it is holding on to itself
	//!!! könnte hilfreich sein für die hombase 
	physics_joint_set_value( link, phy_joint_frequency, 0);
	// ferquency in which the rope updates per roomspeed step
	
	physics_joint_set_value( link, phy_joint_max_length,5);
	
	
	with(next_rope){
		parent = other.last_rope;
	}
}
steadyhome = instance_create_layer(x,y, "Instances", obj_home);
homebound = physics_joint_distance_create(last_rope, steadyhome, last_rope.x, last_rope.y, steadyhome.x, steadyhome.y, false );

