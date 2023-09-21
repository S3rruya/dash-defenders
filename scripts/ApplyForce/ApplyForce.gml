// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ApplyForce(){
	var angulo_em_radianos = degtorad(argument0); // Converte o ângulo para radianos
	var mudanca_x = argument1 * cos(angulo_em_radianos); // Calcula a mudança em x
	var mudanca_y = argument1 * sin(angulo_em_radianos); // Calcula a mudança em y

	currentXSpeed += mudanca_x;
	currentYSpeed += mudanca_y;
}