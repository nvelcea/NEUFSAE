/*  By Nicholas Velcea
 *  04/23/2019
 *  This script is intended as a template for any CAN functions. This only shows the barebones 
 *  requirements that are directly related to CAN. Functions that deal with auxiliary sensors can
 *  simply be added in. Also, this contains options for both transmission and reception. 
 */


//necessary libraries 

#include <mcp_can.h>
#include <mcp_can_dfs.h>
#include <SPI.h>


const int myCAN = 0x03; //device's CAN id
const int spiCSPin = 10; //base CAN pin
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0}; //output message

unsigned char len = 0; //length of incoming message
unsigned char buf[8]; //memory for incoming message
int canId;

MCP_CAN CAN(spiCSPin); //setup can device
void setup()
{
  Serial.begin(115200); //baud rate for CAN

  while (CAN_OK != CAN.begin(CAN_500KBPS, MCP_8MHz)) //specify 8MHz crystal
  { //failure message
    Serial.println("CAN BUS init Failed");
    delay(250); //delay, retry
    }
  Serial.println("CAN BUS Shield Init OK!");
}

void loop() {
  // put your main code here, to run repeatedly:
  stmp[0] = 69; //arbitrary tweak to output message

  CAN.sendMsgBuf(myCAN, 0, 8, stmp); //send message 

  delay(10); //small delay to avoid unnecessary traffic

  if(CAN_MSGAVAIL == CAN.checkReceive()) //if a new message has been recieved. 
    {
    CAN.readMsgBuf(&len, buf); //enters message into program
    canId = CAN.getCanId(); //gets sender ID


    //compares input CAN ID to known expected values, treats them accordingly. 
    //if from 0x02
    if(canId == 0x02){
      //do something
    }
    //if from 0x03
    if(canId == 0x03){
      //do something
      
    }
       } 


}
