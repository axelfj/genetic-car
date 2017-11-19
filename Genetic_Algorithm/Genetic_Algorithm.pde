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

ControlP5 control;
Car carry;
static Map surface;
PImage background, bodyCar, firstWheel, secondWheel;
boolean algorithm;
Textfield controlDistance, controlGenerations;
int distance, generations;
                              /////////////
                              // Methods //
                              /////////////
void setup() {
  //fullScreen();
  size(1280, 720);
  frameRate(60);
  initConfiguration();
  background = loadImage("bg.jpg");
  //nextScreen = false;
  distance = 0;
  
}

void draw() {
  if (algorithm == false){
    image(background, 0, 0);
    fill(255);
  }
  else{
    showAlgorithm();
    surface.drawMap();
    
  }
}

void initConfiguration(){
  PFont font = createFont("Arial", 25);
  control = new ControlP5(this);
  controlDistance = control.addTextfield("Distance")
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
  
  control.addButton("Continue")
    .setPosition(width-250, height-100)
    .setSize(200,50)
    .setFont(font)
    .setColorBackground(color(154))
    .setColorForeground(color(54));
    
       
}

void showAlgorithm(){
  distance = int(controlDistance.getText());
  generations = int(controlGenerations.getText());
  //surface = new Map(distance, 0, 0, 0);
  
  /*control.get("Distance").hide();
  control.get("Generations").hide();
  control.get("Continue").hide();
  algorithm = true;*/
}