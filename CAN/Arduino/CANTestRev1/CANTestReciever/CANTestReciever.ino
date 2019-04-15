#include <SPI.h>
#include "mcp_can.h"

const int spiCSPin = 10;


//MAKE SURE TO FLIP PINS 11 AND 12

MCP_CAN CAN(spiCSPin); //initialize CAN object

void setup()
{
    Serial.begin(115200);

    while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) //specify 8MHz crystal 
    {
        Serial.println("CAN BUS Init Failed");
        delay(100);
    }
    Serial.println("CAN BUS  Init OK!");
}


void loop()
{
    unsigned char len = 0;
    unsigned char buf[8];

    if(CAN_MSGAVAIL == CAN.checkReceive()) //if a new message has been recieved. 
    {
        CAN.readMsgBuf(&len, buf); //enters message into program

        unsigned long canId = CAN.getCanId(); //gets canID


        //outputs message
        Serial.println("-----------------------------");
        if(canId == 0x43){
          Serial.println(true); 
        }
        Serial.print("Data from ID: 0x");
        Serial.print(canId, HEX);
        Serial.print("\t"); 
        Serial.println(buf[0]); 

       } 
        delay(100);
    }
