Particle[] parts = new Particle[80];

// public void settings() {
//   size(1000, 750);
// }
void setup() {
  size(1000, 750);
  parts[0] = new Oddball();
  for(int i = 1; i < 80; i++) {
    parts[i] = new Particle();
  }
}
void draw() {
  background(220);
  line(0, 680, 1000, 680);
  for(int i = 0; i < parts.length; i++) {
    parts[i].move();
    parts[i].show();
  }
}
class Particle {
  double myX, myY, speed;
  Particle() {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*450);
    speed = (int)(Math.random()+1);
  }
  void move() {
    myY += speed;
    if(myY > 660) {
      myY = (int)(Math.random()*100);
    }
  }
  void show() {
    ellipse((float)myX, (float)myY, (float)10, (float)40);
  }
}
class Oddball extends Particle {
  Oddball() {
    myX = 500;
    myY = 725;
    fill(0,150,200);
  }
  void move() {
    if(myY < 0) {
      myY = 725;
    }
    if(myY > 750) {
      myY -= 3;
    }
    if(myX > 1000) {
      myX -= 3;
    }
    if(myX < 0) {
      myX += 3;
    }
    if(keyCode == DOWN) {
      myY += 3;
    }
    if(keyCode == UP) {
      myY -= 2;
    }
    if(keyCode == LEFT) {
      myX -= 2;
    }
    if(keyCode == RIGHT) {
      myX += 2;
    }
  }
  void show() {
    ellipse((float)myX, (float)myY, (float)30, (float)30);
  }
}

