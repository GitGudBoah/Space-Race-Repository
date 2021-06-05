if y = neutral_floor{
	//do nothing
} else if descending2{
	descending2 = false;
	climbing = true;
} else if descending{
	descending = false;
	climbing2 = true;
} else if climbing{
	climbing = false;
	descending2 = true;
}