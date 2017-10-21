/// @description

var idle = choose(0,1);
if (idle == 0){
	dir = random_range(0,360);
	var tempSpeed = choose(0,1);
		switch (tempSpeed){
			case 0: movementSpeed = 400; break;
			case 1: movementSpeed = 700; break;
		}
}else{
	movementSpeed = 0;
}



alarm[1] = random_range(1, 2)*room_speed;