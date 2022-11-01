class Juego{
  Fondo fondo;
  Serpiente serpiente;
  Machete machete;
  float x;
  int PosYararaX;
  int PosYararaY;
  Juego () {
    PosYararaX=100;
    PosYararaY=100;
    machete= new Machete();
    serpiente= new Serpiente();
    fondo = new Fondo();
  }
  void dibujar() {
    fondo.dibujarFondo(); 
    serpiente.dibujar();
  }

}
