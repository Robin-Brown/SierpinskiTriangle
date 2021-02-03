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
public void sierpinski(int x, int y, int L) 
{
  if(L <= 20)
  {
    triangle(x, y, x+L, y, x+L/2, y-L);
  }
  else
  {
    sierpinski(x, y, L/2);
    sierpinski(x+L/2, y, L/2);
    sierpinski(x+L/4, y-L/2, L/2);
  }
}
