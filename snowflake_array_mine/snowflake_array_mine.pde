int count=100;
PImage sunflower;
PVector [] loc = new PVector[count];
PVector [] vel = new PVector[count];
PVector [] acc = new PVector[count];
float [] sz = new float [count];

void setup(){
  size (800,800);
  sunflower= loadImage("sunflower.jpg");
  
  for (int i = 0; i < count; i ++){
    sz[i] = random (20,40);
    loc [i] = new PVector ( random (width), radnom (- height * 1, -sz [i]/2));
    vel [i] = new PVector (0, random(.3));
    acc [i] = new PVector (0,.01);
  }
  
}


void draw (){
  background (0);
  for (int i = 0; i< count; i ++){
     
    vel[i].add (acc[i]);
    loc[i].add(vel [i]);
    vel[i].add limit(3);
    
    image (sunflower, 0,0,sz[i], sz[i]);
  
