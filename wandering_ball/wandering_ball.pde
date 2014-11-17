float locX, locY; //locationX, locationY
float velX, velY; //velocityX, velocityY
float accX, accY; //acclerationX, accelerationY
float sz;

void setup() {

  size(800,800);

  locX= width/2;
  locY= height/2;

  velX= 0;
  velY= 0;

  accX= random (-.1, .1);
  accY= random (-.1, .1);
  
  sz=30;

}

  void draw() {

    accX = random (-.1, .1);
    accY = random (-.1,.1);
   
   
    velX += accX;
    velY += accY;
  
  locX += velX;
  locY += velY;
  
  ellipse(locX, locY, sz, sz);
  
  if (locX - sz/2> width){
  
    locX= -sz/2;
  
}
  
 
  if (locX + sz/2 < 0){
  
    locX= width + sz/2;
  
}
  
  
  if (locY -sz/2 > height){
    locY = height + sz/2;
  }
  
  if ( locY + sz/2<0){
    locY = height + sz/2;
  }
  }
