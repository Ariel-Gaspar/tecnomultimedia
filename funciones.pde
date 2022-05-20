void fondo () {
  if (y==-100) {
    r1=random (0, 200);
    r2=random (200, 400);
    r3=random (400, 600);
    r4=random (100, 400);
    r5=random (300, 500);
    y2=random (-100, 0);
    y3=random (-100, 0);
    y4=random (-300, -100);
    y5=random (-300, -100);
  }
  background(50, 70, 255);
  image(im1, r1, y);
  image(im2, r2, y2);
  image(im3, r3, y3);
  image(im4, r4, y4);
  image(im5, r5, y5);
  y++;
  y2++;
  y3++;
  y4++;
  y5++;
  if (y>700) {
    y=-100;
    y2=random (-100, 0);
    y3=-random(100, 0);
  }
  if (y4>height+200) {
    y4=random (-300, -100);
    y5=random (-300, -100);
  }
}
