/// @description Insert description here
event_inherited();
npcMaxHealth = 3000;
Health = npcMaxHealth;

alarm[2] = 1;
tribeMissing = 0;

tribeSize = random_range(2,4);
for (var i = 0; i < tribeSize; i++){
	var bubble = instance_create_layer(x,y,"Player",objBubble);
	bubble.tribe = id;
}

