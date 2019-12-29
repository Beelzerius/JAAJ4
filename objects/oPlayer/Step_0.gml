/// @description Movimento e Colisão

// Entradas

xsp = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * sp
ysp = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * sp
if(xsp != 0 && ysp != 0){
	xsp *= 0.707
	ysp *= 0.707
}

// Colisões
repeat(abs(xsp)){
	if(place_meeting(x + sign(xsp), y, parWall))
		break;
	x += sign(xsp)
}
xsp = 0;

repeat(abs(ysp)){
	if(place_meeting(x, y + sign(ysp), parWall))
		break;
	y += sign(ysp)
}
ysp = 0;