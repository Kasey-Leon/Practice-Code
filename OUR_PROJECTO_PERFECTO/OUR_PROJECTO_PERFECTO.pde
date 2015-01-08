ArrayList <Stars> jfountain = new ArrayList <Stars> ();

void setup () {
  size(1000, 800);

}
void draw() {
  PImage nativityy;
  nativityy = loadImage ("nativity.jpg");
  background(255);

  image(nativityy, 0, 0, 1000, 800);

  PImage babyJesus;
  babyJesus = loadImage ("Jesus.jpeg");
  image (babyJesus, 200, 300, 160, 300);



  jfountain.add(new Stars());
  for (int i = 0; i < jfountain.size (); i++) {
    Stars j =  jfountain.get(i); 
    j.display(); 
    j.move();

   
  }




}


class Stars {
  PVector loc, vel, acc;
  float sz;

 Stars () {

    loc = new PVector (width/2, height *.1);
    vel = new PVector (random (-3, 3), random (-4, -2));
    acc = new PVector (0, .1);
    sz= 5;
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
    fill(255, 255, 255, 200);
    noStroke();
  }

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

void leaveScreen(){


}









