int x = 800;
void setup (){
size(800,800);
}

void draw (){
background(20,30,45);
circle(400,x,20);
x = x-5;
 if (x < 10){
x= 800;
 }
}
