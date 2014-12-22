ArrayList<Cookies> Cookie = new ArrayList<Cookies>();
PImage ChocolateChip;
PImage CookieMonster;
void setup() {
  size(864, 540);
}
void draw() {
  background(100, 149, 237);
  ChocolateChip = loadImage("ChocolateChip.png");
  CookieMonster = loadImage("CookieMonster.png");
  imageMode(CENTER);
  image(CookieMonster, width/2, 400);
  if (keyPressed) {
    if (key==ENTER) {
      Cookie.add(new Cookies());
    }
    for (int c = Cookie.size () -1; c >= 0; c --) {
      Cookies currentCookies = Cookie.get(c);
      currentCookies.display();
      currentCookies.move();
      if (currentCookies.Go()) {
        Cookie.remove(c);
      }
    }
  }
}

class Cookies {
  PVector location;
  PVector acceleration;
  PVector velocity;
  float dia;

  Cookies() {
    acceleration = new PVector(0, 0.1);
    velocity = new PVector(random(-3, 3), random(-4, -2));
    location = new PVector(width/2, height/4);
    dia = 20;
  }
  void display() {
    pushMatrix();
    translate(location.x, location.y);
    image(ChocolateChip, 0, 0, dia, dia);
    popMatrix();
  }
  void move() {
    velocity.add(acceleration);
    location.add(velocity);
  }
  boolean Go() {
    if (location.y -dia/2 >height) {
      return true;
    } else {
      return false;
    }
  }
}

