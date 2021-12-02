Proceso NotasAlumnosMenu
	
	Definir opciondelmenu Como Entero;
	opciondelmenu <- 0;
	Definir opcioniniciar Como Entero;
	opcioniniciar <- 0;
	Definir hayDatos como logico;
	hayDatos <- Falso;
	Definir numAlumnos como entero;
	numAlumnos <- 0;
	Definir notas como entero;
	Definir nombrealumno Como Caracter;
	Dimension notas[1000];
	Dimension nombrealumno[1000];
	Definir i, j como entero;
	definir s Como Caracter;
	Definir  inicial Como Caracter;
	Definir resto Como Caracter;
	Definir nombreIniMayuscula Como Caracter;
	Definir opciondelmenu2 Como Entero;
	opciondelmenu2 <- 0;
	Definir buscarNombreAlumno Como Caracter;
	buscarNombreAlumno <- "";
	Definir suma como entero;
	Definir media Como Real;
	Definir max, min, ordmini Como Entero;
	Definir ordNombreAlumno Como Caracter;
	Definir salir Como Logico;
	Definir eleccionReiniciar Como Caracter;
	Definir variableparaGitHub como caracter;
	
	
	Repetir
		
		// mostrar menu
		Limpiar Pantalla;
		Escribir "Notas de los alumnos";
		Escribir "   1. Iniciar";
		Escribir "   2. Mostrar";
		Escribir "   3. Reiniciar";
		Escribir "   4. Salir";
	
		// ingresar una opcion
		Escribir "";
		Escribir "Solo acepta valores, como numeros enteros positivos, para este apartado";
		Escribir "Elija una opción (1-4): ";
		Leer opciondelmenu;
		
		// procesar esa opción
		Segun opciondelmenu Hacer
			1:
				Limpiar Pantalla;
				Si hayDatos Entonces
					Escribir "Ya existen datos";
				SiNo
					Repetir
						Escribir "A continuación puede introducir los datos. ¿Cuantos alumnos desea introducir?";
						Escribir "Solo acepta valores como numeros enteros positivos";
						Leer numAlumnos;
					Hasta Que numAlumnos > 0 & numAlumnos < 1001 
					
					Para i <- 0 Hasta numAlumnos - 1 Con Paso 1 Hacer
						Escribir "Introduzca el nombre del alumno";
						Escribir "Solo acepta valores, como letras, para este apartado";
						leer nombrealumno[i];
						Repetir
							Escribir "Introduzca la nota del alumno";
							Escribir "Solo acepta valores, como numeros enteros positivos, para este apartado";
							leer notas[i];
						Hasta Que notas[i] >= 0 & notas[i] <= 10
					FinPara
					hayDatos <- verdadero;
				FinSi
				
			2:
				Si hayDatos Entonces
					salir <- falso;
					Repetir
						// mostrar menu
						Limpiar Pantalla;
						Escribir "Mostrar";
						Escribir "   1. Nombre todos los alumnos y su nota";
						Escribir "   2. Buscar alumno y decir su nota, si existe o no";
						Escribir "   3. Media de las notas de los alumnos";
						Escribir "   4. Nota maxima";
						Escribir "   5. Nota minima";
						Escribir "   6. Ordenar alumnos por nota";
						Escribir "   7. Salir";
						
						// ingresar una opcion
						Escribir "";
						Escribir "Solo acepta valores, como numeros enteros positivos, para este apartado";
						Escribir "Elija una opción (1-7): ";
						Leer opciondelmenu2;
						
						// procesar esa opción
						Segun opciondelmenu2 Hacer
							1. "Nombre de todos los alumnos y sus notas correspondientes":
								
								Para i<-0 Hasta numAlumnos-1 Con Paso 1 Hacer
									//Iniciales en mayuscula
									
									s <- nombrealumno[i];
									inicial <-  Mayusculas(Subcadena(s, 0, 0));
									resto <- Subcadena(s, 1, Longitud(s)-1);
									nombreIniMayuscula <- Concatenar(inicial, resto);
									
									//Si quisieramos el nombre entero en mayuscula habria que cambiar nombreIniMayuscula por Mayusculas(nombrealumno[i])
									Escribir Sin Saltar nombreIniMayuscula," - ", notas[i];
									Escribir "";
								FinPara
								
								
							2. "Buscar alumno y decir su nota":
								
								Escribir "Introduzca el nombre del alumno a buscar";
								Escribir "Solo acepta valores, como letras, para este apartado";
								Leer buscarNombreAlumno;
								buscarNombreAlumno <- Minusculas(buscarNombreAlumno);
								Para i<-0 Hasta numAlumnos - 1 Con Paso 1 Hacer
									Si buscarNombreAlumno = Minusculas(nombrealumno[i]) Entonces
										
										s <- nombrealumno[i];
										inicial <-  Mayusculas(Subcadena(s, 0, 0));
										resto <- Subcadena(s, 1, Longitud(s)-1);
										nombreIniMayuscula <- Concatenar(inicial, resto);
										
										Escribir nombreIniMayuscula," - ", notas[i];
									FinSi
								FinPara
								
							3. "Media de las notas de los alumnos":
								
								suma <- 0;
								Para i<-0 Hasta numAlumnos - 1 Con Paso 1 Hacer
									suma <- suma + notas[i];
								FinPara
								media <- suma / numAlumnos;
								Escribir "La media de las notas del curso es: ", media;
								
							4. "Nota maxima":
								
								//Empezamos comparando el maximo con la posicio 1, que en el arrys es la posicion 0
								max <- notas[0];
								//Empezamos el bucle en la posicion 1 (la segunda del arrays) porque ya hemos empezado antes con la posicion 0 (la primera del arrays)
								Para i<-1 Hasta numAlumnos - 1 Con Paso 1 Hacer
									Si notas[i] > max Entonces
										max <- notas[i];
									FinSi
								FinPara
								Escribir "La nota maxima es: ", max;	
								
							5. "Nota minima":
								
								//Empezamos comparando el minimo con la posicio 1, que en el arrays es la posicion 0
								min <- notas[0];
								//Empezamos el bucle en la posicion 1 (la segunda del arrays) porque ya hemos empezado antes con la posicion 0 (la primera del arrays)
								Para i<-1 Hasta numAlumnos - 1 Con Paso 1 Hacer
									Si notas[i] < min Entonces
										min <- notas[i];
									FinSi
								FinPara
								Escribir "La nota minima es: ", min;	
								
							6. "Ordenar alumnos por nota creciente":
								
								min <- notas[0];
								//En este caso es numAlumnos - 2 por que al comparar con el siguiente bucle, al llegar a la posicion (del arrays) 5
								//nos saltaria a la posicion 6 (i<-j+1), y no nos haria el bucle
								//Por tanto lo dejamos asi
								Para j<-0 Hasta numAlumnos - 2 Con Paso 1 Hacer
									
									ordNombreAlumno <- nombrealumno[j];
									ordmini <- notas[j];
									
									Para i<-j+1 Hasta numAlumnos - 1 Con Paso 1 Hacer
										Si notas[i] < ordmini Entonces
											nombrealumno[j] <- nombrealumno[i];
											notas[j] <- notas[i];
											nombrealumno[i] <- ordNombreAlumno;
											notas[i] <- ordmini;
											ordNombreAlumno <- nombrealumno[j];
											ordmini <- notas[j];
										FinSi
									FinPara
								FinPara
								Para i<-0 Hasta numAlumnos - 1 Con Paso 1 Hacer
									s <- nombrealumno[i];
									inicial <-  Mayusculas(Subcadena(s, 0, 0));
									resto <- Subcadena(s, 1, Longitud(s)-1);
									nombreIniMayuscula <- Concatenar(inicial, resto);
									Escribir nombreIniMayuscula, " ", notas[i]," ";
								FinPara
								
							7. "Salir":	
								Borrar Pantalla; 
								salir <- verdadero;
								
						FinSegun
						
						si salir == Falso entonces
							Escribir "Presione la barra espaciadora para continuar";
							Esperar tecla;
						FinSi
						
					Hasta Que opciondelmenu2=7
					
				SiNo
					Escribir "No hay datos";
					Escribir "Presione, a continuacion, enter, e, introduzca los datos con la opcion 1 de este menu";
				FinSi
				
			3:
			
				si hayDatos == Falso Entonces
					Escribir "No hay datos guardados, vaya a la opción 1 para crearlos";
					
					//si hay datos guardados
				SiNo
					Escribir "¿Seguro que deseas borrar todos los datos?";
					Escribir "Escribe s para borrar y n para no borrar";
					Leer eleccionReiniciar;
					eleccionReiniciar <- Minusculas(eleccionReiniciar);
					
					//introduce s o n, si no me repito
					si eleccionReiniciar<>'s' & eleccionReiniciar <>'n' Entonces
						Repetir
							Escribir "Introduzca una opcion valida";
							Leer eleccionReiniciar;
							eleccionReiniciar <- Minusculas(eleccionReiniciar);
						Hasta Que eleccionReiniciar='s' | eleccionReiniciar='n'
					FinSi
					
					//el programa se reinicia, borrando todos sus valores y dejandolos a 0
					si eleccionReiniciar = 's' entonces
						Para i<-0 Hasta numAlumnos - 1 Con Paso 1 Hacer
							nombrealumno[i]<-"";
							notas[i]<- - 1;
						FinPara
						hayDatos<-Falso;
						numAlumnos<-0;
						Escribir "Los datos se han borrado correctamente";
					siNo
						Escribir "Los datos no se han borrado";
					FinSi
					
				FinSi
				
			4: 
				Escribir "Fin del programa";
				
		FinSegun
	
		Escribir "-------------------------------------------";
		Escribir "Presione enter para continuar";
		Esperar Tecla;
		
	Hasta Que opciondelmenu=4


FinProceso
