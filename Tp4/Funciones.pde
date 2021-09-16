
int devolverpantallaActual() {
  return pantallaActual;
}

void Cambiodepantalla(int NPantalla) {

  pantallaActual = NPantalla+1;
}
void ActualizarPantalla (int NPantalla) {
  if (NPantalla==0) {

    //HOME Pantalla 0

    pushStyle();
    background(15, 220, 18);
    textSize(50);
    text("Final Copa America", 100, height/2);
    textSize(30);
    text("Por Manuel Garmendia", 130, 300);
    fill(0);
    text("Pulsa Enter para continuar", 120, 350);
    textSize(15);
    text("Pulsa flecha para arriba para ver los creditos", 130, 380);
    popStyle();
  } else if (NPantalla==1) {

    // Pantalla Introduccion 1

    background(15, 220, 18);
    image(Imagenes[0], 50, 50, 500, 300);
    pushStyle();
    textSize(15);
    fill(0);
    text("La tarde está soleada, Brasil ya anunció que jugara con sus máximas estrellas,", 10, 20);
    text("con una formación ofensiva, por el otro lado Argentina aun no dio su formacion", 10, 40);
    textSize(25);
    text("Pulsa enter para continuar", 150, 380);
    popStyle();
  } else if (NPantalla==2) {

    //Pantalla de Planteo de juego, Eleccion de formacion 2

    textSize(15);

    fill(255);
    rect(0, 0, 200, 400);
    fill(0);
    text("Formacion Defensiva", 30, 300); 

    fill(255);
    rect(200, 0, 200, 400);
    fill(0);
    text("Formacion equilibrada", 230, 300);

    fill(255);
    rect(400, 0, 200, 400);
    fill(0);
    text("Formacion ofensiva", 430, 300);
    //defensiva
    image(Imagenes[5], 10, 20, 150, 250);
    //equilibrada
    image(Imagenes[6], 220, 20, 150, 250);
    //ofensiva
    image(Imagenes[7], 420, 20, 150, 250);
    textSize(20);
    text("seleccione con un click que formacion quiere utilizar", 30, 350);
  } else if (NPantalla==3) {

    //PANTALA 3 DEFENSIVA

    background(255, 233, 0);
    image(Imagenes[1], 0, 0, 600, 330);
    textSize(25); 
    fill(255);
    text("0-0", 20, 30);
    text("00:00", 500, 30);
    textSize(15);
    fill(0);
    text("Los jugadores comienzan a correr por la cancha, para darle comienzo a la gran", 20, 350);
    text("final de la copa america. Messi hace un perfecto desplaze con el balon", 20, 370);
    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para continuar", 150, 390);
  } else if (NPantalla==4) {

    //pantalla 4 defensiva

    background(255, 233, 0);
    image(Imagenes[2], 0, 0, 600, 330);
    fill(0);   
    textSize(15);
    text("Partido muy peleado, no se sacan diferencia parece que van a ir a prórroga...", 20, 350);
    text("Brasil tirado al ataque le permite una contra a Argentina...", 20, 370);
    textSize(25); 
    fill(255);
    text("0-0", 20, 30);
    text("85:00", 500, 30);
    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para continuar", 150, 390);
  } else if (NPantalla==5) {

    //Pantalla 5 defensiva

    background(255, 233, 0);
    image(Imagenes[8], 0, 0, 600, 330);

    textSize(25); 
    fill(255);
    text("0-0", 20, 30);
    text("92:03", 500, 30);

    fill(0);   
    textSize(15);
    text("UNA FALTA INCREIBLE, PENAL PARA ARGENTINA EN EL TIEMPO EXTRA!!!!", 20, 350);
    text("Si Argentina convierte estaria muy cerca de lograr hacerse con la copa!!", 20, 370);

    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para continuar", 150, 390);
  } else if (NPantalla==6) {

    //Pantalla 6 defensiva

    background(255, 233, 0);
    image(Imagenes[10], 0, 0, 600, 330);

    textSize(25); 
    fill(255);
    text("0-0", 20, 30);
    text("93:12", 500, 30);

    fill(0);   
    textSize(15);
    text("seleccione con un click a donde desea patear", 20, 350);

    //botones penal

    fill(255);
    rect(150, 60, 50, 50);
    rect(300, 60, 50, 50);
  } else if (NPantalla==7) {

    //penal errado izquierda

    background(255, 233, 0);
    image(Imagenes[11], 0, 0, 600, 330);
    textSize(15);
    fill(0);
    text("BRASIL ATAJA EL PENAL!!! Y luego de una contra define el partido imponiendose", 10, 350);
    text("sobre Argentina 0-1 justo al finazlizar el partido.", 20, 370);
    
       textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para CONTINUAR", 150, 390);
    
  } else if (NPantalla==8) {

    //Brasil campeon. Pantalla defensiva 8

    background(255, 233, 0);
    image(Imagenes[4], 0, 0, 600, 330);
    fill(0);
    text("BRASIL CAMPEON DE AMERICA!!!!", 20, 350);
    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para regresar al inicio", 150, 390);
  } else if (NPantalla==9) {

    //Gol de penal. Pantalla defensiva 9

    background(255, 233, 0);
    image(Imagenes[12], 0, 0, 600, 330);
    textSize(15);
    fill(0);
    text("GOOOL DE ARGENTINAAA, ESTAN A MINUTOS DE SER CAMPEONES!!!!", 20, 350);

    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para continuar", 150, 390);
  } else if (NPantalla==10) {

    //Argentina campeon. pantalla defensiva 10

    background(255, 233, 0);
    image(Imagenes[3], 0, 0, 600, 330);

    fill(0);
    text("ARGENTINA CAMPEON DE AMERICA!!!!", 20, 350);

    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para regresar al inicio", 150, 390);
  } else if (NPantalla==11) {

    //Pantalla equilibrada 1

    textSize(25); 
    fill(255);
    text("0-1", 20, 30);
    text("40:03", 500, 30);
    fill(0);
    background(255, 233, 0);
    image(Imagenes[14], 0, 0, 600, 330);
    textSize(15);
    text("comienza el partido y Brasil se impone con un juego predominante, frente a una", 10, 350);
    text("Argentina muy debil. Minuto 40 del partido gol de Brasil de cabeza, Argentina ", 10, 370);
    text("no presento ningun tipo de resistencia", 10, 390);
    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para continuar", 150, 300);
  } else if (NPantalla==12) {

    //Brasil campeon. Pantalla equilibrada 2



    background(255, 233, 0);
    image(Imagenes[4], 0, 0, 600, 330);
    textSize(15);
    fill(0);
    text("Debido al juego equilibrado de Argentina pierde 1-0 por no tener una idea clara de juego.", 10, 350);
    text("BRASIL ES CAMPEON DE AMERICA!!!!!", 10, 370);
    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para regresar al inicio", 150, 390);
  } else if (NPantalla==13) {

    // Gol de Argentina. Pantalla ofensiva 1

    background(255, 233, 0);
    image(Imagenes[15], 0, 0, 600, 330);

    textSize(25); 
    fill(255);
    text("1-0", 20, 30);
    text("25:12", 500, 30);

    textSize(15);
    fill(0);
    text("Al comenzar el partido Di maria se escapa en una contra y logra marcar gol", 10, 350);
    text("picandola en el minuto 25 del primer tiempo, increible jugada individual de el!!", 10, 370);

    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para CONTINUAR", 150, 390);
  } else if (NPantalla==14) {

    //2do Gol de Argentina. Pantalla ofensiva 2

    background(255, 233, 0);
    image(Imagenes[9], 0, 0, 600, 330);


    textSize(25); 
    fill(255);
    text("2-0", 20, 30);
    text("85:03", 500, 30);

    textSize(15);
    fill(0);
    text("GOOOOL DE ARGENTINAAA!! sobre el final de el partido Argentina se", 10, 350);
    text("impone con un segundo gol para acercarse mas a la obtencion del titulo", 10, 370);

    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para CONTINUAR", 150, 390);
  } else if (NPantalla==15) {

    //Argentina capeon. Pantalla ofensiva 3

    background(255, 233, 0);
    image(Imagenes[3], 0, 0, 600, 330);
    fill(0);
    text("ARGENTINA CAMPEON DE AMERICAA!!!!", 10, 350);
    textSize(20);
    fill(255, 0, 0);
    text("Pulse enter para regresar al inicio", 150, 390);
  } else if (NPantalla==20) {

    //Creditos 

    background(0);
    image(Imagenes[13], 0, 0, 600, 330);
    textSize(30);
    text("Productor: Manuel Garmendia", 70, 370);
    textSize(15);
    text("Pulse flecha para abajo para regresar", 150, 390);
  }
}
