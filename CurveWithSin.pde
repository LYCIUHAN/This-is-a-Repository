float offset=0.0;//计数器变量

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

  for (float a=0.0; a<TWO_PI; a+=0.2)
  {
    float x=width/2+cos(a+offset)*r;
    float y=height/2+sin(a+offset)*r;
    
    point(a*30.0,y);
  }
      offset += 0.1;//offset每次循环都有增量
}
