int x = 0;
int y = 600;
int z = 60;
void setup (){
size(800,800);
}

void draw (){
background(130,80,105);
fill(255,0,0,100);
circle(400,400,200);
fill(0,0,200);
square(400,x,50);
fill(255,255,255);
square(0,0,y);
x = x+2;
y = y-5;
 if (x > 780){
x= 0;
 }
 if ( y < 30){
 fill(0,0,0);
 triangle (0,0,0,80,z,40);
 z = z+3;
}
}
