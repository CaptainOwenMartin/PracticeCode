PVector location;
PVector velocity;
PVector acceleration;
PVector location2;
PVector velocity2;
PVector acceleration2;
int dia = 50;
int dia2 = 50;

void setup() {
  size(600, 600);
  location = new PVector(width/2, height/2);
  velocity = PVector.random2D();
  acceleration = new PVector(0, 0);
  location2 = new PVector(width/2, height/2);
  velocity2 = PVector.random2D();
  acceleration2 = new PVector(0, 0);
}

void draw() {
  background(0);
  velocity.add(acceleration);
  location.add(velocity);
  velocity2.add(acceleration2);
  location2.add(velocity2);

  if (location.dist(location2) < dia/2 + dia2/2) {
    fill(0, 250, 50);
    if (location.x < location2.x) {
      velocity.x = -abs(velocity.x);
      velocity2.x = abs(velocity2.x);
    } else {
      velocity.x = abs(velocity.x);
      velocity2.x = -abs(velocity2.x);
    }
    if (location.y < location2.y) {
      velocity.y = -abs(velocity.y);
      velocity2.y = abs(velocity2.y);
    } else {
      velocity.y = abs(velocity.y);
      velocity2.y = -abs(velocity2.y);
    }
  } else {
    fill(255, 0, 0);
  }
  ellipse(location.x, location.y, dia, dia);
  ellipse(location2.x, location2.y, dia2, dia2);

  if (location.x + dia/2 > width || location.x - dia/2 < 0) {
    velocity.x *= -1;
  }
  if (location.y + dia/2 > height || location.y - dia/2 < 0) {
    velocity.y *= -1;
  }
  if (location2.x + dia2/2 > width || location2.x - dia2/2 < 0) {
    velocity2.x *= -1;
  }
  if (location2.y + dia2/2 > height || location2.y - dia2/2 < 0) {
    velocity2.y *= -1;
  }
}

void mouseReleased() {
  location2.set(mouseX, mouseY);
}

