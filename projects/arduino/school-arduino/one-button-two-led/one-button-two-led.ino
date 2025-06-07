int button = 7;
void setup () {
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(button, INPUT);
}


void loop() {
  int buttonState = digitalRead(button);

  if (buttonState == HIGH) {
    digitalWrite(LED_BUILTIN, HIGH);
    digitalWrite(12, HIGH);
  }
}