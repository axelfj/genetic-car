class TractionWheel extends Wheel{
  
                          //////////////
                          //Attributes//
                          //////////////
  private float strength;


                          ///////////////
                          //  METHODS  //
                          ///////////////
                          
  TractionWheel(PVector center){
    super(center);
    this.strength = super.ratio / 2;
    
  }
}