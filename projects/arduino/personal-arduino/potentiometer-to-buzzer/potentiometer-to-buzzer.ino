int potentiometer = 8;
int buzzer = 9;
int duration = 500;
int potval;

void setup() {
  pinMode(potentiometer, INPUT);
  pinMode(buzzer, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  potval = analogRead(potentiometer);
  
  Serial.println(potval);
  delay(1000);

}