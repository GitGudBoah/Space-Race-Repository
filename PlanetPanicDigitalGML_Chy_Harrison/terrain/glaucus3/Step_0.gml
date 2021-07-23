//follow
if enemy_manager3.game_over = false && following{
	if distance_to_object(enemy_manager3.target) > stop_distance{
		if distance_to_object(enemy_manager3.target) > catchup_distance{
			if enemy_manager3.target.x > x{
				x += 12;
			}
			if enemy_manager3.target.x < x{
				x -= 12;
			}
		} else{
			if enemy_manager3.target.x > x{
				x += 7;
			}
			if enemy_manager3.target.x < x{
				x -= 7;
			}
		}
	}
	//verticality
	if enemy_manager3.target.y = enemy_manager3.target.pipes_floor && canTrigger{
		if collision_point(x, y, pipes, false, true){
			//do nothing
		} else{
			x = enemy_manager3.target.x;
		}
		//y = pipes_floor;
		climbing = true;
		canTrigger = false;
		canTrigger2 = true;
		canTrigger3 = true;
	}
	if enemy_manager3.target.y = enemy_manager3.target.neutral_floor && canTrigger2{
		//y = neutral_floor;
		if y < neutral_floor{
			descending2 = true;
		} else if y > neutral_floor{
			climbing2 = true;
		}
		canTrigger = true;
		canTrigger2 = false;
		canTrigger3 = true;
	}
	if enemy_manager3.target.y = enemy_manager3.target.water_floor && canTrigger3{
		if collision_point(x, y, water, false, true){
			//do nothing
		} else{
			x = enemy_manager3.target.x;
		}
		//y = water_floor;
		descending = true;
		canTrigger = true;
		canTrigger2 = true;
		canTrigger3 = false;
	}
}

//verticality
if climbing{
	if y > pipes_floor{
		y -= 65;
	} else{
		y = pipes_floor;
		climbing = false;
	}
}
if climbing2{
	if y > neutral_floor{
		y -= 65;
	} else{
		y = neutral_floor;
		climbing2 = false;
	}
}
if descending{
	if y < water_floor{
		y += 65;
	} else{
		y = water_floor;
		descending = false;
	}
}
if descending2{
	if y < neutral_floor{
		y += 65;
	} else{
		y = neutral_floor;
		descending2 = false;
	}
}