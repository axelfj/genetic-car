

void setup() {
  size(1280,720);
  background(255);
  noLoop();
}

void draw(){
  // Rectangle creation, this is going to be our car by the moment 
  // the ctor works this way:
  //      rect(posX,posY,width,height) 
  rect(width/2, height/2,50,50);
  
  // Circle creation, this is going to be our wheels by the moment 
  // the ctor works this way:
  //      rect(posX,posY,width,height)   
  
  ellipse(width/2, height/2, 50, 50);
  ellipse(width/2 +100, height/2, 50, 50);
  
}