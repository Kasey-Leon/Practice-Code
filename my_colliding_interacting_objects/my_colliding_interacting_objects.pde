Bouncehomie [] bouncenigs = new Bouncehomie [150];
void setup () {
  size(800, 800);
  for (int i = 0; i <bouncenigs.length; i++) {
    bouncenigs [i] = new Bouncehomie (random (30, 100), random (.7, 12));
  }
}


void draw() {
  background (0);
  for ( int i=0; i < bouncenigs.length; i++) {
    bouncenigs[i].display();
    bouncenigs[i].move();
    bouncenigs[i].wallBounce();
    for ( int a=0; a < bouncenigs.length; a++) {
      if (i!=a) {
        bouncenigs[i].collideWith(bouncenigs[a]);
      }
    }
  }
}



class Bouncehomie {
  PVector loc, vel;
  float sz; 
  float speed;

  Bouncehomie (float tempsz, float tempspeed) {
    sz= tempsz;
    loc = new PVector (random (sz, width-sz), random (sz, height-sz)); 
    vel = PVector.radnom2D();
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

