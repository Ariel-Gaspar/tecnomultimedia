class AutoContrincante {
  int posX, posY, posY2;
  PImage auto1;
  PImage auto2;
  int ancho, alto;
  AutoContrincante(int _posX, int _posY, int _alto, int _ancho) {
    posX=_posX;
    posY=_posY;
    posY2=_posY;
    alto=_alto;
    ancho=_ancho;
    auto2= loadImage("auto2.png");
  }

  void dibujar() {
    image(auto2, posX, posY, alto, ancho);
  }

  
}
