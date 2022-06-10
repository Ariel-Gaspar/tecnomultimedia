void cuadros(){
  for (int y2=0;y2<height; y2=y2+120){
    for (int x=0; x<width;x=x+60){
      rect(x,y2,30,30);
      
    }   
  }
  for (int y3=60; y3< height; y3=y3+120){
    for (int x3=15; x3<width; x3=x3+60){
      rect(x3,y3,30,30);}
  }
  for (int y3=30;y3<height; y3=y3+60){ 
    for (float x2=7.5; x2<width;x2=x2+60){ 
      rect(x2,y3,30,30);
      
    }
  }


}
