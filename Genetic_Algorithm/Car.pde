class Car 
{
  
  // Attributes 
  private CarDNA dna;
  private CarDNA[] generations;
  private CarBody body;
  private PVector startingPos;
  private boolean flipped;  
  private float fitness, coveredDistance, minWidth, minHeight, maxWidth, maxHeight;
  
  
  // Methods
  Car(CarDNA dna, PVector startingPos){
    this.dna = randomGen();
    this.startingPos = startingPos;
    flipped = false;
    coveredDistance = 0;
  }
  
  CarDNA randomGen(){
    float width = random(minWidth, maxWidth);
    float height = random(minHeight, maxHeight);    
    PVector firstWheelPos = body.randomPoint();
    PVector secondWheelPos = body.randomPoint();
    dna = new CarDNA(firstWheelPos, secondWheelPos, height, width);
    return dna;
  }
}