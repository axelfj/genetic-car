class Wheel{
                          ///////////////
                          // Attributes//
                          ///////////////
  private int ratio, minRatio, maxRatio;
  private PVector center;
  private PImage wheel;
  
  
                          ///////////////
                          // METHODS //
                          ///////////////
                          
  Wheel(int ratio, PVector center){
    this.ratio = ratio;
    this.center = center;
  }
}