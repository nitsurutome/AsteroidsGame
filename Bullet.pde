class Bullet extends Floater {
  public Bullet(Spaceship bob)
  {
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myXspeed = bob.getX();
    myYspeed = bob.getY();
    myPointDirection = bob.getPointDirection();
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
