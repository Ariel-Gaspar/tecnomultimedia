class Principal {
  Boton botonSiguiente;
  Boton botonSiguiente2;
  int numPantalla=0;
  int botonX=width/2, botonY=0;
  int alto=40, ancho=100;
  Juego juego;
  int pantallaID=1;
  Pantalla1 pantalla1,pantalla2;
  Principal() {
    pantalla1= new Pantalla1();
    juego= new Juego();
  }
  void dibujar() {
    if (pantallaID==1){
      println(pantalla1.imagenActual);
      if (pantalla1.imagenActual<pantalla1.cant) {
        botonSiguiente = new Boton(botonX, botonY, ancho, alto);
        botonSiguiente.dibujarBoton("siguiente0");
        pantalla1.dibujar();
      }
    }else if (pantallaID==2){
        println("llegue");
        juego.dibujar();
      }
  }


  void cambiarImagen() {
    //
    if (botonSiguiente.botonPress(botonX, botonY, ancho, alto)) {
      pantalla1.imagenActual++;
      if (pantalla1.imagenActual==2){
        pantallaID=2;
      }
    }else{ 
      juego.matarYarara();
      if(juego.puntos== 5) {
        pantallaID=1;
      }
    }
    
  }
}
