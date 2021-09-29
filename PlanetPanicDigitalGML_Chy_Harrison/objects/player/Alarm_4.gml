//UPGRADES: Armor
//spawn an explosion sprite object at our location that damages
//and knocks back enemies it collides with.
if room = totolsk_battle{
	var inst = instance_create_layer(x, y, "chamber", blast);
	inst.image_xscale = 1.5;
	inst.image_yscale = 1.5;
} else{
	var inst = instance_create_layer(x, y, "boundaries", blast);
	inst.image_xscale = 1.5;
	inst.image_yscale = 1.5;
}

alarm[5] = room_speed * o_game.armor_regen_delay;