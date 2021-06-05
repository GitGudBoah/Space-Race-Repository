image_blend = c_white;

if incontrol && charged{
	if overload = 0{
		overload = -1;
		audio_play_sound(snd_explosion_big, 1, false);
		instance_create_layer(x, y, "obj_npc", explosion);
	} else if overload > 0{
		overload -= 10;
	}
}