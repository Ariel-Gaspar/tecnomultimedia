class Serpiente {
  float posYararaX=-100;
  float posYararaY=-100;
  PImage yarara;
  int x;
  int contador=0;
  Serpiente() {
    yarara= loadImage ("yarara.png");
  }
  void dibujar() {

    posSerpiente();
    dibujarSerpiente();
  }

  void dibujarSerpiente() {
    image(yarara, posYararaX, posYararaY);
    yarara.resize(100, 50);
  }

  void posSerpiente() {  
    if (contador==0) {  
      x=int (random(0, 4));
    }
    if (x==0) {
      contador=contador+1;
      posYararaX=220;
      posYararaY=140;
      if (contador>10) {
        contador=0;
      }
      //println(contador);
    } else if (x==1) {
      contador=contador+1;
      posYararaX=540;
      posYararaY=140;
      if (contador>20) {
        contador=0;
      }
      //println(contador);
    } else if (x==2) {
      contador=contador+1;
      posYararaX=220;
      posYararaY=340;
      if (contador>10) {
        contador=0;
      }
      //println(contador);
    } else if (x==3) {
      contador=contador+1;
      posYararaX=540;
      posYararaY=340;
      if (contador>15) {
        contador=0;
      }
      //println(contador);
    }
  }

  void moverSerpiente() {
    posYararaX=posYararaX+2;
  }
}
