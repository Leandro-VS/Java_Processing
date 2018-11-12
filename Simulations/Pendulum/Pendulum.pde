PVector origin;
PVector bob;
float len;

float angle = PI/4;
float aVel = 0.0;
float aAcc = 0.0;
float G = 0.01;

void setup(){
  size(640,360);
  
  len = 180;
  origin = new PVector(width/2,0);
  bob = new PVector(width/2,len);

}

void draw(){
 background(255); 
 
 line(origin.x, origin.y, bob.x, bob.y);
 ellipse(bob.x, bob.y, 32,32);
 
 bob.x = origin.x + len * sin(angle);
 bob.y = origin.y + len * cos(angle);
 
 aAcc = -G * sin(angle);
 
 angle += aVel;
 aVel += aAcc;
 
 aVel *= 0.99;
 
}
