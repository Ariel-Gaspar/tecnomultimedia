class Boton{
  int bx, by, ancho, alto; // ubicacion y tamaño
   // 
  String texto;
  Boton(int bx, int by, int ancho, int alto) {
    this.bx = bx;
    this.by = by;
    this.ancho = ancho;
    this.alto = alto;
    textAlign(CENTER, CENTER);
    textSize(alto/2);
  }
  void dibujarBoton(String texto) {
    
    this.texto = texto;
    fill(0, 0, 255);
    rect(bx, by, ancho, alto);
    fill(255); 
    text(texto, bx+ancho/2, by+alto/2);
  }
  boolean botonPress(int bx, int by, int ancho, int alto) {
    return mouseX>bx && mouseX<bx+ancho && mouseY>by && mouseY<by+alto;
  }
}
