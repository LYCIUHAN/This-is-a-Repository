
import controlP5.*;

//GUI 图形用户界面(graphical user interface)
import controlP5.*;
ControlP5 gui;


Slider backgroundredSlider;//改变背景颜色(滑块)
Slider backgroundblueSlider;
Slider backgroundgreenSlider;
void setup()
{
 size(500,500) ;
 
 gui=new   ControlP5(this);
 backgroundredSlider=gui.addSlider("red").setPosition(20,20) .setRange(0,255);
 backgroundgreenSlider=gui.addSlider("green").setPosition(20,40) .setRange(0,255);
 backgroundblueSlider=gui.addSlider("blue").setPosition(20,60) .setRange(0,255);
 
}
 
 void draw()
 {
  background(backgroundredSlider.getValue(),backgroundgreenSlider.getValue(),backgroundblueSlider.getValue()); 
 }
 
