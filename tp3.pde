/*Gaspar Ariel 85194/0
Comision 4
Profesor Leonardo Garay
YOUTUBE: https://www.youtube.com/watch?v=-JIqtW5Lbuw */

int ene, cant, y3=690;
PImage [] imagenes= new PImage[6];
PImage logo;
String textCredits;
int  crY, pos1,pos2,anchobt,altobt,x3, pantalla;
int btposX, btposY;
float opacidad;
boolean habilitado=true, mover=true, disparar=false;
float balax=400, balay=750;
int borde=20;
float posEx=400, posEy=0;
void setup () {
  size(800,800);
  logo= loadImage("imagen_7.png");
  textCredits="TP N°3 \n Alumno..........Gaspar Ariel \n Legajo..........85194/0 \n Juego inspirado en Space Invaders y Galaga \n Gracias por jugar!";
  for (int i=0; i<6; i++){
    imagenes[i]= loadImage("imagen_"+i+".png");
  }
  fondo();
  crY=850;
  pos1=width/2;  
  pos2=750;
  x3=width/2;
  pantalla=1;
  btposX=width/2;
  btposY=height/2;
  anchobt=100;
  altobt=50;
  ene=1;
}

void draw (){
  if (pantalla==1){
    menu();
  }else if(pantalla ==2){
    credits();
  } else if (pantalla==3){
    nivel1();
  }
  

}
