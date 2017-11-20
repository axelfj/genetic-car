class CarDNA{
                          ///////////////
                          // Attributes//
                          ///////////////
  private CarBody body;
  private PVector firstWheelPos, secondWheelPos;  
  private Wheel firstWheel, secondWheel;
 
 
                           ///////////////
                          // METHODS //
                          ///////////////
  CarDNA(CarBody cb, Wheel fw, Wheel sw){
    this.body = cb;
    this.firstWheel = fw;
    this.secondWheel = sw;
    this.firstWheelPos = firstWheel.getPos();
    this.secondWheelPos = secondWheel.getPos();
  }
  void selection(){}
  void fitness(){}
  
}