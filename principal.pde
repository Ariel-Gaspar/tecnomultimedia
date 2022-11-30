class Principal {
  int pantallaActual=0;
  int botonX=width/2, botonY=0;
  int ancho=100, alto=40;
  Juego juego;
  int cant=12;
  int index=0;
  int botonx=width/2;
  String [] texto;
  int indexTexto=1;
  HistoriaAlternativa [] historiaAlternativa= new HistoriaAlternativa[3];
  PImage [] historiaAlternativaImagen= new PImage[3];
  PImage[] imagen= new PImage[cant];
  Pantalla [] pantalla= new Pantalla[cant];
  PantallaFinal pantallaFinal;
  Menu menu;
  Principal() {
    texto= loadStrings ("texto.txt");
    pantallaFinal= new PantallaFinal();
    for (int i=0; i<3; i++) {
      historiaAlternativaImagen[i]=loadImage("0_"+i+".jpg");
      historiaAlternativa[i]= new HistoriaAlternativa(historiaAlternativaImagen[i]);
    }

    menu= new Menu();
    for (int i=0; i<cant; i++) {
      imagen[i]=loadImage(i+".jpg");
      pantalla[i]= new Pantalla(imagen[i]);
    }
    juego= new Juego();
  }
  void dibujar() {
    println(juego.puntos);
    cambiarPantalla();
  }
  void cambiarPantalla() {
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
    } else if (pantallaActual==5) {
      historiaAlternativa[index].finalBosque();
    } else if (pantallaActual==6) {

      historiaAlternativa[index].dibujar();
      historiaAlternativa[index].dibujarTexto(texto[indexTexto-1], texto[indexTexto]);
    } else if (pantallaActual==7) {
      pantallaFinal.dibujar();
    }
  }
  void cambiarPantallaBoton() {

    if (pantallaActual==0) {
      menu.apretar();
      pantallaActual=menu.id;
    }

    if (pantallaActual==1) {
      if (pantalla[index].botonSiguiente.botonPress(botonx, height-50, ancho, alto)) {
        index++;
      } else if (index==9) {
        if (pantalla[index].botonDesicion.botonPress(botonx, 50, ancho, alto)) {
          pantallaActual=6;
          index=0;
        }
      }
      if (index==pantalla.length) {
        pantallaActual=7;
      }
      if (index==2) {
        pantallaActual=4;
      }
    }
    if (pantallaActual==2) {
      if (menu.botonAtras.botonPress(width/2, height/2+alto*4, ancho, alto)) {
        pantallaActual=0;
        menu.id=pantallaActual;
      }
    }
    if (pantallaActual==3) {
      if (menu.botonAtras.botonPress(width/2, height/2+alto*4, ancho, alto)) {
        pantallaActual=0;
        menu.id=pantallaActual;
        menu.y=850;
      }
    }
    if (pantallaActual==4) {
      juego.matarYarara();
      if (juego.puntos==5 || juego.puntos>5) {
        pantallaActual=1;
        fileEffect.stop();
      } else if (juego.perdido==10) {
        pantallaActual=5;
      }
    }
    if (pantallaActual==6) {

      if (historiaAlternativa[index].botonSiguiente.botonPress(botonx, height-50, ancho, alto)) {
        index++;
        indexTexto=indexTexto+2;
      }
      if (index==historiaAlternativa.length) {
        pantallaActual=7;
      }
    }
    if (pantallaActual==7) {
      if (pantallaFinal.botonReiniciar.botonPress(botonx, height/2, ancho, alto)) {
        pantallaActual=0;
        index=0;
        indexTexto=1;
        juego.puntos=0;
        juego.perdido=-1;
        menu.y=850;
      }
    }
    if (pantallaActual==5) {
      if (historiaAlternativa[index].botonReiniciar.botonPress(botonx, height-50, ancho, alto)) {
        pantallaActual=7;
        index=0;
        indexTexto=1;
        juego.puntos=0;
        juego.perdido=-1;
        menu.y=850;
      }
    }
  }
}
