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


const in canId = 0x03; 
const int spiCSPin = 10; //base CAN pin
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};

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

}
