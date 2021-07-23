if hp <= 0 && tentacleb_hp.alive1{
	tentacleb_hp.alive1 = false;
	beast.firerate = 5;
	instance_destroy();
}