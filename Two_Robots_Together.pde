
void setup(){
  size(800,500);
}

void draw(){
  background(255,50,230);  
 fill(90, 90, 90);
 scale(0.4);
 translate(300,400);
rect(350, 475, 400, 200);
fill(255, 255, 0);
circle(700, 600, 50);
fill(90, 90, 90);

//neck
rect(500, 400, 75, 80);

//head
rect(425, 300, 225, 100);
fill(0, 0, 0);
triangle(425, 300, 650, 300, 450, 250);

//robot arm

fill(100, 100, 100);
rect(700, 475, 200, 40);
rect(850, 515, 40, 100);
triangle(850, 615, 870, 615, 860, 650);
strokeWeight(4);
stroke(255, 0, 0);
line(875, 615, 875, 900);
stroke(0, 0, 0);
fill(214, 88, 86);


//wheels
fill(0, 0, 0);
circle(350, 690, 130);
circle(480, 690, 130);
circle(610, 690, 130);
circle(740, 690, 130);

fill(100, 100, 100); 
circle(350, 690, 100);
circle(480, 690, 100);
circle(610, 690, 100);
circle(740, 690, 100);

scale(1.8);
translate(500,80);
stroke(255);
line(80,120,80,180);
line(90,120,90,180);
line(100,120,100,180);

// Antenna

stroke(255);
line(120,10,100,60);
line(110,100,140,110);
line(60,50,70,60);

// Body

noStroke();
fill(255);
ellipse(75,340,70,70);
fill(33,13,203);
rect(30,180,90,150);
fill(234,24,24);
rect(30,200,90,5);

// Head

noStroke();
fill(33,13,203);
ellipse(90,90,80,80);
fill(255);
ellipse(100,90,30,30);
fill(234,24,24);
ellipse(110,70,10,10);
fill(234,24,24);
circle(75,90,10);
fill(234,24,24);
ellipse(115,105,5,5);
fill(234,24,24);
ellipse(100,90,5,5);
  
}
