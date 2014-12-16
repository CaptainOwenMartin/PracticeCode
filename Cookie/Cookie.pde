ArrayList<Cookies> Cookie = new ArrayList<Cookies>();
void setup(){
size(900,900);
}
void draw(){
background(100,149,237);
if (keyPressed){
  if(key==ENTER){
    Cookie.add(new Cookies());
  }
for (int c = Cookie.size(); c >= 0; c --){
  Cookies currentCookies = Cookie.get(c);
  currentCookies.display();
  currentCookies.move();
    }
  }
}

class Cookies{
  PVector location;
  PVector acceleration;
  PVector velocity;
  float dia;
  
  Cookies(){
    acceleration = new PVector(0,0.5);
    velocity = new PVector(random(-1,1),random(-1,1));
    location = new PVector(width/2, height);
    dia = 
