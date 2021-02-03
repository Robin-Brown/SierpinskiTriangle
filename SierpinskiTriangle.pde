public void setup()
{
  size(650, 650);
  background(158, 162, 168);
}
public void draw()
{
  noStroke();
  fill(250);
  sierpinski(0, 650, 650);
}
public void mouseDragged()
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  {
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
