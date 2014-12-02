PImage Dwight;
PImage Spoon;
void setup(){
size(1414,794);
Dwight = loadImage("Dwight.png");
Spoon = loadImage("Spoon.png");
}

void draw(){
  background(Dwight);
  image(Spoon,mouseX,mouseY,Spoon.width*.05,Spoon.height*.05);
}
