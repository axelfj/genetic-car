class Map{
                          ///////////////
                          // Attributes//
                          ///////////////
    ArrayList<Vec2> points;
    ChainShape chain;
    Body body;
    Fixture fixture;
    private float distance, posX, posY, initPoint, finalPoint, distanceBetweenPoints;
    private color floor, sky, ground;


                          ///////////////
                          // METHODS //
                          ///////////////
                          
    Map(int distance, color floor, color ground){
        this.distance = distance;
        this.floor = floor;
        this.sky = sky;
        this.ground = ground;
        this.distanceBetweenPoints = 1750;
        posY = 0.0;
        points = new ArrayList();
        createPoints();
    }
    
    void createPoints(){
      posX = -50.0; 
      
      for (float x = 0; x <= 100000*distance; x += distanceBetweenPoints) {
          float y = map(noise(posX), 0, 1, height*0.4,width*0.6);
          Vec2 pos = new Vec2(posX,y);
          points.add(pos);
          posX += 500;
        }
    }
    
    void drawMap(){
        background(0);
        beginShape();  
        fill(255);
        
        posY += 0.01;
        vertex(width, height);
        vertex(0, height);
        endShape(CLOSE);
    }
    
    void display(){
    
    fill(ground);
    beginShape();
    stroke(floor);
    strokeWeight(5);
    for (Vec2 p : points) {
      vertex(p.x, p.y);
    }
    vertex(width, height);
    vertex(0, height);
    endShape(CLOSE);
  }
  
  
    
    void makeBody() {
    BodyDef bd = new BodyDef();
    bd.position.set(0, 0); 
    bd.type = BodyType.KINEMATIC;
    body = box2d.createBody(bd);
    
    // Crear lista de puntos en world
    Vec2[] worldPoints = new Vec2[points.size()];
    for (int i = 0; i < points.size(); i++) {
      worldPoints[i] = box2d.coordPixelsToWorld(points.get(i));
    }
    chain = new ChainShape();
    chain.createChain(worldPoints, worldPoints.length);
    
    fixture = body.createFixture(chain, 1);
    body.setUserData(this);
  }
}
  
  