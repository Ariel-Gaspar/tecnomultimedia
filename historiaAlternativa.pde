class HistoriaAlternativa {
  PImage fin; 
  Boton botonSiguiente;
  Boton botonReiniciar;
  PImage imagenActual;
  int ancho=100, alto=40;
  String texto1, texto2;
  int x=width/2, y=height/2;
  HistoriaAlternativa(PImage imagen) {
    fin= loadImage("FIN.jpg");
    imagenActual=imagen;

    botonSiguiente=new Boton(x, height-50, ancho, alto);
    botonReiniciar=new Boton(x, height-50, ancho, alto);
  }

  void dibujar() {
    image(imagenActual, 0, 0);

    botonSiguiente.dibujarBoton("Siguiente");
  }

  void dibujarTexto(String textoArriba, String textoAbajo) {
    push();
    fill(0);
    textAlign(CORNER);
    texto1=textoArriba;
    text(textoArriba, 60, 450);
    texto2=textoAbajo;
    text(textoAbajo, 60, 500);
    pop();
  }

  void finalBosque() {

    botonReiniciar.dibujarBoton("reiniciar");
    image(fin, 0, 0);
  }
}
