// Modified by Sofian Audry
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Interactive Selection
// http://www.genarts.com/karl/papers/siggraph91.html

// The class for our "letter", contains DNA sequence, fitness value, position on screen

// Fitness Function f(t) = t (where t is "time" mouse rolls over face)
import processing.sound.*;

class Letter extends EvolvableObject {

  // Create a new letter
  Letter(DNA dna_, float x_, float y_) {
    super(dna_, x_, y_);
  }

  // Display the letter
  void displayObject() {
      
    // Create the noise generator
    WhiteNoise noise = new WhiteNoise(this);
    noise.play();
    int unit = size/15; // a unit of measure
    float bara_ang   = map(dna.genes[0],0,1,0,size);
    float barb_ang   = map(dna.genes[1],0,1,0,size);
    float bara_x     = map(dna.genes[2],0,1,-5*unit,5*unit);
    float bara_y     = map(dna.genes[3],0,1,-5*unit,5*unit);
    float bara_w     = map(dna.genes[4],0,1,0,10*unit);
    float bara_h     = map(dna.genes[5],0,1,0,10*unit);
    float barb_x     = map(dna.genes[6],0,1,-5*unit,5*unit);
    float barb_y     = map(dna.genes[7],0,1,-5*unit,5*unit);
    float barb_w     = map(dna.genes[8],0,1,0,10*unit);
    float barb_h     = map(dna.genes[9],0,1,0,10*unit);

    // Once we calculate all the above properties, we use those variables to draw rects, ellipses, etc.
    noStroke();

    // Draw 1st bar
    rectMode(CENTER);
    rotate(PI/bara_ang);
    rect(bara_x, bara_y, bara_w, bara_h);

    // Draw 2nd bar
    rectMode(CENTER);
    rotate(PI/barb_ang);
    rect(barb_x, barb_y, barb_w, barb_h);
  }

}

class LetterFactory extends EvolvableObjectFactory {
  
  EvolvableObject create(DNA dna, float x, float y) {
    return new Letter(dna, x, y);
  }
}