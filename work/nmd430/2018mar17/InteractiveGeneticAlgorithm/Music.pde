// Modified by Sofian Audry
// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Interactive Selection
// http://www.genarts.com/karl/papers/siggraph91.html
// This is for evolving a beat for music creation.
// It looks to see how much you are dancing to it and uses that to assess fitness.
// The class for our beat, contains DNA sequence, fitness value, position on screen

import oscP5.*;
import netP5.*;
import ddf.minim.*;
import javax.sound.sampled.*;
AudioSample beat;
Minim player = new Minim(new InteractiveGeneticAlgorithm());
OscP5 oscP5;
NetAddress dest;
AudioFormat format = new AudioFormat(44100f, 16, 1, true, true);
class Music extends EvolvableObject {

  float oscMessageHistory[] = new float[1000];
  int oscMessageTick = 0;

  // Constructor for the Music class that evolves a beat (really a fragment of data interpreted as audio and looped)
  Music(DNA dna_, float x_, float y_) {
    super(dna_, x_, y_);
  }

  // Display a picture for the music, to help make it easier to know which one is hovered
  void displayObject() {

    // Convert the DNA to the size for audio.
    float sound[] = new float[dna.genes.length];
    for (int i = 0; i < dna.genes.length; i++) {
      // This scales the input values to the desired value.
      sound[i] = map(dna.genes[i], 0, 1, 0, size);
    }
    // Create the music from the data
    beat = player.createSample(sound, format, 1024);
  }

  void updateOscMessageHistory(float state) {
    // Record the last OSC messages, so they can be used for getting the fitness.
    oscMessageHistory[oscMessageTick] = state;
    // The history is 1000 spaces long, so only add 1000 of them before restarting
    oscMessageTick = (oscMessageTick + 1) % 1000;
  }

  void rollover(int mx, int my) {
    if (r.contains(mx, my)) {
      rolloverOn = true;
      //Initialize OSC communication
      oscP5 = new OscP5(this, 12000); //listen for OSC messages on port 12000 (Wekinator default)
      dest = new NetAddress("127.0.0.1", 6448); //send messages back to Wekinator on port 6448, localhost (this machine) (default)

      // Play 16 beats of music, so the listener can assess it
      for (int i = 0; i < 16; i++) {
        // Play the sound.
        beat.trigger();
      }
      fitness = getRecentDancingEnergy();
    } else {
      rolloverOn = false;
    }
  }

  float getRecentDancingEnergy() {
    // based on / inspired by https://stackoverflow.com/questions/7988486/how-do-you-calculate-the-variance-median-and-standard-deviation-in-c-or-java
    float sum = 0;
    for(float i: oscMessageHistory) {
      sum = sum + i;
    }
    float average = sum / oscMessageHistory.length;
    return 0;
  }

  //This is called automatically when OSC message is received
  void oscEvent(OscMessage theOscMessage) {
    // Code based on example. This looks at the OSC paths for Wekinator and reads them.
    if (theOscMessage.checkAddrPattern("/wek/outputs")==true) {
      if (theOscMessage.checkTypetag("fff")) { //Now looking for 2 parameters
        // Send the value to the array of this beat
        updateOscMessageHistory(theOscMessage.get(0).floatValue());
        println("Received new params value from Wekinator");
      } else {
        println("Error: unexpected params type tag received by Processing");
      }
    }
  }
}

class MusicFactory extends EvolvableObjectFactory {
  EvolvableObject create(DNA dna, float x, float y) {
    return new Music(dna, x, y);
  }
}