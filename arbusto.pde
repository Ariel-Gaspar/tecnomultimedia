
class Arbusto {
  PImage arbusto;
  int posX, posY;
  Arbusto() {
    arbusto= loadImage("arbusto.png");
  }

  void dibujarArbusto(int _posX, int _posY) {
    posX=_posX;
    posY=_posY;
    image(arbusto, posX, posY);
  }
}
