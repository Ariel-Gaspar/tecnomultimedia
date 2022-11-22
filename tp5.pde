Principal principal;

void setup(){
  size(800,600);
  principal= new Principal();
}

void draw(){
  background(200);
  principal.dibujar();
}

void mousePressed(){
  principal.cambiarPantallaBoton();
}
