//Dahlia business deal

if counter = 1{
	speaker = spr_com_dahlia;
	text = "Looking back... It seems like we've accomplished so little...";
}

if counter = 2{
	speaker = spr_com_dahlia;
	text = "What will humanity leave behind when it's gone? Is this really all there is?";
}

if counter = 3{
	speaker = spr_com_dahlia;
	text = "I want our existence to mean more than that.";
}

//decision
if counter = 4{
	speaker = spr_com_dahlia;
	text = "I want our existence to mean more than that.";
	text1 = "*Agree*";
	text2 = "*Disagree*";
	decision = true;
}

if counter = 5{
	if choice = false{
		speaker = spr_com_alan;
		text = "Do you have a plan? I'm willing to help...however I can.";
	} else{
		speaker = spr_com_alan;
		text = "You should care more about the people who are alive right now.";
	}
	decision = false;
}
//

if counter = 6{
	if choice = false{
		speaker = spr_com_dahlia;
		text = "I knew I was right to call your here.";
	} else{
		speaker = spr_com_dahlia;
		text = "We're surviving, are we not? I'm worried about the survival of future generations.";
	}
}

if counter = 7{
	speaker = spr_com_dahlia;
	text = "Nalthuraas is growing at an exponential rate. We don't have the technology to fight it or outrun it.";
}

if counter = 8{
	speaker = spr_com_dahlia;
	text = "In a decade, the Terran will be no more.";
}

if counter = 9{
	speaker = spr_com_dahlia;
	text = "I've been working on a project for the last several years. It's a machine that will tear out the soul from every Terran on this station and use them to create a race of sentient androids.";
}

if counter = 10{
	speaker = spr_com_dahlia;
	text = "Humans may go extinct, but the beings we create will live on as extensions of our existence.";
}

if counter = 11{
	speaker = spr_com_dahlia;
	text = "Imagine how much more they could accomplish. Our progress need not end here.";
	choice = false;
}

//decision
if counter = 12{
	speaker = spr_com_dahlia;
	text = "Imagine how much more they could accomplish. Our progress need not end here.";
	text1 = "*Tease*";
	text2 = "*Criticize*";
	decision = true;
}

if counter = 13{
	if choice = false{
		speaker = spr_com_alan;
		text = "*scoffs* Maybe they'll create a time machine. Be careful. If you keep thinking like that, one of them might show up and give us the secret to immortality.";
	} else{
		speaker = spr_com_alan;
		text = "You're delusional, Dahlia. If humanity dies, then that will be the end of us. Your android race will likely be crushed by Nalthuraas as well.";
	}
	decision = false;
}
//

if counter = 14{
	if choice = false{
		speaker = spr_com_dahlia;
		text = "*smiles* I was hoping for that, actually.";
	} else{
		speaker = spr_com_dahlia;
		text = "But there's a chance that they'll live.";
	}
}

if counter = 15{
	speaker = spr_com_dahlia;
	text = "We can create future generations of the Terran - who may not be connected by blood, but who's existence alone gives ours more purpose.";
}

if counter = 16{
	speaker = spr_com_dahlia;
	text = "I won't sit around waiting to die when there's so much more we could be doing. We owe it to those who struggled to make our existence possible.";
}

//deal offer
if counter = 17{
	speaker = spr_com_alan;
	text = "Enough beating around the bush. What business deal did you want to share with me?";
}

if counter = 18{
	speaker = spr_com_dahlia;
	text = "It's a partnership.";
}

if counter = 19{
	speaker = spr_com_dahlia;
	text = "You'll harness materials from moons across the galaxy and sell them to me and my team.";
}

if counter = 20{
	speaker = spr_com_dahlia;
	text = "These materials are required to develop this project of mine.";
	choice = false;
}

//decision
if counter = 21{
	speaker = spr_com_dahlia;
	text = "These materials are required to develop this project of mine.";
	text1 = "*Doubt*";
	text2 = "*Reject*";
	decision = true;
}

if counter = 22{
	if choice = false{
		speaker = spr_com_alan;
		text = "Am I really the person for this kind of job? I haven't piloted a ship since...";
	} else{
		speaker = spr_com_alan;
		text = "Find someone else. I'm done being your toy.";
	}
	decision = false;
}
//

if counter = 23{
	if choice = false{
		speaker = spr_com_dahlia;
		text = "I'm aware of your history. But you and I both want the same thing, don't we?";
	} else{
		speaker = spr_com_dahlia;
		text = "I know you don't like me, Alan- I'm not that tactless. But I also know what you want deep down.";
	}
}

if counter = 24{
	speaker = spr_com_dahlia;
	text = "Alan... You could atone for Alice's death by dedicating yourself to such a cause.";
}

if counter = 25{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 26{
	speaker = spr_com_alan;
	text = "I'm going to need a better ship...";
}

if counter = 27{
	speaker = spr_com_dahlia;
	text = "Of course. I'll give you the resources to get started on these moon mining missions.";
}

if counter = 28{
	speaker = spr_com_dahlia;
	text = "You'll need a crew, as well.";
}

if counter = 29 && canTrigger{
	canTrigger = false;
	talking = false;
	alarm[0] = room_speed * 1;
	speaker = spr_com_dahlia;
	text = "*looks Alan in his eyes and offers her hand*";
}

if counter = 30{
	speaker = spr_com_dahlia;
	text = "This is a momentous achievement for humanity. Let's make history together.";
	choice = false;
}

//decision
if counter = 31{
	speaker = spr_com_dahlia;
	text = "This is a momentous achievement for humanity. Let's make history together.";
	text1 = "*Shake hands*";
	text2 = "*Reject*";
	decision = true;
}

if counter = 32{
	if choice = false{
		speaker = spr_com_alan;
		text = "*shakes her hand*";
	} else{
		speaker = spr_com_alan;
		text = "Put your hand down, Dahlia.";
	}
	decision = false;
}
//

if counter = 33{
	if choice = false{
		speaker = spr_com_dahlia;
		text = "To the future of our species.";
	} else{
		speaker = spr_com_dahlia;
		text = "*lowers hand and pouts* Come on, Alan. Won't you humor me?";
	}
}

if counter = 34{
	if choice = false{
		speaker = spr_com_alan;
		text = "To honor the past.";
	} else{
		speaker = spr_com_alan;
		text = "I'm doing this for Alice.";
	}
}

if counter = 35{
	counter = 36;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = rm_level3;
	inst.fadein_speed = 0.0075;
	inst.fadeout_speed = 0.02;
	audio_sound_gain(placeholder_music6, 0, 2000);
}

//decision: choosing
if decision{
	if keyboard_check_pressed(ord("D")){
		choice = true;
	}

	if keyboard_check_pressed(ord("A")){
		choice = false;
	}
}