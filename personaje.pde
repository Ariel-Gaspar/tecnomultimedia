
void menu() {
  image(fondo, 0, 0);
  fill(255);
  boton (btposX-50, btposY, anchobt, altobt, borde);
  boton (btposX-50, btposY+55, anchobt, altobt, borde);
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text("Jugar", btposX, btposY+30);
  text ("Creditos", btposX, btposY+85);
}



void personaje() {
  fill(255, 111, 0);
  balax=x3+5;
  ellipse (balax, balay, 20, 20);
  jugador.resize(100, 100);
  image (jugador, x3-50, y3);


  if (disparar==true) {
    balay=balay-10;
  }
  if (balay<0) {
    balay=750;
    disparar=false;
  }
  if  (balay<posEy+50 && balay> posEy-50 && balax < posEx+50 && balax > posEx-50) {
    posEy=0;
    posEx=random(0, 750);
    mover=true;
    puntos=puntos +1;
    
  }
}

void movimiento(){
    if (keyPressed) {
    if (key== ' ') {
      disparar=true;
    }
    if (key == CODED) {
      if (keyCode == LEFT) x3-=5;
      if (keyCode == RIGHT) x3+=5;
    }
  }
}


void nivel1() {
  image(fondo, 0, 0);
  enemigos();
  personaje();
}
