class Fondo{
  PImage fondo;
  PImage arbusto;
  Fondo(){
    fondo= loadImage("fondo.jpg");
  
  }
  void dibujarFondo(){
    image(fondo, 0, 0);
    fondo.resize(500, 500);
  }
  void dibujarArbusto(){
    
  }
}
