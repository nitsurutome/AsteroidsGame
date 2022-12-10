class Bullet extends Floater {
  public Bullet(Spaceship b)
  {
    myCenterX = b.getCenterX();
    myCenterY = b.getCenterY();
    myXspeed = b.getX();
    myYspeed = b.getY();
    myPointDirection = b.getPointDirection();
    accelerate(-9);
  }
  public void show()
  {
    fill(0, 255, 60);
    stroke(0, 255, 60);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
