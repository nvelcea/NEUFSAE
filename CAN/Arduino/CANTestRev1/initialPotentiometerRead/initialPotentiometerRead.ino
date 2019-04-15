//By Nicholas Velcea
//April 7th, 2019
//This script just has an arduino output the value of a potentiometer via serial out. 
//This was done to figure out basic syntax before diving into CAN stuff. 

int potPin = A0; 
int potVal = 0; 
void setup() {
// put your setup code here, to run once:

  Serial.begin(9600); 
}

void loop() {
  // put your main code here, to run repeatedly:
  potVal = analogRead(potPin); 
  Serial.println(potVal); 
}
