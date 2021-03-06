Particle[] particles;//建立数组

int numParticles=30;//数组长度为"30"

float maxDistance=150.0;

void setup()
{
  size(800, 800);
  particles= new Particle[numParticles];

  for (int i=0; i<numParticles; i++)
  {
    particles[i]=new Particle(); //引用数组中某个对象
  }
}
void draw()
{
  background(0);  
  for (int i=0; i<numParticles; i++)
  {
    particles[i].update();//调用代码 绘制粒子
  }
  stroke(255);
  for (int i=0; i<numParticles; i++)//创建循环检查粒子和其他所有粒子的距离(嵌套循环)
  {
    for (int j=0; j<numParticles; j++)
    {
      if (i!=j)//i j不相等

        if (dist(particles[i].xpos, particles[i].ypos, particles[j].xpos, particles[j].ypos)<maxDistance)//粒子距离180以下就画一条线
        {
          line(particles[i].xpos, particles[i].ypos, particles[j].xpos, particles[j].ypos);
        }
    }
  }
}

//===============================分界线========================================================
class Particle
{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  Particle() 
  {
    xpos= random(0, width);
    ypos=random(0, height);

    xspeed=random(-3, 3);
    yspeed=random(-3, 3); //粒子朝随机方向运动
  }

  void update()//更新粒子位置
  {
    xpos+=xspeed;
    ypos+=yspeed;

    //检查粒子是否离开屏幕
    if (xpos<0)
    {
      xpos=0;
      xspeed*=-1.0;
    }
    if (xpos >width)
    {
      xpos=width;
      xspeed*=-1.0;
    }

    if (ypos<0)
    {
      ypos=0;
      yspeed*=-1.0;
    }
    if (ypos >height)
    {
      ypos=height;
      yspeed*=-1.0;
    }
  }
} 
