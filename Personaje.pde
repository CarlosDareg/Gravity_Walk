class Personaje
{
  int x,y,w,h;
  int dx = 3;
  int dy = 3;
  
  
  Body c;
  
  Personaje(int x_, int y_, int w_, int h_)
  {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    
    BodyDef bd = new BodyDef();      
    bd.type = BodyType.DYNAMIC;
    Vec2 xyEnBox2 = box2d.coordPixelsToWorld(new Vec2(x,y));
    bd.position.set(xyEnBox2);
    c = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    
    sd.setAsBox(box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0;
    fd.restitution = 0.5;
    
    c.createFixture(fd);
    
  }
  
  
  void mover() {
    Vec2 move = new Vec2(0, 0);
    Vec2 pos = c.getWorldCenter();
 
    
    if ((keyPressed == true) && ((key == 'a') || (key == 'A'))) 
    {
      move.x -= 200;
    }
    if ((keyPressed == true) && ((key == 'd') || (key == 'D'))) 
    {
      move.x += 200;
    }
    c.applyForce(move, pos);
  }
  
  
  void display()
  { 
    Vec2 pos = box2d.getBodyPixelCoord(c);
    float a = c.getAngle();
    
    //ingresar imagen de personaje.
    pushMatrix();
    translate(pos.x,pos.y);
    fill(255,0,0);
    rotate(-a);
    stroke(0);
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
    
    mover();
    
  }
  
  void reinicio(int x, int y)
  {
    Vec2 pos = box2d.getBodyPixelCoord(c);
    if(pos.x > 795 || pos.x < 4 || pos.y > 595 || pos.y < 5)
    {
      heroe.reset(x , y);
    }
  }
  
  void reset(int x_, int y_)
  {
    c.setTransform(box2d.coordPixelsToWorld(x_,y_),0);
    c.setLinearVelocity(new Vec2(0,0));
    c.setAngularVelocity(0);
    box2d.setGravity(0,-20);
  }

void goal(int x1,int x2,int y1,int y2,int x_,int y_)
{
   Vec2 pos = box2d.getBodyPixelCoord(c);
   if(pos.x > x1 && pos.x < x2 && pos.y > y1 && pos.y < y2)
   {
     sel ++;
     
     reset(x_,y_);
   }
   
}

void trampa(int x1, int x2, int y1, int y2, int x, int y)
{
  Vec2 pos = box2d.getBodyPixelCoord(c);
  if(pos.x > x1 && pos.x < x2 && pos.y > y1 && pos.y < y2)
  {
    reset(x , y);
  }
}

 
}
