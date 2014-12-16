Bouncyball[] balls = new Bouncyball[50];
hole h;

void setup(){
  size (700,700);
  colorMode(HSB,360,100,100,100);
  h = new hole();
  for (int o = 0; o < balls.length; o++){
    balls[o] = new Bouncyball(random(5,30), random(.1,10));
  }
}

void draw(){
  background(0);
  
  for (int o = 0; o < balls.length; o++){
   h.eat(balls[o]);
   balls[o].display();
   balls[o].move();
   balls[o].bounce();
//   balls[o].suckedIn(h);
  }
  h.display();
}
