#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>

//Cant Initialize Shield IDK

//REMEMBER TO SWITCH PINS 11 AND 12

const int canId = 0x43; 
const int potPin = A0; //input for potentiometer
int potVal = 0; //analog input value
const int spiCSPin = 10; //base CAN pin

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

unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    
void loop()
{   
  //read analog input, add to CAN message
   potVal = analogRead(potPin); 
   potVal = potVal /4; //makes it max of 256 --> one byte. 
   stmp[0] = potVal; 
  CAN.sendMsgBuf(canId, 0, 8, stmp);
  delay(100);
}
