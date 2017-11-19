class CarBody{
  // Attributes //
  private PVector position;
  private float widthBody;
  private float heightBody;
  
  // Methods //
  CarBody(PVector position, float widthBody, float heightBody){
    this.position = randomPoint();
    this.widthBody = widthBody;
    this.heightBody = heightBody;
  }
  
  PVector randomPoint()
  {
    float x = random(widthBody/2, widthBody);
    float y = random(heightBody/2, heightBody);
    PVector position = new PVector(x, y);
    return position;
  }
}