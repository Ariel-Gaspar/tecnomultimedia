class Menu {
  Boton botonEmpezar;
  Boton botonInstrucciones;
  Boton botonCreditos;
  Boton botonAtras;
  PImage fondo;
  int alto=40;
  int ancho=150;
  int id=0;
  String textCredits;
  int x=width/2, y=850, y2=height/2;
  Menu() {
    fondo= loadImage("fondo_menu.jpg");
    botonEmpezar= new Boton(x-50, y2, ancho, alto);
    botonInstrucciones= new Boton (x-50, y2+alto*2, 200, alto);
    botonCreditos =new Boton(x-50, y2+alto*4, ancho, alto);
    
    botonAtras= new Boton(x, y2+alto*4, ancho, alto);
    textCredits="TP N°3 \n Alumno..........Gaspar Ariel \n Legajo..........85194/0 \n Cuento: A la deriva \n Gracias por leer y jugar!";
  }

  void dibujar() {
    println("mouseX:"+mouseX);
    println("mouseY:"+mouseY);
    image(fondo, 200, 0, 400, 600);
    botonEmpezar.dibujarBoton("EMPEZAR");
    botonInstrucciones.dibujarBoton("INSTRUCCIONES");
    botonCreditos.dibujarBoton("CREDITOS");
  }

  void pantallaCreditos() {

    posCredito();
    text(textCredits, x, y);
    botonAtras.dibujarBoton("atras");
  }

  void posCredito() {
    if (y>=300) {
      y--;
    }
  }

  void pantallaInstrucciones() {

    botonAtras.dibujarBoton("atras");
    push();
    textSize(15);
    text("Sigue la historia de un hombre que fue mordido por una Yararacusu, \n elige bien para ver si se salva o sucumbira en el fondo de la amazona. \n \n Juega un minijuego donde tendras que matar a la yarara en un limite de intentos, \n si no lo logras tendras un horrible final", width/2, height/2);
    pop();
  }

  void apretar() {
    if (botonEmpezar.botonPress(x-50, y2, ancho, alto)) {
      id=1;
    }
    if (botonInstrucciones.botonPress(x-50, y2+alto*2, 200, alto)) {
      id=2;
    }
    if (botonCreditos.botonPress(x-50, y2+alto*4, ancho, alto)) {
      id=3;
    }
    
  }
}
