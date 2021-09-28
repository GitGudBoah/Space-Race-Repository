if xpos > 0{
	xpos -= 60;
} else if xpos2 > 0{
	xpos2 -= 60;
} else if counter = 0{
	counter = 1;
	alarm[0] = room_speed * 2;
}

if counter = 2{
	if canTrigger{
		canTrigger = false;
		camera_set_view_target(view_camera[0], player);
	}
	if xpos > -1050 && xpos2 > -1050{
		xpos -= 100;
		xpos2 -= 100;
	} else{
		player.incontrol = true;
		com_totolsk.boss_fight_triggered = true;
		instance_destroy();
	}
	
	if opacity > 0{
		opacity -= 0.05;
	}
}

if counter < 2 && opacity < 1{
	opacity += 0.05;
}