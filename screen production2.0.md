// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

//李育婵 2020.3
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;


float x = 100;
float y = 100;
float xspeed = 5.5;
float yspeed = 5;

void setup() {
  size(1280, 800);
  smooth();
  frameRate(32.0);
  minim=new Minim(this);
  song=minim.loadFile("Quiet.mp3");
  song.loop();
}

void draw() {
  background(68, 125, 10);
  float songIntensity=song.mix.level();
  // Add the current speed to the position.
  x = x + xspeed*songIntensity*5;
  y = y + yspeed*songIntensity*5;

  if ((x > width) || (x <0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  stroke(0);
  strokeWeight(2);

  target(x, y, 5, 38);

  target(x+random(-500, 500), y+random(-500, 500), 3, 18);
  target(x+random(-500, 500), y+random(-500, 500), 3, 18);
  target(x+random(-500, 1000), y+random(-500, 1000), 3, 18);
}
void target(float xPos, float yPos, int numRings, int ringsize)

{
  noStroke();
  for (int i=numRings; i>0 ; i--)
  {
    int size=i*ringsize;
    int gray=i*(255/numRings);
    fill(gray+50,gray+100,gray+5);
    ellipse(xPos, yPos, size,size);
  }
}
