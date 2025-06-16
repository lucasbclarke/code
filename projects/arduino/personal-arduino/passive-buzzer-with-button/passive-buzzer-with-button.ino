#include "pitches.h"

int melody[] = {
  NOTE_C6,
  NOTE_B5,
  NOTE_A5,
  NOTE_G5,
  NOTE_F5,
  NOTE_E5,
  NOTE_D5,
  NOTE_C5
};

int duration = 500;
bool buttonstate;


void setup () {
  pinMode(9, INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  Serial.print("Button state at the start of void loop =");
  Serial.println(buttonstate);
  Serial.println(digitalRead(9));
  if (digitalRead(9) == HIGH) {
    buttonstate = true;
    delay(1000);
    Serial.print("Button state when button is read =");
    Serial.println(buttonstate);
    Serial.println(digitalRead(9));
  } 

  if (buttonstate == true) {
    Serial.print("Button state in the second if statement =");
    Serial.println(buttonstate);  
    Serial.println(digitalRead(9));
    for (int thisNote = 0; thisNote < 8 && buttonstate; thisNote++) {
      tone(8, melody[thisNote], duration);
      delay(1000);

      Serial.print("Button state in the for loop =");
      Serial.println(buttonstate);
      Serial.println(digitalRead(9));
      if (digitalRead(9) == HIGH) {
        buttonstate = false;
        Serial.print("Button state when the state should be reset to false =");
        Serial.println(buttonstate);
        Serial.println(digitalRead(9));
      }
    }
  }

  delay(2000);
}