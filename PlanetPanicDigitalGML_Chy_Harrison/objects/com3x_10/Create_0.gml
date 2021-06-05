//portrait
speaker = spr_com_alan;

//text
text = "Hey.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;
alarm[0] = room_speed * 0.1;

canTrigger = true;