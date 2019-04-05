#include <Wire.h> //I2C Arduino Library
#include <QMC5883L.h>

#define addr 0x0D //I2C Address for The HMC5883
QMC5883L compass;

void setup() {

	Serial.begin(9600);

	compass.init();
	compass.setSamplingRate(50);
}

void loop() {

	int16_t x = 0;
	int16_t y = 0;
	int16_t z = 0; //triple axis data

	float a = 0;// compass.readHeading();

	compass.readRaw(&x, &y, &z, 0);

	// Show Values
	Serial.print("X: ");
	Serial.print(x);
	Serial.print(" Y: ");
	Serial.print(y);
	Serial.print(" Z: ");
	Serial.print(z);
	Serial.print("");
	Serial.print(a);
	Serial.println();

	delay(250);
}
