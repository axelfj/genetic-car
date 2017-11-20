class CarBody{
                          ///////////////
                          // Attributes//
                          ///////////////
  private float widthBody, heightBody;
  private Body body;

                          ///////////////
                          // METHODS //
                          ///////////////
                          
  CarBody(PVector pos, float w, float h){
    this.widthBody = w;
    this.heightBody = h;
    BodyDef bd2=new BodyDef();
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
    
  }
  
  PVector RandomPoint(){
    return new PVector((int) random(widthBody/2, widthBody), (int) random(heightBody/2, heightBody));
  }
  
}