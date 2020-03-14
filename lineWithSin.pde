float sinValue=0.0;

void setup()
{
  size(500, 500);
}
void draw()
{
  background(0, 0, 0);

  float yPos= sin (sinValue)*250;
 float lineWidth = sin(sinValue)*100.0;
 
  println(yPos);
  stroke(255);
  line(width/2-lineWidth,height/2+yPos,width/2+lineWidth,height/2+yPos);
  
  sinValue += 0.05;
}
