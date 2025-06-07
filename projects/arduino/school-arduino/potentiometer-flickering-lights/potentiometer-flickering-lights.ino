int potentiometer = 5;
int potentiometerVal;

void setup() {
  pinMode(12, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  potentiometerVal = analogRead(potentiometer);
  digitalWrite(12, HIGH);
  digitalWrite(11, HIGH);
  digitalWrite(10, HIGH);
  digitalWrite(9, HIGH);
  


  delay(potentiometerVal);

  digitalWrite(12, LOW);
  digitalWrite(11, LOW);
  digitalWrite(10, LOW);
  digitalWrite(9, LOW);
  

  delay(potentiometerVal);
  Serial.println(potentiometerVal);
}