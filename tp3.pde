//Gaspar Ariel
//Comision 1 de 08hs a 10hs
//Profesor: José Luis Bugiolachi
//link: https://www.youtube.com/watch?v=EtAtwMm-gfw



int posX,posY, cant=50;
void setup(){
  size(500,500);
  surface.setResizable(true);
  background(0);
  mouseX=width/2;
  mouseY=height/2;
}
void draw(){
  colorMode(HSB, width,100,100);
  for (int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      
      posX=i*width/cant-1;
      posY=j*height/cant-1;
      float tono= map (i*j,0,width-1,0,255);
      float distancia= dist(mouseX,mouseY, posX,posY);
      stroke(tono,tono,tono);
      if (key=='Q'|| key=='q'){
       
       stroke(distancia);
       
      }   
      if (key=='W'|| key=='w'){
       
       stroke(distancia,tono,tono);
       
      }
      if(key=='e' || key=='E'){
        stroke (tono,tono,tono);}
      line(posX, posY,width,height);
        
    }
  }
  
  
  }
void mousePressed(){
  mouseX=width/2;
  mouseY=height/2;
 
}
