float r1,r2,r3,r4;
PImage titulo, disney, perdita, pongo;
int y,l,c, y2, x1, y3,y4;
String actor1, actor2, director, musica, musica2,director2;
PFont font, font2;
void setup(){
size (700,500);
background (255);
titulo= loadImage("scale.png");
disney= loadImage("disney.jpg");
perdita=loadImage("edit1.png");
pongo=loadImage("edit2.png");
disney.resize(700,500);
font=loadFont ("BellMTBold-30.vlw");
font2=loadFont("BookmanOldStyle-30.vlw");
y=200;
l=400;
y2=200;
x1=160;
y3=200;
y4=300;
actor1= "Cruella DeVil.....Glenn Close \n Roger.....Jeff Daniels \n Anita.....Joan Richardson \n Nanny.....Joan Plowright \n Jasper.....Hugh Laurie";
actor2= "Horace.....Mark Williams \n Skinner.....John Shrapnel \n Alonzo.....Tim McInnerny \n Frederick.....Hugh Fraser \n Herbert.....Zohren Weiss";
musica="Supervising Music Editors  \n \n \n Music Editing \n \n \n  Assistant Music Editor";
musica2="  \n Cristopher Brooks  \n \n \n Segue Music  \n \n \n Kim Strand";
director=" Director.....Stephen Herek \n Productor..... Jhon Hughes \n Escritores..... Dodle Smith";
director2="John Hughes";}
void draw(){

  image(titulo,250,y);
  if ((frameCount>100)&&(frameCount<300)){
  background(255);
  image(titulo,250,y);
  y--;}

   if ((frameCount>300)&&(frameCount<1200)){
     if (frameCount%200==0){
     background(255);
   
  r1=random (0,50);
  r2=random (0,150);
  r3=random (50,150);
  r4=random (50,150);
  fill(0);
  ellipse (r1,r2,r3,r4);
  ellipse(r1+10,r2-30,r3+30,r4-30);
  r1=random (550,700);
  r2=random (400,500);
  r3=random (50,150);
  r4=random (50,150);
  fill(0);
  ellipse (r1,r2,r3,r4);
  ellipse(r1+10,r2-30,r3+30,r4-30);
  r1=random (550,700);
  r2=random (0,250);
  r3=random (20,100);
  r4=random (50,100);
  fill(0);
  ellipse (r1,r2,r3,r4);
  ellipse(r1+10,r2-30,r3+10,r4-30);
  
   //textSize(30);
   if ((frameCount%200==0)&&(frameCount<600)){
   fill(0); 
   textFont(font);
   text("CAST",260,150);
   text(actor1,x1, y3);}
    }
    if(frameCount==600){
   
    fill(0);
  textFont(font);
  text("CAST",260,150);
  text(actor2,x1, y3);
}
  if(frameCount==800){
    fill(0);
    textSize(30);
    textFont(font);
    text(musica,x1, y3);
    textFont(font2);
    text(musica2, x1, y3);
    
  }

 

  
  }
  if(frameCount==1000){
    background(255);
    //image(titulo,250,y);
    perdita.resize(150,100);
    image(perdita,0,400);
    pongo.resize(150,100);
    image(pongo,550,20);
    fill(0);
    textFont(font);
   text(director, x1,y3);
   text (director2, 350,y4);
   
   
 }
 if (frameCount==1300){
   y=-150;
   //background(255);
   image(disney, 0,0);
 }
   println(frameCount);

  }
  void keyPressed(){
  if (key == 32 || key == 'q' || key == 'Q') {
    background(255);
    frameCount=0;
    y=200;
    l=400;
    y2=200;
    x1=160;
    y3=200;
}
  }
  
  /*void mousePressed(){
    background(255);
    frameCount=0;
    y=200;
l=400;
y2=200;
x1=160;
y3=200;
    
}*/
   
