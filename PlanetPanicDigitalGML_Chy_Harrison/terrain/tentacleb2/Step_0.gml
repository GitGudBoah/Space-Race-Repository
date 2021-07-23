if hp <= 0 && tentacleb_hp.alive2{
	tentacleb_hp.alive2 = false;
	beast.firerate = 5;
	instance_destroy();
}