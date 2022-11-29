class PantallaFinal {
  String texto;
  Boton botonReiniciar;
  int ancho=100, alto=40;
  PFont fuente;
  int x=width/2;
  int y=height/2;
  PantallaFinal() {
    fuente=createFont ("Comic-ink.ttf", 1);
    textFont(fuente);
    texto="fin \n Cuento: A la deriva \n Gracias por leer y jugar!";
    botonReiniciar=new Boton(x, y, ancho, alto);
  }

  void dibujar() {
    textAlign(CENTER);
    text(texto,x, 100);
    botonReiniciar.dibujarBoton("Reiniciar");
  }
}
