float arcStart = radians(180);
float arcEnd = radians(180);
float maxArcEnd = TWO_PI;
float movement = 0.0;
float speed = PI/360;

void setup() {
  size(400, 400);
}

void draw() {
  float i = 0;
  float w = 1;

  background(0);
  stroke(255);
  strokeWeight(6);
  noFill();


  while (w <= 400) {
    arcEnd = map(sin(movement + (maxArcEnd / w * i)), -1, 1, arcStart, maxArcEnd);
    arc(200, 200, w, w, arcStart, arcEnd);
    w+=30;
    i+=1;
    movement+=speed;
  }
}
