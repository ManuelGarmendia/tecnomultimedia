// intro breaking bad

PFont miTipo;
PImage imagen;

String Star;
String l;
String Wars;

String mitexto;
int posY;
int pantalla = 0;
color fondodepantalla = (#000000);
float mapeado = 0;


void setup(){
  
  size(400, 400);
  posY  = height;
  textAlign(CENTER, TOP);
textSize(38);
  
    miTipo = loadFont( "Cambria-BoldItalic-48.vlw");
  
      textFont(miTipo);

imagen = loadImage("estrella de la muerte.jpg");


background(#173407);

Star = ("Star");
l = ("l");
Wars = ("Wars");



  
}



void draw(){
  
  mapeado = map(posY, 400, 0, 255, 0);
  
  if (posY >= 0 && pantalla < 6) {
    posY--;
  } 
  
  else {
    posY = height;
  }
  
  if (posY == 0) {
    pantalla++;
  }
  
  if (pantalla == 0) {
background(0);
    fill(255,204, 0, mapeado);
    textSize(48);
   text("Wars", 200, 200,255);
      text(".", random(0,400), random(0,400));

     text("Star", 200, 150);
          text(".", random(0,400), random(0,400));
     text(".", random(0,400), random(0,400));

   
   text(".", random(0,400), random(0,400));

}
  
  if (pantalla == 1) {
    fill(0, 0, 0, mapeado);
    fondodepantalla = color(#173407);
        image(imagen, 0,0, 400,400);

    

}

if (pantalla == 2) {
  
  background(#000000);
    mapeado = map(posY, 400, 0, 0, 255);

  fill(255,205, mapeado);
    textSize(48);
  
      text(".", random(0,400), random(0,400));

     text("S", mouseX, mouseY);
          text(".", random(0,400), random(0,400));
     text(".", random(0,400), random(0,400));

   text(".", mouseX, mouseY);
   text(".", random(0,400), random(0,400));
  
  
} 

else if (pantalla == 3  || pantalla == 4) {
    fill(0, 0, 0, mapeado);
    fondodepantalla = color(#173407);


    
     map(CENTER, 400, 0, 0, 255);
        fill(255);
    text("velocidad", width/2, posY);
     text("de la luz", width/2, posY+40);
     } 

if (pantalla == 5) {
  background(#000000);
    fondodepantalla = color(#000000);
     fill(255,mapeado);
    text("Created by", width/2, posY);
    text("George Walton", width/2, posY+40);

}

}
