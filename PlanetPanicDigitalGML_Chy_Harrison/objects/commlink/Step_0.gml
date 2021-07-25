if o_game.game_over = false{
	if player.x > 500 && player.x < 600{
		commlink.speaker = spr_com_jay;
		commlink.text = "Manning the guns!";
	}

	if player.x > 1100 && player.x < 1200{
		commlink.speaker = spr_com_demeter;
		commlink.text = "Yes!... Finally, let's blow this big bastard to bits!";
		if canTrigger3{
			canTrigger3 = false;
			alarm[1] = room_speed * 4;
		}
	}

	if player.x > 6500 && player.x < 6600{
		commlink.speaker = spr_com_jay;
		commlink.text = "Hope this stings!";
		talking = true;
	}

	if player.x > 7400 && player.x < 7500{
		if canTrigger{
			canTrigger = false;
			commlink.speaker = spr_com_alan;
			commlink.text = "Pirates! Let's give them a warm welcome!";
		}
	}
	
	if player.x > 10100 && player.x < 10200{
		commlink.speaker = spr_com_alan;
		commlink.text = "Does anyone have eyes on the behemoth...?";
	}
	
	if player.x > 11000 && player.x < 11100{
		commlink.speaker = spr_com_demeter;
		commlink.text = "If we're lucky, it found more appetizing food.";
	}
	
	if player.x > 12150 && player.x < 12250{
		if canTrigger2{
			canTrigger2 = false;
			commlink.speaker = spr_com_alan;
			commlink.text = "IT'S HERE! BRACE YOURSELVES!";
			alarm[0] = room_speed * 2;
		}
	}
}