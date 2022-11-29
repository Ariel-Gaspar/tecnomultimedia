class Pantalla {
  Boton botonSiguiente;
  Boton botonDesicion;
  Boton botonSeguir;
  PImage imagenActual;
  int ancho=100, alto=40;
  Pantalla (PImage imagen) {
    imagenActual=imagen;
    botonSiguiente=new Boton(width/2, height-50, ancho, alto);
  }

  void dibujar () {
    push();
    imageMode(CENTER);
    image(imagenActual, width/2, height/2);
    //aca iria el texto de cada pantalla
    botonSiguiente.dibujarBoton("Siguiente");
    pop();
  }



  void tomarUnaDecision() {
    botonDesicion= new Boton(width/2, 50, 200, alto);
    botonDesicion.dibujarBoton("gritar mas fuerte");
    botonSiguiente.dibujarBoton("seguir");
  }
}
