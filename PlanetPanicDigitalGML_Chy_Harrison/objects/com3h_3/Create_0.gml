//portrait
speaker = spr_com_kandar;

//text
text = "It's time we wipe these shit stains off of this station, once and for all!";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

enemy_manager3.target.incontrol = false;
talking = true;
counter = 0;
//decision
decision = false;
choice = false;
text1 = "Yes";
text2 = "No";

charge = false;