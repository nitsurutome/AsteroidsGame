
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[100];
ArrayList <Asteroid> rock;
ArrayList <Bullet> laser;

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  rock = new ArrayList <Asteroid>();
  laser = new ArrayList <Bullet>();
  for (int i = 0; i < 10; i++) {
    rock.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  //asteroid dissapear
  for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
    if (dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rock.get(i).getCenterX(), (float)rock.get(i).getCenterY()) < 15  )
    {
      rock.remove(i);
      i--;
    }
  }
  //laser maker
  for (int i = 0; i < laser.size(); i++)
  {
    laser.get(i).show();
    laser.get(i).move();
  }
  //destroy rock and laser
  int l;
  int r;
  for (l = 0; l < laser.size(); l++) {
    for (r = 0; r < rock.size(); r++) {
      if (dist((float)rock.get(r).getCenterX(), (float)rock.get(r).getCenterY(), (float)laser.get(l).getCenterX(), (float)laser.get(l).getCenterY()) < 15)
      {
        laser.remove(l);
        rock.remove(r);
        r--;
        break;
      }
    }
  }
}

public void keyPressed()
{
  if (key == 'w') {
    bob.accelerate(-1);
  }
  if (key == 's') {
    bob.accelerate(1);
  }
  if (key == 'a') {
    bob.turn(-10);
  }
  if (key == 'd') {
    bob.turn(10);
  }
  if (key == 'r') {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.turn((int)(Math.random()*360));
    bob.myCenterX = Math.random()*500;
    bob.myCenterY = Math.random()*500;
  }
  if (key == ' ') {
    laser.add(new Bullet(bob));
  }
}
