public void setup()
{
  size(1000, 1000);
  background(255);
}
public void draw()
{
  background(255);
  sierpinski(0, 1000, mouseX);
}

public void sierpinski(int x, int y, int len) 
{
  fill(0);
  noStroke();
  if(len <= 10) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else {
    if(len >= 50) {
      sierpinski2(x + len/4, y - len/2, len/2);
    }
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}

public void sierpinski2(int x, int y, int len) {
  fill(0);
  noStroke();
  if(len <= 10)
    triangle(x, y, x + len, y, x + len/2, y + len);
  else {
    if(len >= 50) {
      sierpinski(x + len/4, y + len/2, len/2);
    }
    sierpinski2(x, y, len/2);
    sierpinski2(x + len/2, y, len/2);
    sierpinski2(x + len/4, y + len/2, len/2);
  }
  //if(len > 50)
    //sierpinski(len/2, 1000 - len/2, len/2);
}
