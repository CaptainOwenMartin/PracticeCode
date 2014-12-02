Ball[] a = new Ball[100];

void setup() {
  size(600, 600);
  for(int o = 0; o <a.length; o=o+1){
  a[o] = new Ball();
  }
}
void draw() {
  background(0);
  for(int o = 0; o <a.length; o=o+1){
  a[o].move();
  a[o].bounce();
  a[o].display();
  }
}
  class Ball {
    float dia;
    PVector location;
    PVector velocity;

    Ball() {
    location = new PVector(width/2, height/2);
    velocity = PVector.random2D();
    dia = 100;

    }
    void display(){
    ellipse(location.x, location.y, dia, dia);
    }
    void move(){
    location.add(velocity);
    }
    void bounce(){
    if (location.x + dia/2 > width || location.x - dia/2 < 0) {
        velocity.x *= -1;
      }
      if (location.y + dia/2 > height || location.y - dia/2 < 0) {
        velocity.y *= -1;
      }
    }
  }

     

