#include <SFE_MMA8452Q.h>

//By Nicholas Velcea
//4-15-19
//0x02:
//  Accelerometer input
//  OutputMessage:
//  0 - X axis Sign
//  1 - X axis Value
//  2 - Y axis Sign
//  3 - Y axis Value
//  4 - Z axis Sign
//  5 - Z axis Value
//    Note:

#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>
#include <SFE_MMA8452Q.h>

const int canId = 0x02;
const int spiCSPin = 10; //base CAN pin
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};

float accels[3];

MMA8452Q accel;
MCP_CAN CAN(spiCSPin);

void updateAccels(float accels[3], unsigned char stmp[8]);

void setup()
{
  Serial.begin(115200); //baud rate for CAN

  accel.init(SCALE_4G); //scaled to +-4G because we realistically wont go higher than that, and will allow for more precise conversion
  Serial.println("HOWDY");

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) //specify 8MHz crystal
  {
    Serial.println("CAN BUS init Failed");
    delay(250);
  }
  Serial.println("CAN BUS Shield Init OK!");
}



void loop() {
  // put your main code here, to run repeatedly:

  if (accel.available()) {
    accel.read();

    accels[0] = accel.cx;
    accels[1] = accel.cy;
    accels[2] = accel.cz;

    updateAccels(accels, stmp);
    CAN.sendMsgBuf(canId, 0, 8, stmp);
  }
  delay(10);
}

void updateAccels(float accels[3], unsigned char stmp[8]) {
  /* This function converts accel data from the accelerometer into a message that can be trasmitted over can
  */
  if (accels[0] < 0) {
    stmp[0] = 0;
    stmp[1] = -1.0 * accels[0] * 64;
  }
  if (accels[0] > 0) {
    stmp[0] = 1;
    stmp[1] = 1.0 * accels[0] * 64;
  }
  if (accels[1] < 0) {
    stmp[2] = 0;
    stmp[3] = -1.0 * accels[1] * 64;
  }
  if (accels[1] > 0) {
    stmp[2] = 1;
    stmp[3] = 1.0 * accels[1] * 64;
  }
  if (accels[2] < 0) {
    stmp[4] = 0;
    stmp[5] = -1.0 * accels[2] * 64;
  }
  if (accels[1] > 0) {
    stmp[4] = 1;
    stmp[5] = 1.0 * accels[2] * 64;
  }
}

