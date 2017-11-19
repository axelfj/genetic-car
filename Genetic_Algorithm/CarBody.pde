class CarBody
{
  // Attributes //
  PVector pos;
  private float widthBody, heightBody;
  
  
  
  // Methods //
  CarBody(float widthBody, float heightBody, PImage image){
    this.pos = randomPoint();
  }
  
  PVector randomPoint()
  {
    float x = random(widthBody/2, widthBody);
    float y = random(heightBody/2, heightBody);
    PVector position = new PVector(x, y);
    return position;
  }
  
}