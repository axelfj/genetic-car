class Particle{
  PVector pos;
  PVector vel;
  PVector acc;
  float ang;
  float mass;
  float friction;
  color c;
  boolean fixed;
  float lifeSpan = 150;
  float decay = 2;

  Particle(float x, float y, float mass, float friction) {
    pos  = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    this.mass = mass;
    this.friction = friction;
    c = color(142, 144, 147);
    fixed = false;
  }

  void calculateFriction() {
    PVector f = vel.copy();
    f.normalize();
    f.mult(-friction);
    applyForce(f);
  }

  void update() {
    if (!fixed) {
      calculateFriction();
      vel.add(acc);
      pos.add(vel);
      acc.mult(0);
    }
    lifeSpan -= decay;
  }
  
  void updatePos(float x,float y) {
    pos.x=x;
    pos.y=y;
  }

  void draw() {
    noStroke();
    fill(c, lifeSpan);
      pushMatrix();
      translate(pos.x,pos.y);
      rotate(-ang);
      ellipse(0,0, mass*5, mass*5);
      popMatrix();
    
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }

  void fix() {
    fixed = true;
  }

  void unfix() {
    fixed = false;
  }

  boolean isDead() {
    return lifeSpan <= 0;
  }
}