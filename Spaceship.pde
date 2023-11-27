class Spaceship extends Floater {
  public Spaceship() {
    private corners = 4;
    private xCorners = new int[corners];
    private yCorners = new int[corners];
    private xCorners[0] = -8;
    private yCorners[0] = -8;
    private xCorners[1] = 16;
    private yCorners[1] = 0;
    private xCorners[2] = -8;
    private yCorners[2] = 8;
    private xCorners[3] = -2;
    private yCorners[3] = 0;
    private myColor = color(255, 0, 0);
    private myXspeed = 0;
    private myYspeed = 0;
    private myPointDirection = 0;
    private myCenterX = 200;
    private myCenterY = 200;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setXCenter(double x2) {
    myCenterX = x2;
  }
  public void setYCenter(double y2) {
    myCenterY = y2;
  }
}
