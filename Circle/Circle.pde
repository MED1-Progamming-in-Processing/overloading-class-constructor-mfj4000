MyCircle circle;

float rWidth = random(width);
float rHeight = random(height);

float r1 = random(1, 5);
float r2 = random(10, 50);

int background = #AD7DE5;

void setup() {
  size(300, 300);
  frameRate(60);
  circle = new MyCircle(rWidth, rHeight, r1, r1, r2);
}

void draw() {
  background(background);

  circle.move();

  if (rectangle) {
    circle.displayCircle();
  } else {
    circle.displayRectangle();
  }
}
