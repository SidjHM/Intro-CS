PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
float mercury = TWO_PI;
float venus = TWO_PI;
float earth = TWO_PI;
float mars = TWO_PI;
float jupiter = TWO_PI;
float saturn = TWO_PI;
float uranus = TWO_PI;
float neptune = TWO_PI;
float[] StarX = new float[1000];
float[] StarY = new float[1000];
float[] s = new float[1000];
float years=2022 ;


void setup() {
  size(1500, 800);
  //Load Images
  img = loadImage("mercury.png");
  img2 = loadImage("venus.png");
  img3 = loadImage("earth.png");
  img4 = loadImage("mars.png");
  img5 = loadImage("Jupiter.png");
  img6 = loadImage("saturn.png");
  img7 = loadImage("Uranus.png");
  img8 = loadImage("download.png");


  //Randomize Stars
  for (int i=0; i < 1000; i++) {
    StarX[i] = random(1, 1500);
  }

  for (int i=0; i < 1000; i++) {
    StarY[i] = random(1, 799);
  }
  for (int i=0; i < 1000; i++) {
    s[i] = random(1, 6);
  }
}

void draw() {
  background(0, 0, 10);

  // Stars
  for (int i=0; i < 1000; i++) {
    noStroke ();
    fill(255);
    ellipse(StarX[i], StarY[i], s[i], s[i]);
  }



  //  System Rings
  noFill();
  stroke(255);
  strokeWeight(1.4);
  circle(30, 390, 580);
  circle(30, 390, 780);
  circle(30, 390, 1080);
  circle(30, 390, 1380);
  circle(30, 390, 1680);
  circle(30, 390, 1980);
  circle(30, 390, 2280);
  circle(30, 390, 2580);


  //Sun
  fill(250, 253, 15);
  strokeWeight(0.2);
  circle(20, 390, 300);


  //Planets and their Rotations
  translate(0, 390);
  push();
  rotate(mercury);
  image(img, 295, 0, 50, 50);
  mercury=mercury+0.04;
  pop();

  push();
  rotate(venus);
  image(img2, 390, 0, 60, 60);
  venus=venus+0.034;
  pop();

  push();
  rotate(earth);
  image(img3, 535, 0, 70, 70);
  earth=earth+0.028;
  pop();

  push();
  rotate(mars);
  image(img4, 690, 0, 55, 55);
  mars=mars+0.0240;
  pop();

  push();
  rotate(jupiter);
  image(img5, 800, -20, 140, 140);
  jupiter=jupiter+0.020;
  pop();

  push();
  rotate(saturn);
  image(img6, 970, 0, 95, 95);
  saturn=saturn+0.017;
  pop();

  push();
  rotate(uranus);
  image(img7, 1130, 0, 85, 85);
  uranus=uranus+0.013;
  pop();

  push();
  rotate(neptune);
  image(img8, 1280, 0, 80, 80);
  neptune=neptune+0.010;
  pop();

  years =2022+ earth/TWO_PI;
  fill(255, 255, 25);
  textSize(30);

  // Counting years and some important events for kids
  text("Years: "+years, 20, 180);
  if ((years>=2050)&&(years<=2051)) {
    fill(255, 255, 255);
    background(0, 0, 0);
    textSize(30);
    text("Climate Change sees Record Temperature increases", 50, 220);
  } else if ((years>=2100)&&(years<=2101)) {
    fill(255, 255, 255);
    background(0, 0, 0);
    textSize(80);
    text("We live to see another century", 350, 330);
    exit();
  } else {
    years =2022+ earth/TWO_PI;
    fill(255, 255, 25);
    textSize(30);
    text("Years: "+years, 20, 180);
  }
}
