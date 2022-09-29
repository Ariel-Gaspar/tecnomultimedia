class Carrera {
  Pista pista;
  Auto principal;
  Auto contrincantes;
  int posx=100;
  int posy=-100;
  int posy2;
  int alto=100;
  int ancho=100;
  int lado;
  float colison;
  boolean afirmativoo;
  Carrera() {
    principal = new Auto(posx, 450, alto, ancho);
    pista= new Pista();
  }

  void dibujar () {
    mover();
    dibujarAuto();
    colision();
    cambioDeCarril();
    pista.dibujarPista();
    pista.dibujarCostado();
  }
  void dibujarAuto() {
    principal.dibujar();
  }

  void mover() {
    Lado();
    if (posy <height ) {

      posy=posy+5;
      contrincantes.dibujar2();
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
      contrincantes= new Auto(posx, posy, alto, ancho);
    } else if (lado==2) {
      //println("lo cree2");
      contrincantes= new Auto(posx+ancho, posy, alto, ancho);
    }
  }

  void cambioDeCarril() {
    if (colison==0) {
      if (lado==1) {
        principal.moverDerecha();
      } else if ( lado==2) {
        principal.moverIzquierda();
      }
    }
  }

  void colision() {
    colison=dist(contrincantes.posX+ancho/2, contrincantes.posY+110, principal.posX+ancho/2, principal.posY);
    //println("la colision es:"+colison);
  }
}
