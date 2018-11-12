int [] randomCounts;
int [] stuff;

void setup(){
  size(640, 240);
  randomCounts = new int[20];
  stuff = new int [5];
  
  stuff[0] = 1;
  stuff[1] = 1;
  stuff[2] = 2;
  stuff[3] = 3;
  stuff[4] = 3;
}

void draw(){
  background(255);
  
  int index = int(random(stuff.length));
  randomCounts[index]++;
  
  stroke(0);
  fill(175);
  int w = width/randomCounts.length;
  
  for(int x = 0; x < randomCounts.length; x++){
    rect(x*w, height - randomCounts[x], w - 1, randomCounts[x]);
  }
}
