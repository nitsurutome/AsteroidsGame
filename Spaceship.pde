class Spaceship extends Floater  
{   
  //your code here
  public Spaceship()
  {
    corners = 20;
    myColor = color(255);
    myPointDirection = 180;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myCenterX = 250;
    myCenterY = 250;
    xCorners[0] = 1;
    yCorners[0] = 5;
    xCorners[1] = 1;
    yCorners[1] = 4;
    xCorners[2] = 3;
    yCorners[2] = 4;
    xCorners[3] = 3;
    yCorners[3] = 3;
    xCorners[4] = 4;
    yCorners[4] = 3;
    xCorners[5] = 4;
    yCorners[5] = 2;
    xCorners[6] = 5;
    yCorners[6] = 2;
    xCorners[7] = 5;
    yCorners[7] = 1;
    xCorners[8] = 9;
    yCorners[8] = -1;
    xCorners[9] = 6;
    yCorners[9] = -2;
    xCorners[10] = -6;
    yCorners[10] = -2;
    xCorners[11] = -9;
    yCorners[11] = -1;
    xCorners[12] = -5;
    yCorners[12] = 1;
    xCorners[13] = -5;
    yCorners[13] = 1;
    xCorners[14] = -4;
    yCorners[14] = 2;
    xCorners[15] = -4;
    yCorners[15] = 3;
    xCorners[16] = -3;
    yCorners[16] = 3;
    xCorners[17] = -3;
    yCorners[17] = 4;
    xCorners[18] = -1;
    yCorners[18] = 4;
    xCorners[19] = -1;
    yCorners[19] = 5;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public double getX() {
    return myXspeed;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getY() {
    return myYspeed;
  } 
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public void setPointDirection(double p) {
    myPointDirection = p;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
