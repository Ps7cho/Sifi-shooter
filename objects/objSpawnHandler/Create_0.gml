/// @description spawn player

Player = instance_create_layer((room_width/2)+500, room_height/2+100,"Player", objPlayer);

/*
if (instance_count < 100){
   var dif = 100 - instance_count;
   while (--dif > 0){
		instanceID = instance_create_layer((room_width/2)+(80*instance_count), room_height/2,"Player", objSilva);
		objSilva.instanceID = instanceID;
   }
}
