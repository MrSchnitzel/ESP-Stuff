#include "Arduino.h"
//The setup function is called once at startup of the sketch


uint8_t analogPins[] = {35,34,39,36,15,2,4};
uint8_t size = 7;
void setup()
{
	Serial.begin(9600);
	delay(100);
	for (int i = 0; i < size; ++i) {
		Serial.print(analogPins[i]);
		Serial.print("\t\t");
	}
	Serial.println();
// Add your initialization code here
}

// The loop function is called in an endless loop
void loop()
{
	for (int i = 0; i < size; ++i) {
			Serial.print(analogRead(analogPins[i]));
			Serial.print("\t\t");
			delay(5);
	}
	Serial.println();
	delay(5);
//Add your repeated code here
}
