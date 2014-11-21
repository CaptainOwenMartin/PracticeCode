PVector location;
PVector velocity;
PVector acceleration;
PVector mouse;
int dia = 50;

void setup() {
  size(600, 600);
  location = new PVector(width/2, height/2);
  velocity = PVector.random2D();
  acceleration = new PVector(0, 0);
  mouse = new PVector();
}

void draw() {
  mouse.set(mouseX, mouseY);
  background(0);
  velocity.add(acceleration);
  location.add(velocity);

  if (location.dist(mouse) < dia/2) {
    fill(0, 250, 50);
    if (location.x < mouse.x) {
      velocity.x = -abs(velocity.x);
    } else {
      velocity.x = abs(velocity.x);
    }
    if (location.y < mouse.y) {
      velocity.y = -abs(velocity.y);
    } else {
      velocity.y = abs(velocity.y);
    }
  } else {
    fill(255, 0, 0);
  }
  ellipse(location.x, location.y, dia, dia);
  
  if (location.x + dia/2 > width || location.x - dia/2 < 0) {
    velocity.x *= -1;
  }
  if (location.y + dia/2 > height || location.y - dia/2 < 0) {
    velocity.y *= -1;
  }
}

