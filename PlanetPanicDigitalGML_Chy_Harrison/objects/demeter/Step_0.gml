//follow
if following{
	if distance_to_object(jay2_2) > stop_distance{
		if distance_to_object(jay2_2) > catchup_distance{
			if jay2_2.x > x{
				x += 12;
			}
			if jay2_2.x < x{
				x -= 12;
			}
		} else{
			if jay2_2.x > x{
				x += 7;
			}
			if jay2_2.x < x{
				x -= 7;
			}
		}
	}
}