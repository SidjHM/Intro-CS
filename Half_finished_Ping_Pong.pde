int x=50;
int y =50;
int dx=2;
int dy=4;
int pady=2;
int padx = 0;
void setup() {
 size(800,800);
}

void draw(){
  background(30);
  circle(x,y,40);
  x=x+dx;
  rect(1,pady,20,100);
  rect(780,padx,20,100);
  padx = padx +20;
  if (x > 760){
  dx=-4;
  }
  if(x<30){
    dx = 4; 
  } 
  y = y+dy;
  if (y>770){
    dy = -4;
  }
  if (y<30){
    dy = 5;
  }
  if (padx > 700){
  padx = -2;
  }
  if (padx < 100){
  padx = 2;
  }   
}

void keyPressed(){
  if (keyCode == UP){
    pady = pady-30;//up
  }
  if (keyCode == DOWN){
    pady=pady+30;//down
  }



}
