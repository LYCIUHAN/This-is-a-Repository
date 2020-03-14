void setup()
{
  size(500,500);
}
void draw()
{
  background(0,0,0);
 
  float piAmt=map(mouseX,0,width,0,PI*2.0);
  
  println(piAmt);
  arc(width/2,height/2,250,250,0,piAmt);
}
