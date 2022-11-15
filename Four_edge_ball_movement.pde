int x = 10;
int y = 10;
int dx = 5;
int dy = 5;
void setup(){
  size(800,800);
}

void draw(){ 
background(200,200,180);
circle(x,y,20);

 if (x == 10 && y == 10) {
    dx = 0;
    dy= 5;
}
if (x == 10 && y == 780) {
    dx = 5;
    dy= 0;
}   
if (x == 780 && y == 780) {
    dx = 0;
    dy= -5;
}
if (x == 780 && y == 10) {
    dx = -5;
    dy= 0;
}   
 x=x+dx;
 y=y+dy; 
}
