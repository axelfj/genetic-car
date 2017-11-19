
class Car 
{
  private CarDNA dna;
  private CarBody body;
  private PVector startingPos;
  private boolean flipped;  
  private float fitness, coveredDistance, minWidth, maxWidth, maxHeight, minHeight;
  
  void randomGen(){
    float width = random(minWidth, maxWidth);
    float height = random(minHeight, maxHeight);
    //body = new CarBody(0, width, height);  
    PVector Wheel1pos = body.randomPoint();
    PVector Wheel2pos = body.randomPoint();
  }
}