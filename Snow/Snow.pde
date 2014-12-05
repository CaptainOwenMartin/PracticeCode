int count = 500;
PVector[] location = new PVector[count];
PVector[] velocity = new PVector[count];
PVector[] acceleration = new PVector[count];
float[] dia = new float[count];
PImage Snow;

void setup() {
  size(500, 500);
  Snow = loadImage("Snowflake.png");
    for (int s = 0; s<count; s++) {
    dia[s] = random(10,20);
    acceleration[s] = new PVector(0,.2);
    location[s] = new PVector(random(width), random(-height*1, -dia[s]/2));
    velocity[s] = new PVector(0, random(1));
    }
}
void draw() {
  background(0);
  //moves snowflake
  for (int s = 0; s<count; s++) {
    velocity[s].add(acceleration[s]);
    location[s].add(velocity[s]);
    velocity[s].limit(2);
    acceleration[s].x = random(-.1, .1);
    
    pushMatrix();
    translate(location[s].x, location[s].y);
    image(Snow, 0, 0, dia[s], dia[s]);
    popMatrix();
    
    //bottom to top
    if (location[s].y-dia[s]/2 > height) {
      location[s].set(random(width), random(-height, -dia[s]/2));
      velocity[s].set(0, 2);
    }
  }
}
