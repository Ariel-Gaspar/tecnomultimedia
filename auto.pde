class Auto {
  int posX, posY, posY2;
  PImage auto1;
  PImage auto2;
  int ancho, alto;
  Auto(int _posX, int _posY, int _alto, int _ancho) {
    posX=_posX;
    posY=_posY;
    posY2=_posY;
    alto=_alto;
    ancho=_ancho;
    auto1 = loadImage("auto.png");
  }

  void dibujar() {
    image(auto1, posX, posY, alto, ancho);
  }

  void moverDerecha() {
    posX=posX+ancho;
  }
  void moverIzquierda() {
    posX=posX-ancho;
  }
}
