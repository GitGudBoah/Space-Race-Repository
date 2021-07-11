if other.boss_fight = true{
	other.hp -= 25;
	
	if enemy_manager2.game_over = false && other.mobile = false{
		if jay2_2.x > other.x{
			other.x -= 7;
		}
		if jay2_2.x < other.x{
			other.x += 7;
		}
	}
	
	//destroy
	repeat(2){
		instance_create_layer(x,y,"Instances",debris);
	}
	instance_destroy();
}