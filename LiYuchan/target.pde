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
