


Pateador Messi=new Pateador("Messi", "izq", 95);
Pelota Adidas=new Pelota ("Adidas", 50, 40 );
Arquero Casillas=new Arquero ("Casillas", 90, 90);
Arco Arco= new Arco (1, 115, 50, 370, 130);
Penal penal= new Penal (Messi, Casillas, Adidas, Arco, false);
int pantallaActual;
PImage [] Imagenes;
float PotenciaDeTiro;
boolean Sentido;
boolean patear;
int Direcciondetiro;
boolean stop;
boolean pateopelota;
void setup() {
  stop = false;
  PotenciaDeTiro=0;
  patear=false;
  pateopelota = false;
  Sentido=false;
  Imagenes=new PImage[4];
  for (int i =0; i < Imagenes.length; i++) {
    Imagenes[i]=loadImage(i+".png");
  }
  pantallaActual=0;
  size(600, 400);
}
void draw() {

  print(pantallaActual);
  ActualizarPantalla(pantallaActual);
  //Arco.draw();
  if (pantallaActual==0 ) {
    Casillas.draw(Imagenes[1]);
    Adidas.draw(Imagenes[3]);
    Messi.draw(Imagenes[02]);

    Barraespaciadora();
    if (patear) {
      Messi.PatearPenal();
    }
    if (Messi.Ready) {
      PatearPelota();
    }
    if (pateopelota== true) {
      pantallaActual=1;
    }
  }
}
void PatearPelota() {

  //barra amarilla
  if ( PotenciaDeTiro >= 0 && PotenciaDeTiro <= 130 ) {
    Adidas.Moverpelota (PotenciaDeTiro, Direcciondetiro, 1);
    Casillas.movimientoarquero(PotenciaDeTiro, Direcciondetiro, 1);
    pateopelota=Adidas.valorpelota(Direcciondetiro, 1, pateopelota) ;
    if (Direcciondetiro==3) {
      if ( pateopelota) {
        penal.resultado (true);
        textSize(60);
        text("Gooooool", 200, 250);
        pantallaActual=1;
         textSize(40);
        text("pulsa ENTER para continuar", 20, 300);
      }
    } else if (Direcciondetiro==1||Direcciondetiro==2)
    {
      if ( pateopelota) {
        penal.resultado (false);
        textSize(60);
        text("Penal atajado", 100, 250);
        pantallaActual=1;
         textSize(40);
        text("pulsa ENTER para continuar", 20, 300);
      }
    }
  }
  //barra verde
  else if (PotenciaDeTiro >= 130 && PotenciaDeTiro<= 370) {
    Adidas.Moverpelota (PotenciaDeTiro, Direcciondetiro, 2);
    Casillas.movimientoarquero(PotenciaDeTiro, Direcciondetiro, 2);
    pateopelota=Adidas.valorpelota(Direcciondetiro, 2, pateopelota) ;
    if (Direcciondetiro==3) {
      if ( pateopelota) {
        penal.resultado (true);
        textSize(60);
        text("Gooooool", 200, 250);
        pantallaActual=1;
         textSize(40);
        text("pulsa ENTER para continuar", 20, 300);
      }
    }else if (Direcciondetiro==1||Direcciondetiro==2)
    {
      if ( pateopelota) {
        penal.resultado (false);
        textSize(60);
        text("Penal atajado", 100, 250);
        pantallaActual=1;
         textSize(40);
        text("pulsa ENTER para continuar", 20, 300);
      }
    }
  }

  //barra de tiro roja
  else if (PotenciaDeTiro >= 370 && PotenciaDeTiro<=500) {
    Adidas.Moverpelota (PotenciaDeTiro, Direcciondetiro, 3);
    Casillas.movimientoarquero(PotenciaDeTiro, Direcciondetiro, 3);
    pateopelota=Adidas.valorpelota(Direcciondetiro, 3, pateopelota);
    if ( pateopelota) {
      penal.resultado (false);
      textSize(60);
      text("Erras el penal!!!!", 100, 250);
      pantallaActual=1;
       textSize(40);
      text("pulsa ENTER para continuar", 20, 300);
    }
  }
}

void Barraespaciadora()
{
  //Barra Verde
  fill(0, 255, 2);
  rect (50, 340, 500, 30);
  //Barra AmARILLA
  fill(255, 233, 0);
  rect (50, 340, 130, 30);
  //Barra ROJA
  fill(255, 0, 0);
  rect (430, 340, 130, 30);



  fill(0, 0, 255);
  rect (50, 340, PotenciaDeTiro, 30);

  if (patear==false) {

    if (PotenciaDeTiro < 500 && Sentido==false ) {
      PotenciaDeTiro=PotenciaDeTiro+10;
    } else {
      if (PotenciaDeTiro==500) {
        Sentido=true;
      }
    }
    if (PotenciaDeTiro>0 && Sentido==true) {
      PotenciaDeTiro=PotenciaDeTiro-10;
    } else if (PotenciaDeTiro==0) {
      Sentido=false;
    }
  }
}



//juego penales

//MIENTRAS LA TECLA APRETADA SEA Enter

void keyPressed () {
  if (keyCode== ENTER ) {

    patear=true;

    println(PotenciaDeTiro);
  }
  if (keyCode== LEFT && stop==false) {
    stop=true;

    Direcciondetiro=1;
  }
  if (keyCode== UP && stop==false ) {
    stop=true;

    Direcciondetiro=2;
  }
  if (keyCode== RIGHT && stop==false) {
    stop=true;

    Direcciondetiro=3;
  }
  if (pantallaActual==1 && keyCode== ENTER) {
    pantallaActual=2;
  }
  if (pantallaActual==2 && keyCode== ENTER) {
    Direcciondetiro=(0);
    Messi.resetear();
    Casillas.resetear();
    Adidas.resetear();
    pantallaActual=0;
    patear=false;
    pateopelota=false;
    stop = false;
  }
}
