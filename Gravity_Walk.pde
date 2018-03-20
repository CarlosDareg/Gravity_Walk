import processing.sound.*;

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

Paredes pp_1,pp_2,pp_3,pp_4;
Paredes pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10;

SoundFile[] file;

int sounds = 4;

Personaje heroe;
Obstaculo p1,p2,p3,p4,p5,p6,p7;

int x;
int y; 
int i;

int sel;


void setup()
{
  frameRate(60);
  size(800,600);
  
  file = new SoundFile[sounds];
  for(int i = 0;i<sounds;i++)
  {
    file[i] = new SoundFile(this, (i) + ".wav");
  }
  
  sel = 0;
  file[0].loop();
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -20);
    
    
  pp_1 = new Paredes(0,height/2,10,height);
  pp_2 = new Paredes(800,height/2,10,height);
  pp_3 = new Paredes(width/2,0,width,10);
  pp_4 = new Paredes(width/2,600,width,10);
    
  pp2 = new Paredes(400,300,100,5);
  pp3 = new Paredes(1000,0,100,5);
  pp4 = new Paredes(1000,0,100,5);
  pp5 = new Paredes(1000,0,100,5);  
  
  pp6 = new Paredes(1000,0,502,5);
  
  pp7 = new Paredes(1000,0,2,100);
  pp8 = new Paredes(1000,0,2,100);
  
  pp9 = new Paredes(1000,0,2,400);
  
  
  heroe = new Personaje(x,y,20,20);
  
  p1 = new Obstaculo(1000,0,15);
  p2 = new Obstaculo(1000,0,15);
  p3 = new Obstaculo(1000,0,15);
  p4 = new Obstaculo(1000,0,15);
  p5 = new Obstaculo(1000,0,15);
  p6 = new Obstaculo(1000,0,15);
  p7 = new Obstaculo(1000,0,15);
  
  keyReleased();

}

void draw()
{
  background(200);
  box2d.step();
  Gravedad();
  
  
  switch(sel)
  {
    case 0:
      background(0,0,255);
      inicio();
      break;
      
    case 1:
      background(0,0,255);
      instrucciones();
      break;
      
    case 2:
      tutorial();
      break;
      
    case 3:
      stage1();
      break;
      
    case 4:
      stage2();
      break;
      
    case 5:
      stage3();
      break;
    
    case 6:
      stage4();
      break;
    
    case 7:
      stage5();
      break;
    
    case 8:
      fin();
      break;
    
    default:
      break;
      
    
  }



}

void Gravedad()
{
  if ((keyPressed == true) && ((key == 'w') || (key == 'W'))) 
    {
      box2d.setGravity(0,20);
    }
    if ((keyPressed == true) && ((key == 's') || (key == 'S'))) 
    {
      box2d.setGravity(0,-20);
    }
}

void keyReleased()
{
  if (key == ENTER)
  {
    sel ++;
  }
}

void meta(int xx, int yy, int w_)
{
  pushMatrix();
  fill(0,255,0,100);
  rect(xx,yy,w_,w_);
  popMatrix();
}

void tr(int x_, int y_, int w_, int h_)
{
  pushMatrix();
  fill(#FC0008,50);
  rectMode(CORNERS);
  rect(x_,y_,w_,h_);
  popMatrix();
}

void keyPressed()
{
  switch(key)
  {
    case '7':
    file[0].stop();
    file[1].stop();
    file[2].stop();
    file[3].stop();
    file[0].loop();
    break;
    
    case '8':
    file[0].stop();
    file[1].stop();
    file[2].stop();
    file[3].stop();
    file[1].loop();
    break;
    
    case '9':
    file[0].stop();
    file[1].stop();
    file[2].stop();
    file[3].stop();
    file[2].loop();
    break;
    
    case '0':
    file[0].stop();
    file[1].stop();
    file[2].stop();
    file[3].stop();
    file[3].loop();
    break;
    
    default:
    break;
  }
}

  
