class CarDNA
{
  // Attributes
  private PVector firstWheelPos, secondWheelPos;
  private float carHeight, carWidth;
  private Wheel firstWheel, secondWheel;
  private int fitness;
  private CarBody body;
 
  // Methods  
  CarDNA(PVector firstWheelPos, PVector secondWheelPos, float carHeight, float carWidth)
  {
    //firstWheel = new Wheel();
    
    this.firstWheelPos = firstWheelPos;
    this.secondWheelPos = secondWheelPos;
    this.carHeight = carHeight;
    this.carWidth = carWidth;
  }
}