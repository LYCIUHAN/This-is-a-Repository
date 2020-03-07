import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

//李育婵 2020.3
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
