score += 10;

with(other){
	instance_destroy();
	
	if(sprite_index == spr_asteroid){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} else if(sprite_index == spr_asteroid_medium){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",asteroid);
			new_asteroid.sprite_index = spr_asteroid_fragment;
		}
	}
	
	repeat(10){
		instance_create_layer(x,y,"Instances",debris);
	}
	
}
audio_play_sound(snd_explosion_small, 1, false);

instance_destroy();