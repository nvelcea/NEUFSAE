//By Nicholas Velcea
//4-15-19
//0x01:
//  Potentiometer input
//  LCD output:
//    Pot value
//    Change in pot value (calculated by 0x03)
//    Acceleration (x, y, z) (calculated by 0x02)
//  OutputMessage:
//    0-potentiometerValue

#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>


const in canId = 0x01; 
const int spiCSPin = 10; //base CAN pin
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};

unsigned char len = 0;
unsigned char buf[8];

MCP_CAN CAN(spiCSPin);
void setup()
{
    Serial.begin(115200); //baud rate for CAN

    while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) //specify 8MHz crystal
    { 
        Serial.println("CAN BUS init Failed");
        delay(250);
    }
    Serial.println("CAN BUS Shield Init OK!");
}



void loop() {
//read analog input, add to CAN message
  potVal = analogRead(potPin); 
  potVal = potVal /4; //makes it max of 256 --> one byte. 
  stmp[0] = potVal; 
  CAN.sendMsgBuf(canId, 0, 8, stmp);

  if(CAN_MSGAVAIL == CAN.checkReceive()) //if a new message has been recieved. 
    {
    CAN.readMsgBuf(&len, buf); //enters message into program
    unsigned long canId = CAN.getCanId(); //gets canID

    //if from 0x02

    //if from 0x03

       } 
  //update LCD
}
