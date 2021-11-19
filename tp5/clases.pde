class Penal {

  Pateador pateador;
  Arquero arquero;
  Pelota pelota;
  Arco arco;
  boolean resultadoPenal;

  Penal(Pateador pateadorPenal, Arquero arqueroPenal, Pelota pelotaPenal, Arco arcoPenal, boolean resultadoPenalPenal) {

    pateador = pateadorPenal;
    arquero= arqueroPenal;
    pelota=pelotaPenal;
    Arco= arcoPenal;
    resultadoPenal = resultadoPenalPenal;
  }
  void resultado (boolean resultado) {


    resultadoPenal= resultado;
  }
}


class Pateador {
  String nombre, piernaHabil;
  float FuerzaDeTiro;
  float X;
  float Y;
  boolean Ready;
  Pateador(String nombrePateador, String piernaDelPateador, float fuerzaDelPateador) {
    nombre = nombrePateador;
    piernaHabil = piernaDelPateador;
    FuerzaDeTiro = fuerzaDelPateador;
    X= 350;
    Y=200;
    Ready=false;
  }
  void resetear() {
    X=350;
    Y=200;
    Ready=false;
  }

  void PatearPenal() {
    if (X >= 280 && Y >= 150 ) {
      X= X-10;
      Y=Y-5;
    } else {
      Ready=true;
    }
  }
  void draw(PImage foto) {

    image(foto, X, Y, 150, 250);
    //  rect(X, Y, 100, 200);
  }
}

class Arquero {
  String Nombre;
  float Agilidad;
  float Movilidad;
  float X;
  float Y;
  Arquero(String nombreArquero, float agilidadArquero,
    float movilidadArquero) {
    Nombre = nombreArquero;
    Agilidad = agilidadArquero;
    Movilidad = movilidadArquero;
    X=270;
    Y=120;
  }
  void resetear() {
    X=270;
    Y=120;
  }
  void movimientoarquero (float velocidad, int direccion, int Color) {

    if (Color==1 || Color==2) {
      if (direccion==1 ) {
        if (X>= 180) {
          X=X-0.1*velocidad;
        }
      }
      if (direccion==2) {

        if (Y >= 100) {

          Y=Y-0.1*velocidad;
        }
      }
      if (direccion==3) {
        if (X >= 180 ) {
          X=X-0.1*velocidad;
        }
      }
    }
  }

  void draw(PImage foto) {
    image(foto, X, Y, 70, 100);
    //rect(X, Y, 50, 100);
  }
}

class Pelota {

  String modelo ;
  float tamano ;
  float peso;
  float X;
  float Y;


  Pelota(String modeloPelota, float tamanoPelota, float pesoPelota) {

    modelo=modeloPelota;
    tamano=tamanoPelota;
    peso= pesoPelota;
    X=280;
    Y=280;
  }
  void resetear() {
    X=280;
    Y=280;
  }
  boolean valorpelota (int direccion, int Color, boolean valor) {

    if (Color==1 || Color==2) {
      if (direccion==1 ) {
        if (X<= 180 && Y>=110) {print(X,Y);
          valor= true;
        }
      }
      if (direccion==2) {
        if (Y <= 120) {print(X,Y);
          valor=true;
        }
      }
      if (direccion==3) {    
        if (X>=400 && Y <=135) {
          println("X"+X+"Y"+Y);
          valor=true;
        }
      }
    } else if (Color==3) {

      if (direccion==1 ) {print(X,Y);
        if (X<= -10 && Y<= -10) {print(X,Y);
          valor=true;
        }
      }
      if (direccion==2) {

        if (Y<= -80) {print(X,Y);
          valor=true;
        }
      }
      if (direccion==3) {
        if (X>= 650 && Y>= -200) {print(X,Y);
          valor=true;
        }
      }
    }
    
    return valor ;
  }

  void Moverpelota(float velocidad, int direccion, int Color) {



    if (Color==1 || Color==2) {
      if (direccion==1 ) {
        if (X>= 180 && Y>=120) {
          X=X-0.1*velocidad;
          Y=Y-0.1*velocidad;
        }
      }
      if (direccion==2) {

        if (Y >= 120) {

          Y=Y-0.1*velocidad;
        }
      }
      if (direccion==3) {
        if (X <= 420 && Y >= 120) {
          X=X+0.1*velocidad;
          Y=Y-0.1*velocidad;
        }
      }
    } else if (Color==3) {


      if (direccion==1 ) {
        if (X>= -10 && Y>= -100) {

          X=X-0.1*velocidad;
          Y=Y-0.1*velocidad;
        }
      }
      if (direccion==2) {

        if (Y >= -80) {

          Y=Y-0.1*velocidad;
        }
      }
      if (direccion==3) {
        if (X <= 650 && Y >= -200) {
          X=X+0.1*velocidad;
          Y=Y-0.1*velocidad;
        }
      }
    }
  }

  void draw (PImage foto) {

    image(foto, X, Y, tamano, tamano);
    // ellipse(X, Y, tamano, tamano);
  }
}


class Arco {

  int Ndearco;
  float posicionX;
  float posicionY;

  float ancho;
  float alto;


  Arco(int NdearcoArco, float posicionXArco, float posicionYArco, float dimensionArco, float altodeArco) {

    Ndearco   = NdearcoArco;
    posicionX = posicionXArco;
    posicionY = posicionYArco;

    ancho= dimensionArco;
    alto= altodeArco;
  }

  void draw() {

    rect(posicionX, posicionY, ancho, alto);
  }
}
