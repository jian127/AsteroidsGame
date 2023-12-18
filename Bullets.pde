class Bullets extends Floater {
  Bullets(Spaceship bob) {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getDirection();
    accelerate(0.6);
    myColor = color(255,193,203);
  }
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }

  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
