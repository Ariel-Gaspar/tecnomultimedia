class Arbusto{
  PImage [] arbusto= new PImage[4];
  Arbusto(){
    for (int i=0; i<4; i++){
    arbusto[i]= loadImage("arbusto.png");}
  }
  void dibujar(){
    dibujarArbusto();
  }
  void dibujarArbusto() {
    for (int i=0; i<2; i++) {
      for (int j=0; j<2; j++) {
        image(arbusto[i],i*300+200, 150+j*200);
        arbusto[i].resize(150,150);
      }
    }
  }
}
