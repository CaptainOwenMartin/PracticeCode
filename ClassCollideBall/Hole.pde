class hole {
  PVector location;
  float dia;

  hole() {
    location = new PVector(random(width), random(height));
    dia = 80;
  }

  void display() {
    fill(0, 255, 255);
    ellipse(location.x, location.y, dia, dia);
  }

  void eat(Bouncyball food) {
    if (location.dist(food.location) < dia/2 + food.dia/2) {
      food.teleport();
      dia+=food.dia/100;
    }
  }
}

