int x=50;
int y =50;
int dx=2;
int dy=4;
int bg = 10;
int r=130;
int g=90;
int b=18;

void setup() {
 size(800,800);
}

void draw(){
  background(bg);
  fill(r,g,b);
  circle(x,y,40);
  x=x+dx;
  y=y+dy;
if (x>780){
  dx = -4;
 r=15;
 g=180;
 b=215;
 bg=85;
}

if (y<20){
  dy = 8;
  r=150;
 g=18;
 b=25;
 bg=143;
}
if (x<20){
  dx = 12;
  fill(190,0,238);
   r=10;
 g=80;
 b=125;
 bg=190;
}
if (y>780){
  dy = -6;
  fill(190,80,23);
  r=180;
 g=180;
 b=125;
 bg=256;
}
}
