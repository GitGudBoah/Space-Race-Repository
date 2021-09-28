ammo = max_ammo;

if death_counter < 6{
	if attack_counter < 1{
		attack_counter += 1;
	} else{
		attack_counter = 0;
	}
} else{
	if attack_counter < 2{
		attack_counter += 1;
	} else{
		attack_counter = 0;
	}
}

reloading = false;