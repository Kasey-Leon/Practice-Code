class Bouncehomie {
  PVector loc, vel;
  float sz; 
  float speed;

  Bouncehomie (float tempsz, float tempspeed) {
    sz= tempsz;
    loc = new PVector (random (sz, width-sz), random (sz, height-sz)); 
    vel = PVector.random2D();
    speed= tempspeed;
    ;
    vel.mult(speed);
  }


  void display () {
    ellipse (loc.x, loc.y, sz, sz);
  }


  void move () {
    loc.add(vel);
  }


  void wallBounce() {
    if (loc.x +sz/2 > width || loc.x -sz/2 <0 ) {
      vel.x *=-1;
    }
    if (loc.y +sz/2 > height || loc.y -sz/2 <0 ) {
      vel.y *=-1;
    }
  }





  void collideWith (Bouncehomie someOtherBall) {

    if (loc.dist(someOtherBall.loc) < sz/2 + someOtherBall.sz/2) {
      vel = PVector.sub(loc, someOtherBall.loc);
      vel.normalize();
      vel.setMag(speed);
    }
  }
}


class BlackHole{ 
  float sz; 
  float speed;
  
  BBlackHole (float
  
