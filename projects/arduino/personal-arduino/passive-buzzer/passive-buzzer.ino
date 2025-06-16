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

void setup () {}

void loop() {
  for (int thisNote = 0; thisNote < 8; thisNote++) {
    tone(8, melody[thisNote], duration);
    delay(1000);
  }

  delay(2000);
}