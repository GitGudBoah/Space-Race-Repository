//portrait
speaker = spr_com_alan;

//text
text = "That goddamn rat Kandar... One of these days I might accidentally kill him.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;

alarm[0] = room_speed * 1;