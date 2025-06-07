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
  delay(potentiometerVal);
  digitalWrite(led, LOW);
  delay(potentiometerVal);
  Serial.println(potentiometerVal);
}