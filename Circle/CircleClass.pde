Boolean rectangle = false;

class MyCircle {

  //x and y variables
  float x;
  float y;
  float xSpeed;
  float ySpeed;

  //Defining the sizes of the shapes
  float radius;
  int heightWidth = 20;

  //Colour int
  int pink = #F50ADA;
  int green = #0BF500;

  //Constructors
  MyCircle(float x, float y, float xSpeed, float ySpeed, float radius) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
  }

  MyCircle(float x, float y, float xSpeed, float ySpeed, int heightWidth) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.heightWidth = heightWidth;
  } 
  //Making the shapes move  
  void move() {
    x += xSpeed;
    if (x < 0 + (radius / 2) || x > width - (radius / 2)) {
      xSpeed *= -1;
      rectangle = !rectangle;
    }

    y += ySpeed;
    if (y < 0 + (radius / 2) || y > height - (radius / 2)) {
      ySpeed *= -1;
      rectangle = !rectangle;
    }
  }

  // Draw the shapes 
  void displayCircle() {
    fill(pink);
    ellipse(x, y, radius, radius);
  }

  void displayRectangle() {
    fill(green);
    rectMode(CENTER);
    rect(x, y, heightWidth, heightWidth);
  }
}
