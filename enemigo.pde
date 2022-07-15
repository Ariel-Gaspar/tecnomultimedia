void crearEnemigo() {
        image(enemigo, posEx, posEy );
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
    text("PERDISTE \n Tu puntacion es: "+puntos,width/2, height/2);
    
  }
  
}
