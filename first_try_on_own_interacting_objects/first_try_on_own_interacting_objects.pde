Bouncehomie [] bouncethings = new Bouncehomie [150];
void setup () {
  size(800, 800);
  for (int i = 0; i <bouncethings.length; i++) {
    bouncethings [i] = new Bouncehomie (random (5, 30), random (.7, 4));
  }
}


void draw() {
  background (0);
  for ( int i=0; i < bouncethings.length; i++) {
    bouncethings[i].display();
     bouncethings[i].move();
     bouncethings[i].wallBounce();
    for ( int a=0; a <  bouncethings.length; a++) {
      if (i!=a) {
         bouncethings[i].collideWith( bouncethings[a]);
      }
    }
  }
}


