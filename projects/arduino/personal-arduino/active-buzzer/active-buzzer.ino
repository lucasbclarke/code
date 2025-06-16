int buzzer = 12;

void setup() {
  pinMode(buzzer, OUTPUT);

}

void loop() {
  while (true) {

    for (int i = 0; i < 80; i++) {
      digitalWrite(buzzer, HIGH);
      delay(100);
      digitalWrite(buzzer, LOW);
      delay(100);
    }

    for (int i = 0; i < 100; i++) {
      digitalWrite(buzzer, HIGH);
      delay(200);
      digitalWrite(buzzer, LOW);
      delay(200);
    }
  }

}