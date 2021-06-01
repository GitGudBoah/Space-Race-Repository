//portrait
speaker = spr_com_glaucus;

//text
text = "Hello!? Are there any passengers on this station!?";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;
//decision
decision = false;
choice = false;
text1 = "Yes";
text2 = "No";

//trigger
alan3.incontrol = false;
alarm[0] = room_speed * 1;