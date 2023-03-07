void setup() {
  size(1000, 800);
    
    background(250);

for(int i = 1; i <= 30; i = i + 1) {
fill((int) random(70,180), (int) random(45,165), (int) random(75,125));

  building(i * 35, (int) random(200,900), (int) random(75,125), (int) random(2,5), (int) random(2,7), false);
}
}

void draw() {
  
}

void building(float xCenter, float yBottom, float w, int numFloors, int numWindows, boolean isDouble) {
rectMode(CENTER);

float floorHeight = 50;
float buildingHeight = numFloors * floorHeight;

rect(xCenter, yBottom - buildingHeight / 2, w, numFloors * floorHeight);
push();
fill(50,50,150);
rect(xCenter,yBottom-15,15,30);
pop();
  float xLeft = xCenter - w/2;  
  fill(26, 203, 255); 
  float step = w/(numWindows + 1);


  for(float y = 1; y <= numWindows; y = y + 1)
  {
        rect(xLeft + y * step, yBottom - 50, step, step); 

  }
}
