class Carrera {
  Pista pista;
  Auto AutoPrincipal;
  AutoContrincante Auto_Enemigo;
  int posx=100;
  int posy=-100;
  int alto=100;
  int ancho=100;
  int lado;
  float colison;
  Carrera() {
    AutoPrincipal = new Auto(posx, 450, alto, ancho);
    pista= new Pista();
  }

  void dibujar () {
    AutoPrincipal.dibujar();
    acciones();
    pista.dibujar();
  }

  void acciones() {
    mover();
    colision();
    cambioDeCarril();
  }
  void mover() {
    Lado();
    if (posy<height ) {

      posy=posy+5;
      Auto_Enemigo.dibujar();
      //println(posy);
      if (posy+alto>height) {
        Lado();
        posy=-100;
      }
    }
  }

  void Lado() {
    if (posy==-100) {
      lado=int (random(1, 3));
      //println(lado);
    }
    if (lado==1) {
      //println("lo cree1");
      Auto_Enemigo= new AutoContrincante(posx, posy, alto, ancho);
    } else if (lado==2) {
      //println("lo cree2");
      Auto_Enemigo= new AutoContrincante(posx+ancho, posy, alto, ancho);
    }
  }

  void cambioDeCarril() {
    if (colison==0) {
      if (lado==1) {
        AutoPrincipal.moverDerecha();
      } else if ( lado==2) {
        AutoPrincipal.moverIzquierda();
      }
    }
  }

  void colision() {
    colison=dist(Auto_Enemigo.posX+ancho/2, Auto_Enemigo.posY+110, AutoPrincipal.posX+ancho/2, AutoPrincipal.posY);
    //println("la colision es:"+colison);
  }
}
