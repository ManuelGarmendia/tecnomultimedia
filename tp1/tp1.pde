// intro breaking bad

PImage imagen;

String H12;
String C10;
String N144;

String mitexto;
int posY;
int pantalla = 0;
color fondodepantalla = (#173407);
float mapeado = 0;


void setup() {

  size(400, 400);
  posY  = height;
  textAlign(CENTER, TOP);
  textSize(38);


  imagen = loadImage("a1b17146ce873e2f986a822e141349b2.jpg");


  background(#173407);

  H12 = ("H12");
  C10 = ("C10");
  N144 = ("N144");
}



void draw() {

  mapeado = map(posY, 400, 0, 255, 0);

  if (posY >= 0 && pantalla < 6) {
    posY--;
  } else {
    posY = height;
  }

  if (posY == 0) {
    pantalla++;
  }

  if (pantalla == 0) {
    background(#173407);
    fill(0, 0, 0, mapeado);
    textSize(48);
    text("H12", 200, 200, 255);
    text("H12", random(0, 400), random(0, 400));

    text("C10", 200, 150);
    text("C10", random(0, 400), random(0, 400));
    text("C10", random(0, 400), random(0, 400));

    text("N144", 50, 150);
    text("N144", random(0, 400), random(0, 400));
  }

  if (pantalla == 1) {
    fill(0, 0, 0, mapeado);
    fondodepantalla = color(#173407);
    image(imagen, 0, 0, 400, 400);
  }

  if (pantalla == 2) {

    background(#173407);
    mapeado = map(posY, 400, 0, 0, 255);

    fill(255, mapeado);
    textSize(48);
    text("H12", 200, 200, 255);
    text("H12", random(0, 400), random(0, 400));

    text("C10", mouseX, mouseY);
    text("C10", random(0, 400), random(0, 400));
    text("C10", random(0, 400), random(0, 400));

    text("N144", mouseX, mouseY);
    text("N144", random(0, 400), random(0, 400));
  } else if (pantalla == 3  || pantalla == 4) {
    fill(0, 0, 0, mapeado);
    fondodepantalla = color(#173407);
    noStroke();
    fill(#B7C431);
    circle( random(0, 400), random(0, 400), 50 );

    map(CENTER, 400, 0, 0, 255);
    fill(255);
    text("Breaking Bad", width/2, height/2);
  } 

  if (pantalla == 5) {
    background(#173407);
    fondodepantalla = color(#173407);
    fill(255, mapeado);
    text("Created by", width/2, posY);
    text("Vince Gilligan", width/2, posY+40);
  }
}
