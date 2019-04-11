#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>

//Cant Initialize Shield IDK



int potPin = A0; 
int potVal = 0; 
const int spiCSPin = 10;

MCP_CAN CAN(spiCSPin);

void setup()
{
    Serial.begin(115200);

    while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz))
    { 
        Serial.println("CAN BUS init Failed");
        delay(250);
    }
    Serial.println("CAN BUS Shield Init OK!");
}

unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    
void loop()
{   
   potVal = analogRead(potPin); 
   potVal = potVal /4; //makes it max of 256 --> one byte. 
   stmp[0] = potVal; 
  CAN.sendMsgBuf(0x43, 0, 8, stmp);
  delay(1000);
}
