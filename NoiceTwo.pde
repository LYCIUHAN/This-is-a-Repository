float time = 0.0;//形成动画

void setup()
{
  size(500, 500);
}


void draw()
{
  background(0);
  noiseDetail(1);//描述noise复杂程度

  //两个循环 历遍所有像素点
  for (int y =0; y<height; y+=10)
  {  
    for (int x=0; x<width; x+=10) 
    {
      float noiseX=(float)x*0.02; //将x从整数转换为小数
      float noiseY=(float)y*0.02;//乘数越小 越柔和

      float angle =noise(noiseX, noiseY, time)*TWO_PI;//（noise值在0-1间）
      stroke(255);

      pushMatrix();
      translate(x, y);
      rotate(angle); 
      line(0, 0, 5, 5);
      popMatrix();
    }
  }
  time += 0.01;
}
