class Pista {
  int y;
  PImage [] costado= new PImage [6];
  Pista() {
    for (int i=0;i < 6; i++ ){
      costado [i]= loadImage("costado.png");
    }
  }
  void dibujarPista() {
    noFill();
    rectMode(CORNER);
    rect(100, -1, 200, 601);
  }
  
  void dibujarCostado(){
    for (int i=0;i < 6; i++ ){
      y=i*100;
      image(costado[i],50,y);
      image(costado[i],270,y);
      
    }
    
  
  }
  
  
}
