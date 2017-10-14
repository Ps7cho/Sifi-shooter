/// @description

var idle = choose(0,1);
if (idle == 0){
	dir = random_range(0,360);
	var tempSpeed = choose(0,1);
		switch (tempSpeed){
			case 0: walkSpeed = 400; break;
			case 1: walkSpeed = 700; break;
		}
}else{
	walkSpeed = 0;
}



alarm[1] = random_range(1, 3)*room_speed;