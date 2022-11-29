/*
  Ariel Gaspar 
 Legajo 85194/0
 Profesor Leonardo Garay
 Comision 4
 https://www.youtube.com/watch?v=r_aZwhfHBWk
 */
import processing.sound.*;
Principal principal;
SoundFile fileEffect;
void setup() {
  size(800, 600);
  principal= new Principal();
  fileEffect = new SoundFile(this, "machete_sonido.mp3");
}

void draw() {
  background(0);
  principal.dibujar();
}

void mousePressed() {
  principal.cambiarPantallaBoton();
}
