//Cant Initialize Shield IDK

#include <SPI.h>
#include <mcp_can.h>

int potPin = A0; 
int potVal = 0; 
const int spiCSPin = 10;
int ledHIGH    = 1;
int ledLOW     = 0;

MCP_CAN CAN(spiCSPin);

void setup()
{
    Serial.begin(115200);

    while (CAN_OK != CAN.begin(CAN_500KBPS))
    {
        Serial.println("CAN BUS init Failed");
        delay(100);
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
