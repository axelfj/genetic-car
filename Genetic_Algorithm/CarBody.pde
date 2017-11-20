class CarBody{
                          ///////////////
                          // Attributes//
                          ///////////////
  private float widthBody, heightBody;
  ParticleSystem systems;
  float x,y, lx, ly;
  Body body;
  PImage image;

                          ///////////////
                          // METHODS //
                          ///////////////
                          
  CarBody(PVector pos, float w, float h){
    this.widthBody = w;
    this.heightBody = h;
    BodyDef bd2 = new BodyDef();
    bd2.bullet=true;
    bd2.position.set(box2d.coordPixelsToWorld(new Vec2(40,150)));
    bd2.type = BodyType.STATIC;

    body = box2d.createBody(bd2);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/4);
    sd.setAsBox(box2dW, box2dH);

    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 2;
    fd.restitution = 0.5;
    
    body.createFixture(fd);

    body.setLinearVelocity(new Vec2(0,0));
    body.setAngularVelocity(0);
    
    body.setUserData(this);
    body.setGravityScale(0.5);  
  }
  
  PVector RandomPoint(){
    return new PVector((int) random(widthBody/2, widthBody), (int) random(heightBody/2, heightBody));
  }
  
  void display(){
    
    image = loadImage("car.jpg");
    Vec2 pos = box2d.getBodyPixelCoord(body);
    x = pos.x;
    y = pos.y;
    lx=x;
    ly=y;
    float a = body.getAngle();
    rectMode(PConstants.CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    
    imageMode(CENTER);
    rect(50,50,this.widthBody, this.heightBody);
    //image(image, 50, 50, this.widthBody, this.heightBody);
    imageMode(CORNER);
    popMatrix();
  }
  
  void update(){
     Vec2 pos = body.getPosition();
     Vec2 newPos = new Vec2(pos.x,pos.y - .12);
     pos.set(newPos);
    
  }
  
  boolean onMovement(){
    if(abs(x-lx)<1 && abs(y-ly)<1){
      return false;  
    }else{
      return true;
    }
  }
}



  
  