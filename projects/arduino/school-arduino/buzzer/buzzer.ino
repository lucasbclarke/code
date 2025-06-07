int lowTone = 400;
int highTone = 600;

void setup() {
  pinMode(3, OUTPUT);
}

void loop(){
  tone(3, lowTone, 500);
  delay(500);
  tone(3, highTone, 500);
  delay(500);
}