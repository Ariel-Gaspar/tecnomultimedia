class PantallaFinal{
  String texto;
  Boton botonReiniciar;
  int ancho=100,alto=40;
  PFont fuente;
  
  PantallaFinal(){
    fuente=createFont ("Comic-ink.ttf",1);
    textFont(fuente);
    texto="fin";
    botonReiniciar=new Boton(width/2,height/2,ancho,alto);
  }
  
  void dibujar(){
    textAlign(CENTER);
    text(texto,width/2,100);
    botonReiniciar.dibujarBoton("Reiniciar");
  }
  
  
}
