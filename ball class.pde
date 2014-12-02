Ball x;

void setup(){
  size(700,700);
  x = new Ball();
}

void draw(){
  background (0);
  x.move();
  x.bounce();
  x.display();
}


class Ball{
  
  float sz; 
  PVector loc, vel; 
  
  Ball(){
    sz=30;
    loc = new PVector (width/2, height/2);
    vel = PVector.random2D();
  }
  
  void display(){
    ellipse(loc.x, loc.y, sz,sz);
  }
   void move (){
     loc.add(vel);
   }
   
   void bounce (){
     if (loc.x +sz/2 > width || loc.x- sz/2<0){
       vel.x *=-1;
     }
     if (loc.y +sz/2> height || loc.y -sz/2<0){
       vel.y *=-1;
     }
   }
}
