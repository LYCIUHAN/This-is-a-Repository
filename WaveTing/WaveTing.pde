int numWaves =6;
Wave[] waves;
void setup()
{
  size(800,600);
  
  waves = new Wave[numWaves];
  
  for(int i = 0; i<numWaves; i++)
  {
    waves[i] = new Wave();
  }
}

void draw()
{
  background(255);  
   for (int i = 0; i< numWaves;i++)
   {
     waves[i].draw();
   }
   
}
