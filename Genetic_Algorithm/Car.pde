class Car {
                          //////////////
                          //Attributes//
                          //////////////
  private CarDNA dna;
  private ArrayList<CarDNA> generation;
  private CarBody body;
  private PVector startingPos;
  private boolean flipped;  
  private int generations;
  private float fitness, coveredDistance, minWidth, minHeight, maxWidth, maxHeight, w, h;
  Wheel firstWheel, secondWheel;
  
  
  
                          ///////////////
                          //  METHODS  //
                          ///////////////
                          
  Car(int generations){
    this.startingPos = new PVector(45,100);
    this.generations = 0;
    this.generation = new ArrayList(generations);
    fitness = 0;
    coveredDistance = 0;
    this.randomGene();
  }    
  
  void randomGene(){
    // Acá setteamos el width & el height del carrito //
    // Para crear el body del carro. //
    w = random(minWidth, maxWidth);
    h = random(minHeight, maxHeight);
    body = new CarBody(startingPos, w, h);
    
    // body tiene una función que retorna un PVector random dentro del w & h //
    // En estas posiciones se pondrán las llantas //
    PVector Wheel1Pos = body.RandomPoint();
    PVector Wheel2Pos = body.RandomPoint();
    
    // Según factor de 50% se elegirá una llanta u otra //
    if (random(0,1)> 0.5)
    {
      firstWheel = new TractionWheel(Wheel1Pos);
    } else{
      firstWheel = new Wheel(Wheel1Pos);
    }
    if (random(0,1)> 0.5){
      secondWheel = new TractionWheel(Wheel2Pos);
    } else{
      secondWheel = new Wheel(Wheel2Pos);
    }
    
    // Con todos estos datos creamos nuestro nuevo DNA //    
    this.dna = new CarDNA(body, firstWheel, secondWheel);
    
  }
  
  float getFitness(){
    this.fitness = coveredDistance;
    if (flipped){
      fitness *= 0.25;
    }
    return fitness;
  }
  
  boolean isFlipped(){
    return flipped;
  }


  void display(){}
}