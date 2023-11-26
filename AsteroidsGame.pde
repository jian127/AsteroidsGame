Spaceship bob = new Spaceship();
Star[] sky = new Star[300];
public void setup() {
  size(1000, 1000);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
}
public void draw() {
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < sky.length; i++) {
   sky[i].show();
    fill(255);
  }
}
public void keyPressed() {
  if (key == 'w') {
    bob.accelerate(1);
  }
  if (key == 'a') {
    bob.turn(-10.0);
  }
  if (key == 'd') {
    bob.turn(10.0);
  }
  if (key == 's') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn((int)(Math.random()*300+100));
    bob.setXCenter((int)(Math.random()*300+100));
    bob.setYCenter((int)(Math.random()*300+100));
  }
}
