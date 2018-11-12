//Randon Walk Class - Objeto
class Walker {
  float x;
  float y;
  
  Walker() {
   x = width/2;
   y = height/2;
  }
  
  void display(){
    stroke(0);
    point(x,y);
  }

  void step(){
   float r = random(1);
   if (r < 0.8){
     x++;
   }else if(r < 0.1){
     x--;
   }else if(r < 0.1){
     y++;
   }else {
     y--;
   }
  }
}

Walker w;

void setup(){
  size(640,360);
  w = new Walker();
  background(255);
}

void draw(){
  w.step();
  w.display();
}
