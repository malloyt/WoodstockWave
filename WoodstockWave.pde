float arcStart = radians(180);
float arcEnd = radians(180);
float maxArcEnd = TWO_PI;
float movement = 0.0;
float speed = PI/60;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  strokeWeight(5);
  stroke(255);
  int x = 400;
  float i = 0;

  noFill();
  while (x > 31) {
    arcEnd = map(sin(movement + (maxArcEnd / x * i)), -1, 1, arcStart, maxArcEnd);
    arc(200, 200, x, x, arcStart, arcEnd);

    x -=30;
    i +=8;
  }
  movement += speed;
}
