int sz=20;
float x,y,velx,vely,gravity;

void setup(){
  size(800,800);
  x=sz/2;
  y=sz/2;
  velx=3; 
  vely=0;
  gravity=1;
}
void draw(){
  background(0);
  ellipse(x,y,sz,sz);
  vely+=gravity;
  x+=velx;
  y+=vely;
  if (y+sz/2>=height){
    y=height-sz/2;
    vely*=-1;
  }
  if (x+sz/2>= width || x-sz/2<=0){
    velx*=-1;
  }
}
