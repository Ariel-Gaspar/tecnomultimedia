
class Juego {
  Arbusto arbusto;
  Serpiente serpiente;
  
  PImage machete;
  float x;
  int posYararaX;
  int posYararaY;
  int puntos=0, perdido=-1;
  PImage fondo;
  Juego () {
    fondo=loadImage ("fondo.jpg");
    posYararaX=100;
    posYararaY=100;
    machete= loadImage("machete_0.png");
    serpiente= new Serpiente();
    arbusto= new Arbusto();
    
  }
  void dibujar() {
    //imageMode(CORNER);
    image(fondo, 0, 0, 800, 600);
    serpiente.dibujar();
    posArbusto();
    machete.resize(150, 300);
    image(machete, mouseX, mouseY-20);

    
    puntuacionEnPantalla();
  }

  void puntuacionEnPantalla() {
    text("Puntos="+puntos,75,20);
    text("Errados="+perdido,75,40);
  }
  void matarYarara() {
    fileEffect.play();
    if (distancia()) {
      puntos++;
    } else {
      perdido++;
    }
  }
  boolean distancia() {
    return mouseX > serpiente.posYararaX && mouseX< serpiente.posYararaX+100 && mouseY > serpiente.posYararaY && mouseY < serpiente.posYararaY+50;
  }

  void posArbusto() {
    for (int i=0; i<2; i++) {
      for (int j=0; j<2; j++) {
        arbusto.dibujarArbusto(i*300+200, 150+j*200);
      }
    }
  }
  
}
