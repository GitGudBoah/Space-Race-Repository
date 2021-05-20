//portrait
speaker = spr_com_demeter;

//text
text = "...Are you going to keep us in suspense?";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

alarm[0] = room_speed * 1;
talking = false;
counter = 0;

canTrigger = true;
//decision
decision = false;
choice = false;