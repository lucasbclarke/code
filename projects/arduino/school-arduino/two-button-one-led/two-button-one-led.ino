const int buttonPin7 = 7; 
const int buttonPin6 = 6; 

const int ledPin = 13;   

int buttonState6 = 0;  
int buttonState7 = 0;  


void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin6, INPUT);
  pinMode(buttonPin7, INPUT);

}

void loop() {
  buttonState6 = digitalRead(buttonPin6);
  buttonState7 = digitalRead(buttonPin7);


  if (buttonState6 == HIGH && buttonState7 == HIGH) {
    digitalWrite(ledPin, HIGH);
  } else {
    digitalWrite(ledPin, LOW);
  }
}