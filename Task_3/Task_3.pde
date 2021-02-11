color red = color (255,0,0);
color back = color(128,128,128);
int lightorder = 0;
int counter = 0; 
color yellow = color (255,255,0);
color green = color(0,128,0);
void setup(){
size(400,500);
 //black box
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 150, 450);
  ellipseMode(CENTER);
fill(back);
ellipse(width/2,height/2-60,100,100);
fill(back);
ellipse(width/2,height/2+50,100,100);
fill(back);
ellipse(width/2,height/2+170,100,100);

}

void draw(){ //<>//
traffic_1();
traffic_2();
traffic_3();
counter();
}
void traffic_1(){
if (lightorder == 1){
fill(red);
ellipse(width/2,height/2-60,100,100);

}else {
  fill(back);
ellipse(width/2,height/2-60,100,100);
}
}


void traffic_2(){
if (lightorder == 3){
fill(yellow);
ellipse(width/2,height/2+50,100,100);

}else{ 
fill(back);
ellipse(width/2,height/2+50,100,100);
}
}
void traffic_3(){
if (lightorder == 2){
fill(green);
ellipse(width/2,height/2+170,100,100);
}else {
fill(back);
ellipse(width/2,height/2+170,100,100);
}
}
void counter(){
counter++;
if( counter<=50){
  lightorder = 1;
} else if ( counter>=70){
  lightorder = 2;
}
else {
lightorder = 3;
}
} 
