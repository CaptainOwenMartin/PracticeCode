PVector loc;
PVector acc;
PVector vel;

//float locx, locy;
//float velx, vely;
//float accx, accy;

int dia = 50;

void setup() {
  size(800, 800);
  loc = new PVector(width/2, height/2);
  //  locx = width/2;
  //  locy = height/2;
  acc = new PVector(random(-.2, .2), random(-.2, .2));
  //  accx = random(-.2, .2);
  //  accy = random(-.2, .2);
  vel = new PVector(0, 0);
  //  velx = random(-.2, .2);
  //  vely = random(-.2, .2);
}

void draw() {
  acc.set(random(-.2, .2), random(-.2, .2));
  //  accx = random(-.2, .2);
  //  accy = random(-.2, .2); 
  vel.add(acc);
  vel.limit(5);
  //  velx += accx;
  //  vely += accy;
  loc.add(vel);
  //  locx += velx;
  //  locy += vely;

  ellipse(loc.x, loc.y, dia, dia);

  if (loc.x - dia/2>width) {
    loc.x = -dia/2;
  }

  if (loc.x + dia/2<0) {
    loc.x = width + dia/2;
  }

  if (loc.y - dia/2>height) {
    loc.y = -dia/2;
  }

  if (loc.y + dia/2<0) {
    loc.y = height + dia/2;
  }
}

