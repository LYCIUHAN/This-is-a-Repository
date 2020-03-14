
void setup()
{
  size(500, 500);
}
void draw()
{
  background(0, 0, 0);
  noFill();
  stroke(255);
  
  float r=200.0;

  for (float a=0.0; a<TWO_PI; a+=0.02)
  {
    float x=width/2+cos(a)*r;
    float y=height/2+sin(a)*r;
    
    point(x,y);
  }
}
