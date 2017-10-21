/// @description Insert description here
// You can write your code in this editor

if timeShown < 60 {
	timeShown += 1;
	xPosition += 1;
	yPosition -= 2;
} else {
	instance_destroy();
}