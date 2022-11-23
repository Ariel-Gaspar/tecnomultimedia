class Menu{
  Boton botonEmpezar;
  Boton botonInstrucciones;
  Boton botonCreditos;
  int alto=40;
  int ancho=100;
  int id;
  Menu(){
    botonEmpezar= new Boton(width/2, height/2, ancho, alto);
    
    botonInstrucciones= new Boton (width/2, height/2+alto*2, ancho, alto);
    
    botonCreditos =new Boton(width/2, height/2+alto*4, ancho, alto);
    
  }
  
  void dibujar(){
    botonEmpezar.dibujarBoton("EMPEZAR");
    botonInstrucciones.dibujarBoton("INSTRUCCIONES");
    botonCreditos.dibujarBoton("CREDITOS");
    println(id);
  }
  void pantallaCreditos(){
    text("creditosxd",width/2,height/2);  
  }
  
  void pantallaInstrucciones(){
    text("mata a la serpiente",width/2,height/2);
  }
  
  void apretar(){
    if (botonEmpezar.botonPress(width/2, height/2, ancho, alto)){
      id=1;
    }else if (botonInstrucciones.botonPress(width/2, height/2+alto*2, ancho, alto)){
      id=2;
    }else if (botonCreditos.botonPress(width/2, height/2+alto*4, ancho, alto)){
      id=3;
    }
  }
}
