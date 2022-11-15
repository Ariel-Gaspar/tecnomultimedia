class Pantalla1{
  int cant=13;
  int imagenActual=0;
  PImage [] historia= new PImage[cant];
  Pantalla1 (){
    for (int i=0; i< cant; i++){
      historia[i]= loadImage(i+".jpg");
    }
  }
  
  void dibujar(){
    imageMode(CENTER);
    image(historia[imagenActual],width/2,height/2);
    if (imagenActual== 2 || imagenActual== 3){
      historia[imagenActual].resize(400,400);
    }else{
      historia[imagenActual].resize(700,500);}
  }
  }
  
