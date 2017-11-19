public class CarDNA{
  private PVector wheel1Pos, wheel2Pos;
  private float carHeight, carWidth;
  private Wheel wheel1,wheel2;
  private int fitness;
 
      
  public carDNA(PVector wheel1Pos, PVector wheel2Pos, float carHeight, float carWidth)
  {
    this.wheel1Pos = wheel1Pos;
    this.wheel2Pos = wheel2Pos;
    this.carHeight = carHeight;
    this.carWidth = carWidth;
  }
}