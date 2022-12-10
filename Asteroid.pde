class Asteroid extends Floater  
{   
  //your code here
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = Math.random()*8-4;
    myXspeed = Math.random()*4-2;
    myYspeed = Math.random()*4-2;
    myPointDirection = (int)(Math.random()*360);
    myCenterX = Math.random()*480 + 10;
    myCenterY = Math.random()*480 + 10;
    corners = 28;
    myColor = color(255, (int)(Math.random()*70), (int)(Math.random()*70));
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 3;
    yCorners[0] = -1;
    xCorners[1] = 5;
    yCorners[1] = -1;
    xCorners[2] = 5;
    yCorners[2] = 1;
    xCorners[3] = 3;
    yCorners[3] = 1;
    xCorners[4] = 3;
    yCorners[4] = 2;
    xCorners[5] = 1;
    yCorners[5] = 2;
    xCorners[6] = 1;
    yCorners[6] = 3;
    xCorners[7] = -1; 
    yCorners[7] = 3;
    xCorners[8] = -1;
    yCorners[8] = 4;
    xCorners[9] = -5;
    yCorners[9] = 4;
    xCorners[10] = -5;
    yCorners[10] = 3;
    xCorners[11] = -3;
    yCorners[11] = 3;
    xCorners[12] = -3;
    yCorners[12] = 2;
    xCorners[13] = -2;
    yCorners[13] = 2;
    xCorners[14] = -2;
    yCorners[14] = 1;
    xCorners[15] = -1;
    yCorners[15] = 1;
    xCorners[16] = -1;
    yCorners[16] = -1;
    xCorners[17] = -2;
    yCorners[17] = -1;
    xCorners[18] = -2;
    yCorners[18] = -2;
    xCorners[19] = -3;
    yCorners[19] = -2;
    xCorners[20] = -3;
    yCorners[20] = -3;
    xCorners[21] = -5;
    yCorners[21] = -3;
    xCorners[22] = -5;
    yCorners[22] = -4;
    xCorners[23] = -1;
    yCorners[23] = -4;
    xCorners[24] = -1;
    yCorners[24] = -3;
    xCorners[25] = 1;
    yCorners[25] = -3;
    xCorners[26] = 1;
    yCorners[26] = -2;
    xCorners[27] = 3;
    yCorners[27] = -2;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
