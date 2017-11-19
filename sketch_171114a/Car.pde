public class Car{
  private CarDNA dna;
  private CarBody carBody;
  private PVector startingPos;
  private boolean flipped;  
  private float fitness, coveredDistance, minWidth, maxWidth, maxHeight, minHeight;
  
  public void randomGen(){
    float width = random(minWidth, maxWidth);
    float height = random(minHeight, maxHeight);
    carBody = new CarBody(startingPos, w, h);  
    PVector Wheel1pos = carBody.randomPoint();
    PVector Wheel2pos = carBody.randomPoint();
  }
}