class Back{
  PImage fondo;
  Back(){
    fondo= loadImage("fondo.jpg");
  }
  void dibujarFondo() {
    image(fondo, 0,0);
    fondo.resize(800, 600);
  }
}
