//portrait
speaker = spr_com_blank;

//text
text = "[A stranger's voice is heard over the commlink: ]";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;

alarm[0] = room_speed * 2;

kill_count = 0;
canTrigger = true;
kill_count2 = 0;
second_phase = false;

//decision
decision = false;
choice = 0;
text1 = "Blackhole?";
text2 = "Totolsk?";
text3 = "*Leave*";