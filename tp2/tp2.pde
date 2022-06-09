//    TP2 Ilusiones Optica Interactiva

//Manuel Garmendia 
//Legajo:88301/7
//https://youtu.be/2_2ZuWQ2uoQ video explicativo

void setup() {
  size(500, 500);  //define pantalla de 500 x 500
  rectMode(CENTER);  //aca lo llamo una sola vez
}

void draw() {

  //cuadrados
  for (int i=500; i>=10; i-=8) {  //primer for simple
    rectMode(CENTER);  //si no lo modifico, va en setup
    float c = map(i, 10, 500, 0, 255);  //map para definir relleno de los cuadrados
    fill(c);
    rect(250, 250, i, i);  //siempre misma posición: al centro de la pantalla
  } 

  //lineas
  for (int x=0; x<=500; x+=50) {  //segundo for anidado
    for (int y=0; y<=500; y+=50) {
      line(x, y, 250, 250);  //lineas diagonales que salen del centro
      line(x+mouseX, y+mouseY, 250, 250);  //mod con mouse
    }



    if ( key == ' ');
    {
      if (keyPressed)
        stroke(random(0, 255), random(0, 255), random(0, 255));
      if (mousePressed)
        //cuadrados
        for (int i=500; i>=10; i-=8) {  //primer for simple
          rectMode(CENTER);  //si no lo modifico, va en setup
          float c = map(i, 10, 250, 250, 250);  //map para definir relleno de los cuadrados
          fill(c);
          rect(250, 250, i, i);  //siempre misma posición: al centro de la pantalla



          stroke( 0); // reinicio de colores
        }
    }
  }
}
