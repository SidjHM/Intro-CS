int x;
int y;

void setup() {
  size(800, 800);
}
void draw() {
  //frameRate(5);
  x = (int) random(800);
  y = (int) random(800);
  
  if (x >= 400 && y >= 400) {
    fill(255, 0, 0);
    circle(x, y, 10);
  }
  else if (x < 400 && y > 400) {
     fill(255, 255, 0);
    circle(x, y, 10);
  }
  else if (x >= 401 && y <= 400) {
     fill(0, 0, 255);
    circle(x, y, 10);
  }
  else {
     fill(255, 0, 255);
    circle(x, y, 10);
  }
}
