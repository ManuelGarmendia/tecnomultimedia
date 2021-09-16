//https://youtu.be/-EqfBLK3B64

int pantallaActual;

PImage [] Imagenes;
void setup() {
  Imagenes=new PImage[16];
  for (int i =0; i < Imagenes.length; i++) {
    Imagenes[i]=loadImage(i+".jpg");
  }  
  pantallaActual=0;
  size(600, 400);
}
void draw () {

  println(devolverpantallaActual());
  ActualizarPantalla(pantallaActual);
}

void keyPressed () {

  if (keyCode == ENTER ) {
    println("ENTER");
    if ((pantallaActual!=2)&& (pantallaActual!=6)){
      Cambiodepantalla(pantallaActual);
      fill(225);
      if ((pantallaActual==9)||(pantallaActual==11)|| (pantallaActual==13 )||(pantallaActual==16) ) { 
        pantallaActual=0;
        Cambiodepantalla (pantallaActual-1);
      }
    }
  } else if (keyCode==UP) {
    if (pantallaActual== 0) {
      Cambiodepantalla(19);
    }
  } else if (keyCode==DOWN) {
    if (pantallaActual== 20) {
      Cambiodepantalla(-1);
    }
  }
}
void mouseClicked() {
  if (pantallaActual==2) {
    if ((mouseX >=0 && mouseX <=200) && (mouseY>= 0 && mouseY<=400)) {
      print("defensiva 1");
      Cambiodepantalla(pantallaActual);
    } else if  
      ((mouseX >=200 && mouseX <=400) && (mouseY>= 0 && mouseY<=400)) {
      print("equilibrada 2");
      pantallaActual=10 ;
      Cambiodepantalla(pantallaActual);
    } else {
      print("ofensiva 3");
      pantallaActual=12 ;
      Cambiodepantalla(pantallaActual);
    }
  }
  if (pantallaActual==6) {
    print("PANTALLA 6");
    if ((mouseX >=150 && mouseX <=200) && (mouseY>= 60 && mouseY<=110)) {
      print("Izquierda");
      Cambiodepantalla(pantallaActual);
    } else if   ((mouseX >=300 && mouseX <=350) && (mouseY>= 60 && mouseY<=110)) {
      print("Derecha");
      Cambiodepantalla(pantallaActual+2);
    }
  }
}
