//cut forward

if counter = 1{
	speaker = spr_com_blank;
	text = "Glaucus call over the commlink to report that the securty dude stole half of their loot from the ship.";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "Alan and Jay split up from Demeter- they head further into the museum to help the police capture the cult leader.";
}

if counter = 3{
	speaker = spr_com_blank;
	text = "Meanwhile- Demeter is tasked with taking the two hostages out of the den, but she gets cornered by a large, man-eating plant.";
}

if counter = 4{
	speaker = spr_com_blank;
	text = "Demeter calls her father to tell him that she found her brother, but her father tells (brother) to sacrifice Demeter to escape.";
}

if counter = 5{
	speaker = spr_com_blank;
	text = "Demeter overhears her father say this, and she sacrifices (brother) instead- she is heartbroken, angry, and paranoid that (brother) will do the same to her.";
}

if counter = 6{
	speaker = spr_com_blank;
	text = "The Oninaki woman helps Demeter defeat the plant, and they escape to the station's rear port- where they find the security dude.";
}

if counter = 7{
	speaker = spr_com_blank;
	text = "He is dying beside his ship- he apparently touched the believer's slug. In the security dude's ship are the stolen moon minerals.";
}

if counter = 8{
	speaker = spr_com_blank;
	text = "Glaucus joins Alan and Jay inside the museum- to capture the cult leader, Glaucus must undo Dahlia's programming within him.";
}

if counter = 9{
	speaker = spr_com_blank;
	text = "Glaucus fears that he'll lose his feelings for his comrades if he does this- but it must be done.";
}

if counter = 10{
	speaker = spr_com_blank;
	text = "Alan helps Glaucus stop beating himself up over losing the moon minerals that Alan needed. Glaucus' feelings remain the same.";
}

if counter = 11{
	speaker = spr_com_blank;
	text = "Alan, Jay, and Glaucus bring the cult leader to the police and gain the second key. Demeter and the Oninaki woman meet them- reporting that they found the moon minerals.";
}

if counter = 12{
	speaker = spr_com_blank;
	text = "The Oninaki woman joins Alan's crew- she wants him to help her get the people of Attis to join the Oninaki in slaying Nalthuraas.";
}

if counter = 13{
	speaker = spr_com_blank;
	text = "Alan's crew continues on their path to Garinoka.";
}

if counter = 14{
	counter = 15;
	talking = false;
	alarm[1] = room_speed * 1;
}

//fade out title
if talking && title_alpha > 0{
	title_alpha -= 0.02;
}