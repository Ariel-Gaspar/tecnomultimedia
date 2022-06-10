int tam, y, x3;
float x2;
void setup (){
  background(255);
  size (420,240);
  tam=height;
  y=30;
  x3=15;
  mouseX=width/2;
  mouseY=height/2;
}
void draw(){
  stroke(100);
  fill(0);  
  for (int i=0;i<7; i++){
    line(0,y,420,y);
    y=y+30;
  }
  
  float d= dist (width/2, height/2, mouseX, mouseY);
  fill(d);
  cuadros();
   
}
