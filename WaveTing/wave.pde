class Wave
{
  float offset;//表示运动距离
  float offsetspeed;
  float waveheight;
  float circlesize;//粒子大小
  float totallength;//振幅
  Wave() 
  {
   offset=random(0,1); 
   offsetspeed=random(0.01,0.1);//改小，则移动慢
   waveheight=random(50,300);
  
   totallength=TWO_PI*random(1.0,10.0);
    
    circlesize=random(1,10);
  } 


  void draw()
  {
    fill(0); 

    for (float a=0; a<totallength;a+=0.1)
    {
      float angle  = a+ offset;
      
      if(angle>totallength )//使曲线不再离开屏幕
      angle=angle-totallength;
      
      float x =map(angle,0,totallength,0,width);
      float y = height/2+sin(angle)*waveheight;
     
       
      ellipse(x,y,circlesize,circlesize);
    } 
    offset += offsetspeed;
    
    if(offset>TWO_PI )
    {
      offset = 0.0;
    }
  } 
}
