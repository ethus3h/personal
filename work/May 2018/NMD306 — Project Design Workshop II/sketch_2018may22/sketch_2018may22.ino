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
const int buttonPinb = 3;     // the number of the pushbutton pin
const int buttonPinc = 4;     // the number of the pushbutton pin
const int sensorPin = A0;    // select the input pin for the potentiometer
const int sensorPinB = A1;    // select the input pin for the potentiometer
const int ledPin =  13;      // the number of the LED pin
const int ledPinB =  12;      // the number of the LED pin
int inputVoltage = 0;
int inputVoltageB = 0;
int buttonState = 0;
int buttonStateb = 0;
int buttonStatec = 0;
int updateButtonState = 0;
int updateLedState = 0;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(ledPin, OUTPUT);
  pinMode(ledPinB, OUTPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
  digitalWrite(ledPin, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(ledPinB, HIGH);   // turn the LED on (HIGH is the voltage level)

}
void updateButton() {
  if (updateButtonState >= 10) {
    // read the state of the pushbutton value:
    buttonState = digitalRead(buttonPin);
    buttonStateb = digitalRead(buttonPinb);
    buttonStatec = digitalRead(buttonPinc);
    // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
    if (buttonState == HIGH) {
    Serial.print("pushbuton 1 = ");
    Serial.println(buttonState);
    Serial.print("pushbuton 2 = ");
    Serial.println(buttonStateb);
    Serial.print("pushbuton 3 = ");
    Serial.println(buttonStatec);
      // turn LED on:
      digitalWrite(ledPin, HIGH);
      digitalWrite(ledPinB, HIGH);
    }
  }
  updateButtonState = updateButtonState + 1;
}
void updateLed() {
  if (updateLedState >= 100) {
    inputVoltage = analogRead(sensorPin);
    inputVoltageB = analogRead(sensorPinB);
    Serial.print("Input voltage = ");
    Serial.println(inputVoltage);
    Serial.println(inputVoltageB);
    if (inputVoltage > 660 && inputVoltage < 672) {
      digitalWrite(ledPin, LOW);   // turn the LED off (LOW is the voltage level)
    }
    if (inputVoltageB > 660 && inputVoltageB < 672) {
      digitalWrite(ledPinB, LOW);   // turn the LED off (LOW is the voltage level)
    }
  }
  updateLedState = updateLedState + 1;
}

// the loop function runs over and over again forever
void loop() {

  updateButton();
  updateLed();
}

