import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
import java.util.*;
import org.jbox2d.callbacks.ContactImpulse;



float yoff = 0.0;        // 2nd dimension of perlin noise

void setup() {
  size(1280, 720);
}

void draw() {
  // set the colors //
  background(0);
  fill(255);
  
  // set the distance //
  Map surface = new Map(1280);
  
  for (int i = 0, i <= surface.distance; i++){
    
  }
  
  // We are going to draw a polygon out of the wave points
  beginShape(); 
  float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= surface.distance; x += 10) {
    // Calculate a posY value according to noise, map to float
    float y = map(noise(xoff), 0, 1, height/2,width/2);    
    
    // Set the vertex
    vertex(x, y); 
    // Increment x dimension for noise
    xoff += 0.05;
  }
  // increment y dimension for noise
  yoff += 0.01;
  
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
}