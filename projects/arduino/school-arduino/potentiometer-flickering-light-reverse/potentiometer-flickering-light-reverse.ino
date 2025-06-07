int potentiometer = 5;
int led = 12;
int potentiometerVal;

void setup() {
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  potentiometerVal = analogRead(potentiometer);
  digitalWrite(led, HIGH);
  delay(1023 - potentiometerVal);
  digitalWrite(led, LOW);
  delay(1023 - potentiometerVal);
  Serial.println(potentiometerVal);
}