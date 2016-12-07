import ddf.minim.*;
AudioSample sound1;
int x = 0;
int y = 0;
PImage shrek;
PImage restart;
PImage tail;  //as the very top of your sketch
PImage donkey;  //at top of sketch
PImage black;
PImage sorry;
boolean showImage;
  void setup () {
    showImage = false;
  Minim minim = new Minim(this);
  sound1 = minim.loadSample("sound.wav");
  size(1440, 1080);
  donkey = loadImage("donkey.jpg");    
  background(donkey);
  tail = loadImage("tail.png");  //in the setup method
  black = loadImage("images.png");  
  black.resize(1440, 1080);
  shrek = loadImage("good.png"); 
  shrek.resize(1440, 1080);
  sorry = loadImage("sorry.jpg"); 
  sorry.resize(1440, 1080);
  restart = loadImage("restart.png"); 
  restart.resize(1440, 1080);
  }

  void draw () {
  
  if (mouseX > 200 && mouseY > 200) {
    if(showImage != true)
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
  if (mousePressed && x < 550 && x > 525 & y < 495 && y > 465){
    image(shrek, 0, 0);  
    sound1.trigger();
    
    showImage = true;
  } else
  

  println(x);
  println(y);
}
