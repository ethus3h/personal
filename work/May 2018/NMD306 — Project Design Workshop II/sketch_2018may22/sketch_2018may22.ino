/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
  it is attached to digital pin 13, on MKR1000 on pin 6. LED_BUILTIN is set to
  the correct LED pin independent of which board is used.
  If you want to know what pin the on-board LED is connected to on your Arduino
  model, check the Technical Specs of your board at:
  https://www.arduino.cc/en/Main/Products

  modified 8 May 2014
  by Scott Fitzgerald
  modified 2 Sep 2016
  by Arturo Guadalupi
  modified 8 Sep 2016
  by Colby Newman

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/Blink
*/

const int buttonPin = 2;     // the number of the pushbutton pin
const int sensorPin = A0;    // select the input pin for the potentiometer
const int sensorPinB = A1;    // select the input pin for the potentiometer
const int sensorPinC = A2;    // select the input pin for the potentiometer
const int ledPin =  13;      // the number of the LED pin
const int ledPinB =  12;      // the number of the LED pin
const int ledPinC =  11;      // the number of the LED pin
int inputVoltage = 0;
int inputVoltageB = 0;
int inputVoltageC = 0;
int buttonState = 0;
int updateButtonState = 0;
int updateLedState = 0;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(ledPin, OUTPUT);
  pinMode(ledPinB, OUTPUT);
  pinMode(ledPinC, OUTPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
  digitalWrite(ledPin, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(ledPinB, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(ledPinC, HIGH);   // turn the LED on (HIGH is the voltage level)
}

void updateButton() {
  if (updateButtonState >= 1000) {
    // read the state of the pushbutton value:
    buttonState = digitalRead(buttonPin);    // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
    if (buttonState == HIGH) {
      Serial.print("pushbuton 1 = ");
      Serial.println(buttonState);
      // turn LED on:
      digitalWrite(ledPin, HIGH);
      digitalWrite(ledPinB, HIGH);
      digitalWrite(ledPinC, HIGH);
    }
    updateButtonState = 0;
  }
  updateButtonState = updateButtonState + 1;
}

void updateLed() {
  if (updateLedState >= 3000) {
    inputVoltage = analogRead(sensorPin);
    delay(10); // Wait for ADC to stabilize https://stackoverflow.com/questions/20623648/simultanously-reading-two-analog-inputs-with-arduino
    inputVoltageB = analogRead(sensorPinB);
    delay(10);
    inputVoltageC = analogRead(sensorPinC);
    Serial.print("Input voltage = ");
    Serial.println(inputVoltage);
    Serial.println(inputVoltageB);
    Serial.println(inputVoltageC);
    if (inputVoltage > 0) {
      Serial.print("Disabling LED A");
      digitalWrite(ledPin, LOW);   // turn the LED off (LOW is the voltage level)
    }
    if (inputVoltageB > 0) {
      Serial.print("Disabling LED B");
      digitalWrite(ledPinB, LOW);   // turn the LED off (LOW is the voltage level)
    }
    if (inputVoltageC > 0) {
      Serial.print("Disabling LED C");
      digitalWrite(ledPinC, LOW);   // turn the LED off (LOW is the voltage level)
    }
    updateLedState = 0;
  }
  updateLedState = updateLedState + 1;
}

// the loop function runs over and over again forever
void loop() {
  updateButton();
  updateLed();
  delay(0.5);
}

