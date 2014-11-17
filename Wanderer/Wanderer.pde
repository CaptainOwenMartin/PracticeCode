float locx, locy;
float velx, vely;
float accx, accy;

int dia = 50;

void setup() {
  size(800, 800);
  locx = width/2;
  locy = height/2;

  accx = random(-.2, .2);
  accy = random(-.2, .2);


  velx = random(-.2, .2);
  vely = random(-.2, .2);
}

void draw() {
  accx = random(-.2, .2);
  accy = random(-.2, .2); 
  velx += accx;
  vely += accy;
  locx += velx;
  locy += vely;

  ellipse(locx, locy, dia, dia);

  if (locx - dia/2>width) {
    locx = -dia/2;
  }

  if (locx + dia/2<0) {
    locx = width + dia/2;
  }

  if (locy - dia/2>height) {
    locy = -dia/2;
  }

  if (locy + dia/2<0) {
    locy = height + dia/2;
  }
}

