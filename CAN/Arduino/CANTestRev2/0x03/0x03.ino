//By Nicholas Velcea
//4-15-19
//0x03:
//  Input:
//    potValue from 0x01
//  OutputMessage:
//    0-change in potValue

#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>


const int myCAN = 0x03; 
const int spiCSPin = 10; //base CAN pin
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};

unsigned char len = 0;
unsigned char buf[8];

unsigned int potVal; 

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
  // put your main code here, to run repeatedly:
  if(CAN_MSGAVAIL == CAN.checkReceive()){
    CAN.readMsgBuf(&len, buf); 
    unsigned long canId = CAN.getCanId(); 

    if(canId == 0x01){
      Serial.println((int)buf[0]); 
      potVal = (int)buf[0]; 
      stmp[0] = 255-potVal; 

      CAN.sendMsgBuf(myCAN, 0, 8, stmp); 

      delay(100); 
    }
  }
}
