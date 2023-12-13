class Asteroid extends Floater{
  private double rspeed;
  Asteroid(){
    corners = 9;
    myCenterX = ((int)(Math.random()*501));
    myCenterY = ((int)(Math.random()*501));
    xCorners = new int[] {4, 8, 11, 11, 6, -5, -11, -8, -4};
    yCorners = new int [] {7, 9, 1, -4, -11, -9, -4, 3, 7};
    myColor = 255;
    rspeed = (Math.random()*30-15);
    myXspeed= ((int)(Math.random()*-2)+1);
    myYspeed= ((int)(Math.random()*-2)+1);
  }
  public void move() {
    turn(rspeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
