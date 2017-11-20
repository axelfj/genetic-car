class Wheel{
                          ///////////////
                          // Attributes//
                          ///////////////
  private float ratio, minRatio, maxRatio;
  private PVector center;
  private PImage wheel;
  
  
                          ///////////////
                          // METHODS //
                          ///////////////
                          
  Wheel(PVector Center){
    minRatio = 10;
    maxRatio = 100;
    this.center = center;
    this.ratio = random(minRatio, maxRatio);
  }
  
  PVector getPos(){
    return center;
  }
  
  void display(){}
}