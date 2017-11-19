class CarBody{
  private PVector position;
  private float widthBody;
  private float heightBody;
  
  public CarBody(PVector position, float widthBody, float heightBody){
    this.pos = pos;
    this.w = w;
    this.h = h;
  }
  
  public PVector randomPoint(){
    float x = random(w/2, w);
    float y = random(h/2, h);
    PVector position = new PVector(x, y);
    return position;
  }
}