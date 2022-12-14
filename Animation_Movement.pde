float r = -90;
int dr = 3;
void setup(){
  size(1000,1000);
}

void draw(){
  background(25);
  translate(450,450);
  
 // rotating the figure
  rotate(radians(r));
  r=r+dr;
  
  /* Resetting Movement
 if (r > 270){
   r=0;
  }
 
 Oscillation 
if (r > 90){
 dr = -3;
} 
if (r==-90){
 dr=3;
}
*/
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
