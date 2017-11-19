class Car{
  // Attributes //
  private CarDNA dna;
  private CarBody body;
  private PVector startingPos;
  private boolean flipped;  
  private float fitness, coveredDistance, minWidth, maxWidth, maxHeight, minHeight;
  
  
  // Methods //  
  void randomGen(){
    float width = random(minWidth, maxWidth);
    float height = random(minHeight, maxHeight);
    body = new CarBody(new PVector(20,30), width, height);  
    
    PVector firstWheelPos = body.randomPoint();
    PVector secondWheelPos = body.randomPoint();
    dna = new CarDNA(firstWheelPos, secondWheelPos, height, width);
    
  }
  
  void movement(){
    
  }
}