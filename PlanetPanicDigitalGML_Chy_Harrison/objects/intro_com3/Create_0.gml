//portrait
speaker = 0;

//text
text = 0;
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

activated = false;
alarm[0] = room_speed * 2;
alarm[11] = room_speed * 27;
counter = 0;