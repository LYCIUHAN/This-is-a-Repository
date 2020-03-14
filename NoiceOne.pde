void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  noiseDetail(1);//描述noise复杂程度

  //两个循环 历遍所有像素点
  for (int y =0; y<height; y++)
  {
    for (int x=0; x<width; x++) 
    {
      float noiseX=(float)x*0.02; //将x从整数转换为小数
      float noiseY=(float)y*0.02;//乘数越小 越柔和

      float brightness =noise(noiseX, noiseY)*255.0;//（noise值在0-1间）
      stroke(brightness);
      point(x, y);
    }
  }
}
