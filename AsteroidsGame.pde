Spaceship bob = new Spaceship();
Star[] sky = new Star[75];
ArrayList<Asteroid> cl = new ArrayList<Asteroid>();
ArrayList<Bullets> ab = new ArrayList<Bullets>();
public void setup()
{
size(500,500);
for(int i = 0; i < sky.length; i++){
sky[i] = new Star();
  }
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 cl.add(new Asteroid());
 
}
public void draw()
{
background(231,84,128);
bob.show();
bob.move();
for(int i = 0; i < sky.length; i++){
sky[i].show();
  }
 for(int i = 0; i < cl.size(); i++){
 cl.get(i).move();
 cl.get(i).show();
 if(dist((float)cl.get(i).myCenterX, (float) cl.get(i).myCenterY, (float)bob.myCenterX, (float)bob.myCenterY) < 20) {
 cl.remove(i);
 cl.add(new Asteroid());
 }
 }
 
 for(int j = 0; j < ab.size(); j++){ 
 float d = 0; 
 for(int i = 0; i < cl.size(); i++){ 
 d = dist((float)ab.get(j).getX(), (float)ab.get(j).getY(), (float)cl.get(i).getX(), (float)cl.get(i).getY()); 
 if(d < 30){ 
 ab.remove(j); 
 cl.remove(i); 
 break; 
 } 
 } 
 if(d < 30) break; 
 }
 
 for(int i = 0; i < ab.size(); i++){
 ab.get(i).move();
 ab.get(i).show();

 }
}

public void keyPressed()
{
 
  if(key == 'w')
  {
      bob.accelerate(1);
     
  }
   if(key == 'a')
  {
     bob.turn(-10.0);
  }
   if(key == 'd')
  {
     bob.turn(10.0);
  }
  if(key == 's')
  {
     bob.setXspeed(0);
     bob.setYspeed(0);
     bob.turn((int)(Math.random()*300+100));
     bob.setXCenter((int)(Math.random()*300+100));
     bob.setYCenter((int)(Math.random()*300+100));
     
 }
 if(key == 'r'){
 ab.add(new Bullets(bob));
 }

}
