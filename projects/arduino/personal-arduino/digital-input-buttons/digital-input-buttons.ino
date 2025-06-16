int ledPin = 5;
int button1Pin = 9;
int button2Pin = 8;

byte leds = 0;

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(button1Pin, INPUT_PULLUP);
  pinMode(button2Pin, INPUT_PULLUP);
}

void loop() {
  if (digitalRead(button1Pin) == LOW) {
    digitalWrite(ledPin, HIGH);
  }
  if (digitalRead(button2Pin) == LOW) {
    digitalWrite(ledPin, LOW);
  }
}