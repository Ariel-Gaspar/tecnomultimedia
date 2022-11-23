class HistoriaAlternativa{
  PImage fin; 
  PImage imagenActual;
  HistoriaAlternativa(PImage imagen){
    fin= loadImage("FIN.jpg");
    imagenActual=imagen;
  }
  
  void dibujar(){
  
  }
    
  void finalBosque(){
    image(fin,0,0);
  }
}
