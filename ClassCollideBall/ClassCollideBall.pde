class Bouncyball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float dia;
  float speed;
  float huehuehue;

  Bouncyball(float dia2, float speed2) {
    dia = dia2;
    speed = speed2;
    location = new PVector(random(dia, width-dia), random(dia, height-dia));
    velocity = PVector.random2D();
    acceleration = new PVector();
    velocity.setMag(speed);
    huehuehue = random(1,2);
  }

  void display() {
    fill(huehuehue, 100, 100, 100);
    ellipse(location.x, location.y, dia, dia);
  }
  void move() {
    velocity.add(acceleration);
    location.add(velocity);
  }
  void bounce() {
    if (location.x + dia/2 > width) {
      velocity.x = -abs(velocity.x);
    } 
    if (location.x - dia/2 < 0) {
      velocity.x = abs(velocity.x);
    }
    if (location.y + dia/2 > height) {
      velocity.y = -abs(velocity.y);
    }
    if (location.y - dia/2 < 0) {
      velocity.y = abs(velocity.y);
    }
  }

  void collideWith(Bouncyball other) {
    if (location.dist(other.location) < dia/2 + other.dia/2) {
      velocity = PVector.sub(location, other.location);
      velocity.setMag(speed);
    }
  }
//  void suckedIn(hole doom) {
//    acceleration = PVector.sub(doom.location, location);
//    acceleration.setMag(.1);
//  }
  void teleport() {
//    location.set(mouseX,mouseY);
    location.set(random(width),random(height));
    velocity = PVector.random2D();
  }
}

