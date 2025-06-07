int button = 7;
void setup () {
pinMode(LED_BUILTIN, OUTPUT);
pinMode(12, OUTPUT);
pinMode(button, INPUT);
}



void loop() {
  int buttonState = digitalRead(button);

  if (buttonState == LOW) {
    digitalWrite(LED_BUILTIN, HIGH);
    digitalWrite(12, HIGH);
  } else {
    delay(3000);
    digitalWrite(LED_BUILTIN, LOW);
    digitalWrite(12, LOW);
  }
}