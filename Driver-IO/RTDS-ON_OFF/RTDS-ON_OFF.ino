const int button = 4;
const int sound = 5;
const int bms_enable = 6;
int bms_status = false;

void setup() {
  pinMode(button, INPUT);
  pinMode(sound, OUTPUT);
  pinMode(bms_enable, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  Serial.println("Loop");
  if (digitalRead(button) == LOW) {
    Serial.println("Button");
    if (bms_status) {
      Serial.println("BMS OFF");
      digitalWrite(bms_enable, LOW);
      bms_status = false;
      delay(2000);
    } else if (!bms_status) {
      bms_status = true;
      Serial.println("BMS ON");
      digitalWrite(bms_enable, HIGH);
      analogWrite(sound, 128);
      delay(3000);
      analogWrite(sound, 0);
    }
  }
}
