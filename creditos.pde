void credits () {
  //fondo();
  image(fondo, 0, 0);
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
