void setup() {
  size(900, 900);
  frameRate(100000900000000000);
  
  noStroke();
  
}
int velocity = 1;
int pos = 1;

  
void draw() {
 background(255, 255, 255);
  fill(random(0), random(0), random(0));
 
  /*background(50,200,50);
  fill(200,100,150);
  rect(pos,pos,20,20);
  
  if (speed < 900 - 20) {
    speed += 10 ;
  }
  if (speed == 900 - 20) {
    speed -= 10;
  }*/
  
  
  ellipse(mouseX,mouseY,50,50);
  if (mousePressed) {
    ellipse(mouseX,mouseY,50,50);
  }  
  
}
