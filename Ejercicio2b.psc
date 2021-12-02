Proceso numeroscomprendidosengrupos
	definir num Como Entero;
	num = 0;
	Escribir "Introducir un numero, o numeros, para saber si: es menor que 30, si esta entre 50 y 75, o si es mayor de 80";
	Escribir "El programa finalizara cuando se escriba el numero 0";

		Repetir
			leer num;
			
			Si num >= 50 & num <= 75 Entonces
				Escribir "El numero esta entre 50 y 75";
			FinSi
			Si num > 80 Entonces
				Escribir "El numero es mayor de 80";
			FinSi
			
			Si num >= 30 & num < 50 o num > 75 & num < 80 Entonces
				Escribir "El numero no esta comprendido entre los grupos de valores establecidos";
			FinSi
			
			Si num < 30 & num > 0 o  num < 0 Entonces
				Escribir "El numero introducido es menor de 30";
			FinSi
			
			
		Hasta Que num = 0

	Si num = 0 Entonces
		Escribir "Fin del programa";
	FinSi
FinProceso
