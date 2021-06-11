// Introduccion de star wars

// Titulo
PFont miLetra;




float T = height;
float S = 4.5;





// imagen fondo fondo
PImage estrellaD ;
float tamstar;

void setup() {
  size (400, 400);

  textSize(100);

  //cargo tipografia de imagenes:

  imageMode( CENTER);
  miLetra = loadFont( "Swiss721BT-BoldOutline-48.vlw" );
  estrellaD = loadImage("estrella de la muerte.jpg");

  //DETALLES TEXTO
  textFont( miLetra );
  textAlign ( CENTER, CENTER);

  //variables de inicio
 
  tamstar = 70;
}

void draw () {
  background(0, 0, 0);

  fill(230, 230, 100);
  textSize(50);


  //imagen
  image( estrellaD, tamstar, 80, 240, 135);

  //variables actualizadas

  tamstar = tamstar -0.5;

  //PRUEBA
  T = T -19.5;
  S = S - 4.1;
  frameRate(5);
  textSize(100 + S );
  text("Star Wars", width/2, height + T);
  
  
}
