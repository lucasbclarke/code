int ldr = 4;
int led = 12;
int ldrVal;

void setup() {
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  ldrVal = analogRead(ldr);
  digitalWrite(led, HIGH);
  delay(ldrVal);
  digitalWrite(led, LOW);
  delay(ldrVal);
  Serial.println(ldrVal);
}