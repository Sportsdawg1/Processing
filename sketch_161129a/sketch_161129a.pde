int x = 0;
int y = 0;
PImage shrek;
PImage tail;  //as the very top of your sketch
PImage donkey;  //at top of sketch
PImage black;
PImage sorry;
  void setup () {
  size(1440, 1080);
  donkey = loadImage("donkey.jpg");    
  background(donkey);
  tail = loadImage("tail.png");  //in the setup method
  black = loadImage("images.png");  
  black.resize(1440, 1080);
  shrek = loadImage("shrek.jpg"); 
  shrek.resize(1440, 1080);
  sorry = loadImage("sorry.jpg"); 
  sorry.resize(1440, 1080);
  }

  void draw () {
  if (mouseX > 200 && mouseY > 200) {
    image(black, 0, 0);
  }    
  else {
    image(donkey, 0, 0);
  }  
  
  if (mousePressed) {
  x = mouseX;
  y = mouseY;  
  }
  image(tail, x - 170, y - 170);  //in your draw method
  if (x < 550 && x > 525 & y < 495 && y > 465){
    image(shrek, 0, 0);  
  }
  else if (mousePressed && x > 550 || mousePressed && x < 525 || mousePressed && y > 495 || mousePressed && y < 465) {
    image(sorry, 0, 0);
  }  
    
  println(x);
  println(y);
}
