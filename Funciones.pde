void fondo () {

  image(imagenes[5], 0, 0);
  int ast= int (random (0, 2));
  int tam= int (random (250, 300));
  float ubiX= random (0, 700);
  float ubiY= random (0, 700);
  imagenes[ast].resize(tam, tam);
  image(imagenes[ast], ubiX, ubiY);
}

void menu() {
  //fondo();
  image(imagenes[5], 0, 0);
  fill(255);
  boton (btposX-50, btposY, anchobt, altobt, borde);
  boton (btposX-50, btposY+55, anchobt, altobt, borde);
  textSize(20);
  textAlign(CENTER);
  fill(0);
  text("Jugar", btposX, btposY+30);
  text ("Creditos", btposX, btposY+85);
}

void credits () {
  //fondo();
  image(imagenes[5], 0, 0);
  opacidad= map (crY, height/2, height, 255, 0);
  fill(opacidad);
  textSize(20);
  textAlign(CENTER);
  logo.resize(100, 100);
  image(logo, width/2-50, crY);
  text(textCredits, width/2, crY+150);
  if (crY>=300) {
    crY--;
  } else { 
    fill(255);
    boton(btposX-50, btposY+300, anchobt, altobt, borde);
    textSize(20);
    textAlign(CENTER);
    fill(0);
    text("Menú", btposX, btposY+325);
  }
}

void personaje() {
  fill(255, 111, 0);
  balax=x3+5;
  ellipse (balax, balay, 20, 20);
  imagenes[3].resize(100, 100);
  image (imagenes[3], x3-50, y3);

  if (keyPressed) {
    if (key== ' ') {
      disparar=true;
    }
    if (key == CODED) {
      if (keyCode == LEFT) x3-=5;
      if (keyCode == RIGHT) x3+=5;
    }
  }
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
  }
}

void crearEnemigo() {
  image(imagenes[4], posEx, posEy);
  if (posEy>800) {
    posEy=0;
    posEx= random (0, 750);
    mover=true;
  }
}

void enemigos () {
  if (mover==true) {
    posEy=posEy+4;
  }
  crearEnemigo();
  if (posEy < y3+50 && posEy > y3-50 && posEx < x3+50 && posEx> x3-50){
    mover=false;
    text("PERDISTE",width/2, height/2);
  }
}

void nivel1() {
  image(imagenes[5], 0, 0);
  enemigos();
  personaje();
}

void mousePressed () {
  if (habilitado && botonPressed(mouseX, mouseY, width/2-50, height/2+55, anchobt, altobt)) {
    pantalla=2;
    habilitado=true;
    crY=850;
  }
  if (habilitado && botonPressed(mouseX, mouseY, btposX-50, btposY+300, anchobt, altobt)) {
    pantalla=1;
    habilitado=true;
  }
  if (habilitado && botonPressed(mouseX, mouseY, btposX-50, btposY, anchobt, altobt)) {
    pantalla=3;
    habilitado=false;
  }
}

void boton(int x1, int y1, int x2, int y2, int borde) {
  rect (x1, y1, x2, y2, borde);
}
boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado=mx>px && mx<px+ancho && my>py && my<py+alto==true;
  return presionado;
}
