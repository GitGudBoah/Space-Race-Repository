//fade out title
if fade && title_alpha > 0{
	title_alpha -= 0.02;
}

if title_alpha <= 0{
	room_goto(scene9);
}