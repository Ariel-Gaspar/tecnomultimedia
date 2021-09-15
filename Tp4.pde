int maxImagenes=4, num=0, altobt=30, anchobt=100;
int pos2, pos1;
String [] cuento;
PImage [] imagenes= new PImage [maxImagenes];
PImage foto_inicio;
void setup (){ 
  size(500,500);
  surface.setResizable(true);
  cuento=loadStrings ("Cuento.txt");
  for(int i=0; i< imagenes.length; i++){
    imagenes[i]= loadImage(i+".jpg");
  }
  //foto_inicio= loadImage("inicio.jpg");
  pos2=450;
  pos1=355;
}
void draw (){
  
  //pantalla de inicio
  //image(foto_inicio, 0,0);
  fill(100);
  boton (pos1-305, pos2, anchobt,altobt,20);
  boton (pos1, pos2, anchobt,altobt,20);
  fill(0);
  textSize(15);
  text("Salir", pos1-300,pos2+20);
  text ("Empezar", pos1+5, pos2+20);
  
  
  
}
void boton(int x1, int y1,int x2,int y2, int borde){
  rect (x1,y1,x2,y2, borde);
}
boolean botonPressed (int mx, int my, int px, int py, int ancho, int alto){
  boolean presionado= mx > px && mx < px + ancho && my> py && my <py+alto==true;
  return presionado;
}


void mousePressed (){
  
  if (botonPressed(mouseX,mouseY, pos1, pos2, anchobt,altobt)){
    
    image(imagenes[num],0,0);
    text(cuento[num],50,350);
    
    if(num< imagenes.length-1){
      num++;
    }
   }
    
  
}
