private Spaceship bob = new Spaceship();
private Star[] sky = new Star[300];
private ArrayList<Asteroid>cl=new ArrayList<Asteroid>();
public void setup() {
  size(1000, 1000);
  for (int i = 0; i < sky.length; i++) {
    sky[i] = new Star();
  }
  for(int i = 0; i < 50; i++){
    cl.add(new Asteroid());
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
  for(int i = 0; i < 50 ;i++){
   cl.get(i).show();
    cl.get(i).move();
     
    
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)cl.get(i).getX(), (float)cl.get(i).getY());
    if(d<13){
    cl.remove(i);
    i--;
    }
  }
    
}
public void keyPressed() {
  if (key == 'w') {
    bob.accelerate(1);
  }
  if (key == 'a') {
    bob.turn(-10);
  }
  if (key == 'd') {
    bob.turn(10);
  }
  if (key == 's') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn((int)(Math.random()*300+100));
    bob.setXCenter((int)(Math.random()*300+100));
    bob.setYCenter((int)(Math.random()*300+100));
  }
}
