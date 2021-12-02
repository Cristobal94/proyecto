Proceso arrayconnotasalainversa
	
	Definir notas, i, tam como entero;
	tam <-10;
    Dimension notas[10];
	
	Para i<-0 Hasta tam - 1 Con Paso 1 Hacer
		Escribir "Introduzca la nota deseada ", i + 1, ":";
		leer notas[i];
	FinPara
	
	Escribir "A continuacion se mostraran las notas en orden inverso a como han sido introducidas";
	
	Para i<-tam -1 Hasta 0 Con Paso -1 Hacer
		escribir notas[i],", " sin saltar;
	FinPara
	
FinProceso
//EJEMPLO DE MODIFICACION DE GITHUB