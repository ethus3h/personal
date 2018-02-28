// Modified by Sofian Audry
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Interactive Selection
// http://www.genarts.com/karl/papers/siggraph91.html

// The class for our "letter", contains DNA sequence, fitness value, position on screen

// Fitness Function f(t) = t (where t is "time" mouse rolls over face)

class Letter extends EvolvableObject {

  // Create a new letter
  Letter(DNA dna_, float x_, float y_) {
    super(dna_, x_, y_);
  }

  // Display the letter
  void displayObject() {
    int unit = size/15; // a unit of measure
    float angle      = map(dna.genes[0],0,1,0,size);
    color c          = color(dna.genes[1],dna.genes[2],dna.genes[3]);
    float bar_x      = map(dna.genes[4],0,1,0,unit);
    float bar_y      = map(dna.genes[5],0,1,-5*unit,5*unit);
    float bar_w      = map(dna.genes[5],0,1,-5*unit,5*unit);
    float bar_h      = map(dna.genes[5],0,1,-5*unit,5*unit);
    color colorb     = color(dna.genes[4],dna.genes[5],dna.genes[6]);
    color colorc     = color(dna.genes[7],dna.genes[8],dna.genes[9]);
    float mouth_y    = map(dna.genes[5],0,1,-5*unit,5*unit);
    float mouth_x    = map(dna.genes[5],0,1,-5*unit,5*unit);
    float mouthw     = map(dna.genes[5],0,1,0,10*unit);
    float mouthh     = map(dna.genes[5],0,1,0,2*unit);

    // Once we calculate all the above properties, we use those variables to draw rects, ellipses, etc.
    noStroke();

    // Draw the head
    fill(c);
    ellipseMode(CENTER);
    ellipse(0, 0, r, r);

    // Draw the eyes
    fill(eyecolor);
    rectMode(CENTER);
    rect(-eye_x, -eye_y, eye_size, eye_size);
    rect( eye_x, -eye_y, eye_size, eye_size);

    // Draw the mouth
    fill(mouthColor);
    rectMode(CENTER);
    rect(mouth_x, mouth_y, mouthw, mouthh);
  }

}

class LetterFactory extends EvolvableObjectFactory {
  
  EvolvableObject create(DNA dna, float x, float y) {
    return new Face(dna, x, y);
  }
}