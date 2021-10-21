int theWidth = 500;
int num = 1;
int numberOfObjects = 20;
Asteroid [] asteroids = new Asteroid[numberOfObjects];
void setup()   
{     
  background(0);
  size(500, 500);
}   
void draw()   
{    
  background(0);
  int scaleRate = 40;
  if (num == 1) {
    for (int index = 0; index < asteroids.length; index++) {
      Asteroid asteroid = new Asteroid();
      asteroids[index] = asteroid;
    }
    num++;
  }
  fill(255, 255, 255);
  for (int index = 0; index < asteroids.length; index++) {
    asteroids[index].move();
    asteroids[index].show();
  }
}  

class Asteroid  
{    
  int changeRate = 2;
  int scaleRate = 40;
  color myColor;
  int x, y, horizontal, vertical;
  Asteroid() {
    x = (int)(Math.random()*450)+25;
    y = 40; 
    myColor = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200));
    horizontal = (int)(Math.random()*scaleRate)+30;
    vertical = (int)(Math.random()*scaleRate)+10;
  } 
  public void show() {
    fill(myColor);
    ellipse(x, y, horizontal, vertical);
  }
  public void move() {
    y += (int)(Math.random()*3);
    x += (int)(Math.random()*3)-1;
    if (y > theWidth) {
      y = -20;
    }
    if (x < 0) {
      x = 500;
    }
    if (x > 500) {
      x = 0;
    }
  }
} 

//create three asteroids that move generally to the bottom of
//the screen but are x independent. They should start off the screen and 
//move to the bottom. Every few seconds.

//Create a little space ship that moves around.
//find the cordinates that are currently contaqined by the rectangle. 
//Make sure all of the asteroids also have all of their cordinates currently.
//If one of the cordinates for the ship matches one for the asteroid, restart the drawing.
