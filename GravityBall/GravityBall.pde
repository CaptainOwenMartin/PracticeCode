float x, y, velocityX, velocityY, gravity;
int dia = 30;
void setup() {
  size(600, 600);
  noStroke();
  x = width/2;
  y = height*.1;
  velocityX = 0;
  velocityY = 0;
  gravity = 1;
  
}
void draw() {
  background(0,255,255);
  ellipse(x, y, dia, dia);
    velocityY += gravity;
  x+=velocityX;
  y+=velocityY;


if (y+dia/2>height) {
  velocityY = -abs(velocityY);
}
}

