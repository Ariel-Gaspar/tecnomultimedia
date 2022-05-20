PImage im1, im2, im3, im4, im5, logo;
float r1, r2, r3, y, y2, y3, y4, y5, r4, r5;
String texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11;
int yTxt, yTxt2, yTxt3, yTxt4, yTxt5, yTxt6, yTxt7, yimg, yTxt8, yTxt9, yTxt10;
int pos1, pos2, altobt=30, anchobt=100;
PFont fuente;
void setup () {
  size (600, 600);
  background(50, 70, 255);
  fuente= createFont("Candal.ttf",1);
  textFont(fuente);
  texto1 = "Prototype By";
  texto2="\n Chris Symonds \n James Chilcott \n Nick Rodgers \n Oli De-Vine \n Phil Duncan";
  texto3="Developers";
  texto4="Phil Duncan \n Oli De-Vine";
  texto5="Team 17 ";
  texto6="Producer: \n Hollie McGrath \n \n Production Director: \n Kelvin Carthew \n \n Head of Programming: \n David Smethurst \n \n Programming Support: \n James Ferguson \n Laurie Dobson";
  texto7= "Music";
  texto8="Valse Seine \n \n \n \n Regal Fanfare";
  texto9="created By \n Christian Marsac \n \n \n \n \n  Created By \n Paul Mottram";
  texto10="Tempestus \n \n \n \n  Overcooked! ";
  texto11="Created By \n Paul Mottram (PRS) \n \n \n \n \n  Create By \n Goodkill Music";
  logo=loadImage("logo.png");
  logo.resize(300, 200);
  im1= loadImage("1.png");
  im1.resize(100, 100);
  im2= loadImage("2.png");
  im2.resize(100, 100);
  im3= loadImage("3.png");
  im3.resize(100, 100);
  im4= loadImage("4.png");
  im4.resize(100, 100);
  im5= loadImage("5.png");
  im5.resize(100, 100);
  y=-100;
  y4=-100;
  textAlign(CENTER);
  imageMode(CENTER);
  yimg= height/2;
  yTxt= height+100;
  yTxt2= yTxt+40;
  yTxt3= yTxt2+40;
  yTxt4=yTxt3+250;
  yTxt5=yTxt4+40;
  yTxt6=yTxt5+100;
  yTxt7=yTxt6+40;
  yTxt8= yTxt7+500;
  yTxt9=yTxt8+40;
  yTxt10=yTxt9+50;
  pos1=width/2-50;
  pos2=500;
}
void draw() {

  fondo();
  if (frameCount>=0 && frameCount < 200) {
    image(logo, width/2, height/2);
  }
  if (frameCount>=200 && frameCount<2500) {
    image(logo, width/2, yimg);
    textSize(40);
    text("Credits", width/2, yTxt);
    text(texto5, width/2, yTxt6);
    text(texto7, width/2, yTxt8);
    textSize(30);
    text(texto1, width/2, yTxt2);
    text(texto3, width/2, yTxt4);
    textAlign(LEFT);
    text(texto10, width/2, yTxt9);
    
    textAlign(CORNER);
    text(texto8, 20, yTxt9);

    textSize(20);
    text (texto9, 20, yTxt10);
    textAlign(CENTER);
    text(texto2, width/2, yTxt3);
    text(texto4, width/2, yTxt5);
    text(texto6, width/2, yTxt7);
    push();
    textAlign(LEFT);
    text (texto11, width/2, yTxt10);
    pop();

    yimg--;
    yTxt--;
    yTxt2--;
    yTxt3--;
    yTxt4--;
    yTxt5--;
    yTxt6--;
    yTxt7--;
    yTxt8--;
    yTxt9--;
    yTxt10--;
  }
  if (frameCount>=2500 && frameCount<=2900) {
    textSize(30);
    text("Also", width/2, height/2);
    textSize(20);
    text("Thanks for playing!", width/2, height/2+30);
  }
  if (frameCount>=2500) {
    boton(pos1, pos2, anchobt, altobt, 20);
    push();
    textAlign(CENTER);
    textSize(20);
    fill(0);
    text("Reiniciar", pos1+50, pos2+20);
    pop();
  }
  println("frameCount:"+frameCount);
}

void boton(int x1, int y1, int x2, int y2, int borde) {
  rect (x1, y1, x2, y2, borde);
}
boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {
  boolean presionado=mx>px && mx<px+ancho && my<py+alto==true;
  return presionado;
}
void mousePressed () {
  if (botonPressed(mouseX, mouseY, pos1, pos2, anchobt, altobt)) {
    frameCount=0;
    yimg= height/2;
    yTxt= height+100;
    yTxt2= yTxt+40;
    yTxt3= yTxt2+40;
    yTxt4=yTxt3+200;
    yTxt5=yTxt4+40;
    yTxt6=yTxt5+100;
    yTxt7=yTxt6+40;
    yTxt8= yTxt7+500;
    yTxt9=yTxt8+40;
    yTxt10=yTxt9+50;
  }
}
