class Circle {
  float x;
  float y;
  //radius
  float r;

  boolean growing = true;

  //constructor function
  Circle(float x_, float y_) {
    x = x_;
    y = y_;
    r = 1;
  }
  //

  void grow() {
    if (growing) {
      r = r + 0.5;
    }
  }

  boolean edges() {
    return (x + r > width || x -  r < 0 || y + r > height || y -r < 0);
  }

  void show() {
    stroke(255);
    strokeWeight(1);
    fill(255);
    //standard size of circle
    ellipse(x, y, r*2, r*2);
  }
}