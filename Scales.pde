
void setup()
{
  size(1000, 1000);
  //feel free to change the size
}

void draw() {
  background(0, 0, 0);
  boolean shift = true;
  for (int y = -10; y<  1100; y+=80) {
    for (int x= -10; x<1100; x+=50) {
      if (shift == true) {
        scale(x-5, y-5);
      } else {
        scale(x, y);
      }
    }
    if (shift ==true) 
    shift =false;
    else shift = true;
  }
}
void scale(int x, int y) {
  int u = 100 + (int)(Math.random()*140);
  fill(0, u, u);
  bezier(x-20, y, x-100, y+150, x+100, y+150, x+80, y);
}


