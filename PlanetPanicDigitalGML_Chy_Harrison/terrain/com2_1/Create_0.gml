//portrait
speaker = 0;

//text
text = 0;
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

activated = false;
alarm[0] = room_speed * 2;
counter = 0;

audio_stop_all();