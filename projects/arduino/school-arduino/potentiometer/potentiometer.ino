int potSensorPin = 5;
int potSensorVal;

void setup() {
  Serial.begin(9600);
}

void loop() {
  potSensorVal = analogRead(potSensorPin);
  Serial.println(potSensorVal);
  delay(500);
}