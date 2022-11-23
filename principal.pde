class Principal {
  int pantallaActual=0;
  int botonX=width/2, botonY=0;
  Juego juego;
  int cant=12;
  int index=0;
  HistoriaAlternativa [] pantalla2= new HistoriaAlternativa[3];
  PImage [] historiaAlternativa= new PImage[3];
  PImage[] imagen= new PImage[cant];
  Pantalla [] pantalla= new Pantalla[cant];
  Menu menu;
  Principal() {
    for (int i=0; i<3;i++){
      historiaAlternativa[i]=loadImage("0_"+i+".jpg");
      pantalla2[i]= new HistoriaAlternativa(historiaAlternativa[i]);
    }
    
    menu= new Menu();
    for (int i=0; i<12; i++) {
      imagen[i]=loadImage(i+".jpg");
      pantalla[i]= new Pantalla(imagen[i]);
    }
    juego= new Juego();
  }
  void dibujar() {
    cambiarPantalla();
  }
  void cambiarPantalla(){
    if (pantallaActual==0) {
      menu.dibujar();
    } else if (pantallaActual==1) {
      pantalla[index].dibujar();
      if (index==9) {
        pantalla[index].tomarUnaDecision();
      }
    } else if (pantallaActual==2) {
      menu.pantallaInstrucciones();
    } else if (pantallaActual==3) {
      menu.pantallaCreditos();
    } else if (pantallaActual==4) {
      juego.dibujar();
    } else if (pantallaActual==5){
      pantalla2[index].finalBosque();
    }else if (pantallaActual==6){
      pantalla2[index].dibujar();
    }
  }
  void cambiarPantallaBoton() {
    
    if (pantallaActual==0) {
      menu.apretar();
      pantallaActual=menu.id;
    }

    if (pantallaActual==1) {
      if (pantalla[index].botonSiguiente.botonPress(width/2, height-50, 100, 40)) {
        index++;
        println(index);
      }
      /*if (index==9){
        if (pantalla[index].botonDesicion.botonPress(width/2,50, 100, 40)) {
          index=0;
          pantallaActual=6;
        }
      }*/ //esto es para que se muestre la historia alternativa que no me estaria saliendo
      if (index==2) {
        pantallaActual=4; 
      } 
    }
    
    if (pantallaActual==4){
      juego.matarYarara();
    if (juego.puntos==5) {
       pantallaActual=1;
     }else if (juego.perdido==10){
       pantallaActual=5;
     }
    }
  }
}
