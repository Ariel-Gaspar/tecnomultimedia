class Pantalla{
  Boton botonSiguiente;
  Boton botonDesicion;
  Boton botonSeguir;
  PImage imagenActual;
  //int pantallaID;
  int ancho=100,alto=40;
  Pantalla (PImage imagen){
    imagenActual=imagen;
    botonSiguiente=new Boton(width/2,height-50,ancho,alto);
  }
  
  void dibujar (){
    image(imagenActual,0,0);
    //aca iria el texto de cada pantalla
    botonSiguiente.dibujarBoton("Siguiente");
    
  }
      
  /*void numPantalla(){
    pantallaID++;
  }*/
  
  void tomarUnaDecision(){
      botonDesicion= new Boton(width/2,50,ancho,alto);
      botonDesicion.dibujarBoton("gritar mas fuerte");
      botonSiguiente.dibujarBoton("seguir");
  }
}
