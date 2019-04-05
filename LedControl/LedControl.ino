// NeoPixel Ring simple sketch (c) 2013 Shae Erisson
// released under the GPLv3 license to match the rest of the AdaFruit NeoPixel library
#include "Arduino.h"
#include <Adafruit_NeoPixel.h>
#include <Wire.h>
#include <math.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

// Which pin on the Arduino is connected to the NeoPixels?
// On a Trinket or Gemma we suggest changing this to 1
#define PIN            27

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS      5
#define STEP  409

// When we setup the NeoPixel library, we tell it how many pixels, and which pin to use to send signals.
// Note that for older NeoPixel strips you might need to change the third parameter--see the strandtest
// example for more information on possible values.
Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

int delayval = 100; // delay for half a second
float valuePerRGB = 409.5 / (NUMPIXELS * 256*3);


void setup() {
  pixels.begin(); // This initializes the NeoPixel library.
  Serial.begin(9600);
}

void loop() {
  int length = 6;
  uint8_t buffer[length];
    Serial.println(Wire.available());

    Wire.endTransmission();


  // For a set of NeoPixels the first NeoPixel is 0, second is 1, all the way up to the count of pixels minus one.

  for(int j=0; j<NUMPIXELS; j++){
      pixels.setPixelColor(j, pixels.Color(0,0,0)); // Moderately bright green color.
    }
  int sensorValue = analogRead(A6) /10;
  float remainingValue = sensorValue / valuePerRGB;
  for(int i=0;i<NUMPIXELS;i++){
    if(sensorValue > i*STEP){
      if(remainingValue >=256*3){
        pixels.setPixelColor(i, pixels.Color(255,255,255));
        remainingValue = remainingValue - (256 * 3);
      }else{
        int round = 0;
        for (int v = 0; v<3; v++){
          if(remainingValue >=256*valuePerRGB){
            remainingValue = remainingValue - (256*valuePerRGB);
            round = round+1;
          }
        }
        remainingValue = floor(remainingValue);
          if(round ==0){
            pixels.setPixelColor(i, pixels.Color(remainingValue,0,0));
            Serial.println(round);
          }else if(round == 1){
            Serial.println(round);
            pixels.setPixelColor(i, pixels.Color(255,remainingValue,0));
          }else{
            Serial.println(round);
            pixels.setPixelColor(i, pixels.Color(255,255,remainingValue));
          }
          Serial.println(remainingValue);
      }
    }
  }
  Serial.println(sensorValue);
  pixels.show(); // This sends the updated pixel color to the hardware.
  delay(delayval); // Delay for a period of time (in milliseconds).
}
