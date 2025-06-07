int lowestTone = 200;
int lowTone = 400;
int highTone = 600;
int highestTone = 800;
int buttonState;
int lastButtonState = 0;
int buttonPushCounter = 0;  


void setup() {
  pinMode(3, OUTPUT);
  pinMode(7, INPUT);
}

void loop(){
  buttonState = digitalRead(7);
  if (buttonState == HIGH) {
    tone(3, lowestTone, 500);
    delay(500);
    tone(3, lowTone, 500);
    delay(500);
    tone(3, highTone, 500);
    delay(500);
    tone(3, highestTone, 500);
    delay(500);
  }

  if (buttonState != lastButtonState) {
    if (buttonState == HIGH) {
      buttonPushCounter++;
    }
    delay(50);
  }
  lastButtonState = buttonState;

  if (buttonPushCounter % 2 == 0) {
    tone(3, lowestTone, 500);
    delay(500);
    tone(3, lowTone, 500);
    delay(500);
    tone(3, highTone, 500);
    delay(500);
    tone(3, highestTone, 500);
    delay(500);
  } else {
    
  }
}