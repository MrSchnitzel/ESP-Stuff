#include "Arduino.h"
#include <math.h>
#include <algorithm>
//The setup function is called once at startup of the sketch

#define WATERSENSORA0 35
#define WATERSENSORA1 36

#define PUMP 13

#define TARGET 2900
#define TARGET_LOW 2300
#define TRUST 0.1
#define P_TRUST 0.5

float calculatedRead = 0;
float prevRead = 0;
float S0P = 0;
float S1P = 0;
void setup() {
	//1 pump off; 0 pump on
	digitalWrite(PUMP, 0);
	pinMode(PUMP, OUTPUT);
	Serial.begin(9600);
	delay(100);
	Serial.println();
	Serial.println();
	S0P = analogRead(WATERSENSORA0);
	delay(5);
	S1P = analogRead(WATERSENSORA1);
	calculatedRead = mergeSensor(S0P, S1P);
	prevRead = calculatedRead;
	Serial.println("WaterSensorPin,\tPumpPin");
	Serial.print(WATERSENSORA0);
	Serial.print("\t\t\t\t");
	Serial.println(PUMP);
	Serial.println("TargetValue,\tFirstRead");
	Serial.print(TARGET);
	Serial.print("\t\t\t\t");
	Serial.println(calculatedRead);
	Serial.println();
	Serial.println();
// Add your initialization code here
}

// The loop function is called in an endless loop
void loop() {
	Serial.print("Sensor0:\t\t\t");
	Serial.print("Sensor1:\t\t\t");
	Serial.print("Merged:\t\t\t");
	Serial.print("Calculated: \t\t\t");
	Serial.println("Trust: ");
	Serial.print("\t");
	uint16_t s0 = analogRead(WATERSENSORA0); //max(0,analogRead(WATERSENSORA0)- 420);
	uint16_t s1 = analogRead(WATERSENSORA1);
	S0P = (0.9 * S0P) + (0.1*s0);
	S1P = (0.9 * S1P) + (0.1*s1);
	uint16_t sensorRead = mergeSensor(S0P, S1P);
	Serial.print(s0);
	Serial.print("\t\t\t\t");
	Serial.print(s1);
	Serial.print("\t\t\t\t");
	Serial.print(sensorRead);
	Serial.print("\t\t\t\t");
	uint16_t delta = abs(prevRead - sensorRead);
	prevRead = (1 - P_TRUST) * prevRead + (P_TRUST) * sensorRead;
	if (delta > 50) {

		uint16_t delta = abs(calculatedRead - sensorRead);
		delta = delta / 100;
		float newTrust = max((float) 0.004,
				(float) (TRUST - pow(delta, 4) / 1600));
		calculatedRead = (1 - newTrust) * calculatedRead
				+ (newTrust) * sensorRead;
		Serial.print(calculatedRead);
		Serial.print("\t\t\t\t\t");
		//Serial.print(newTrust);

	} else {
		calculatedRead = (1 - TRUST) * calculatedRead + TRUST * sensorRead;
		Serial.print(calculatedRead);
		Serial.print("\t\t\t\t\t");
//		Serial.print(TRUST);

	}
	Serial.println();

	if (calculatedRead > TARGET) {
		Serial.println("Starting Pump");
		digitalWrite(PUMP, 1);
		delay(250);
	} else {
		Serial.println("Stopping Pump");
		digitalWrite(PUMP, 0);
		delay(250);
	}
//	delay(500);
//Add your repeated code here
}

uint16_t mergeSensor(uint16_t a, uint16_t b) {
	return (uint16_t) round((0.5 * a) + (0.5 * b));
}
