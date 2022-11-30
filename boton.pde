class Boton {
  int bx, by, ancho, alto; // ubicacion y tamaño
  // 
  String texto;
  Boton(int bx, int by, int ancho, int alto) {
    this.bx = bx-50;
    this.by = by;
    this.ancho = ancho;
    this.alto = alto;
    textAlign(CENTER, CENTER);
    textSize(alto/2);
  }
  void dibujarBoton(String texto) {
    push();
    this.texto = texto;
    fill(237,131,0);
    stroke(0);
    rect(bx, by, ancho, alto,10);
    fill(0); 
    text(texto, bx+ancho/2, by+alto/2);
    pop();
  }
  boolean botonPress(int bx, int by, int ancho, int alto) {
    return mouseX>bx-50 && mouseX<bx+ancho && mouseY>by && mouseY<by+alto;
  }
}
