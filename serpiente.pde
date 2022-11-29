class Serpiente {
  float[] posYararaX=new float [2];
  float[] posYararaY=new float[2];
  PImage yarara;
  int x, y;
  int contador=0;
  Serpiente() {
    yarara= loadImage ("yarara.png");
  }
  void dibujar() {
    posSerpiente();
    dibujarSerpiente();
  }

  void dibujarSerpiente() {
    if (contador==0) {  
      x=int (random(0, 2));
      y= int (random (0, 2));
    } 
    image(yarara, posYararaX[x], posYararaY[y], 100, 50);
    contador++;
    if (contador > 20) {
      contador =0;
    }
  }
  void posSerpiente() {
    for (int i=0; i<2; i++) {
      for (int j=0; j<2; j++) {
        posYararaX[i]=i*300+200;
        posYararaY[j]=150+j*200;
      }
    }
  }
  boolean distancia() {
    return mouseX > posYararaX[x] && mouseX< posYararaX[x]+100 && mouseY > posYararaY[y] && mouseY < posYararaY[y]+50;
  }
}
