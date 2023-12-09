class Star {
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*1001);
    myY = (int)(Math.random()*1001);
  }
  public void show() {
    fill((int)(Math.random()*255));
    ellipse(myX, myY, (int)(Math.random()*10), (int)(Math.random()*10));
  }
}
