class Juego {
  Arbusto arbusto;
  Serpiente serpiente;
  Back fondo;
  PImage machete;
  float x;
  int posYararaX;
  int posYararaY;
  int puntos=0, perdido=0;
  Juego () {
    posYararaX=100;
    posYararaY=100;
    machete= loadImage("machete_0.png");
    serpiente= new Serpiente();
    arbusto= new Arbusto();
    fondo = new Back();
  }
  void dibujar() {
    imageMode(CORNER);
    fondo.dibujarFondo();
    serpiente.dibujar();
    arbusto.dibujarArbusto();
    machete.resize(150,300);
    image(machete, mouseX, mouseY-20);
    
    println("mato="+puntos+"perdio"+perdido);
    ganarPerder();
   // println("distancia=  "+x);
  }
  
  void ganarPerder(){
    if (puntos == 5){
      text("ganaste",width/2,height/2);
    }else if(perdido==10) {
      text("perdiste",width/2,height/2);
    }
    
  }
  void matarYarara(){
    
    if (distancia()){
      puntos++;
    }else {
      perdido++;
    }
  }
  boolean distancia(){
    return mouseX > serpiente.posYararaX && mouseX< serpiente.posYararaX+100 && mouseY > serpiente.posYararaY && mouseY < serpiente.posYararaY+50;
  }
  
  /*void machete(){
    machete.sonidoMachete();
  }*/
}
