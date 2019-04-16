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
#include <LiquidCrystal.h>

const int canId = 0x01; 
const int spiCSPin = 10; //base CAN pin
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};

unsigned char len = 0;
unsigned char buf[8];

int potVal = 0; 
int potPin = A0; 

float accel[3] = {0, 0, 0};

void decodeAccelValues(float out[3], unsigned char in[8]); 

MCP_CAN CAN(spiCSPin);
LiquidCrystal lcd(7, 6, 5, 4, 3, 2); 
void setup()
{
    Serial.begin(115200); //baud rate for CAN
    lcd.begin(16,2);

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
    if(canId = 0x02){
      decodeAccelValues(accel, buf); 
    }
    //if from 0x03

       } 
  //update LCD
  lcd.setCursor(0,0); 
  lcd.print("X:"); 
  if(accel[0]>=0) lcd.print("+"); 
  lcd.print(accel[0],2); 
 
  lcd.setCursor(8,0);
  lcd.print("Y:"); 
  if(accel[1]>=0) lcd.print("+"); 
  lcd.print(accel[1],2); 

  lcd.setCursor(0,1);
  lcd.print("Z:"); 
  if(accel[2]>=0) lcd.print("+"); 
  lcd.print(accel[2],2); 
  
  delay(100); //NOTE: a larger delay reduces the updates per second, and can therefore make the display
  //more readable
}
void decodeAccelValues(float out[3], unsigned char in[8]){
  if(in[0] == 0){
    out[0] = -1*(float)in[1]/64;
  }
  if(in[0] == 1){
    out[0] = 1*(float)in[1]/64;
  }
  if(in[2] == 0){
    out[1] = -1*(float)in[3]/64;
  }
  if(in[2] == 1){
    out[1] = 1*(float)in[3]/64;
  }
  if(in[4] == 0){
    out[2] = -1*(float)in[5]/64;
  }
  if(in[4] == 1){
    out[2] = 1*(float)in[5]/64;
  }
}

