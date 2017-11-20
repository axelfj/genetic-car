                              /////////////
                              // Imports //
                              /////////////
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
import controlP5.*;

                              ////////////////
                              // Attributes //
                              ////////////////

Box2DProcessing box2d;
Body body;
ControlP5 control;
Car carry;
static Map surface;
PImage firstImage, bodyCar, firstWheel, secondWheel, background;
boolean algorithm;
Textfield controlDistance, controlGenerations, getBoolean;
Button b;
ArrayList<Car> population;
int distance, generations, iterator, iterPopulation;

                              /////////////
                              // Methods //
                              /////////////
void setup() {
  size(1280, 720);
  frameRate(60);
  initConfiguration();
  firstImage = loadImage("bg.jpg");
  distance = 0;
  algorithm = false;
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  createPopulation();
}

void draw(){
  if(b.isPressed() == false){
    image(firstImage, 0, 0);
    fill(255);
  }
  else{
    
    begin();
    image(firstImage, 0, 0);  
  }
  if (algorithm == true){
    surface.display();
    surface.makeBody();
    population.get(0).display();
    population.get(0).updateSystem();
    
  }
}


void initConfiguration(){
  PFont font = createFont("Arial", 25);
  control = new ControlP5(this);
  controlDistance = control.addTextfield("Distance (KM)")
    .setPosition(width-250, height-400)
    .setSize(200, 50)
    .setFont(font)
    .setFocus(false)
    .setAutoClear(false)
    .setColorBackground(color(128));
    
  controlGenerations = control.addTextfield("Generations")
    .setPosition(width-250, height-250)
    .setSize(200, 50)
    .setFont(font)
    .setFocus(false)
    .setAutoClear(false)
    .setColorBackground(color(128));
  
  b = control.addButton("Continue")
    .setPosition(width-250, height-100)
    .setSize(200,50)
    .setFont(font)
    .setColorBackground(color(154))
    .setColorForeground(color(54))
    .setValue(0)
    .setUserInteraction(true);
  
}
void begin(){
  distance = int(controlDistance.getText());
  generations = int(controlGenerations.getText());
  if (distance > 0 || generations > 0){
    control.get("Distance (KM)").hide();
    control.get("Generations").hide();
    control.get("Continue").hide();
   
    firstImage = loadImage("morImg.jpg");
    surface = new Map(distance, color(76,153,0), color(51,102,0));
    algorithm = true;
  }
  else{
    algorithm = false;
  } 
}


void createPopulation(){
  iterPopulation = 20;
  population = new ArrayList(iterPopulation);
  for (int i = 0; i < iterPopulation; i++){
    Car carry = new Car(this.generations);
    population.add(carry);
  }
}