//portrait
speaker = spr_com_glaucus;

//text
text = "Hey.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;
alarm[0] = room_speed * 1;

canTrigger = true;
canTrigger2 = true;