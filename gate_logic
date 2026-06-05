const int Pin = 4;                                 
void setup() {
    pinMode(Pin, OUTPUT);
}
void loop() {
    for(int state = 0;state<=3;state++){

    bool A = bitRead(state, 1);
    bool B = bitRead(state, 0);
    bool notA = !A;
    bool notB = !B;
    bool nor1 = !(notA || notB);
    bool nor2 = !(A || notB);
    bool F = !(nor1 || nor2);
    
    
    if (F == true) {
        digitalWrite(Pin, HIGH);
  } else {
        digitalWrite(Pin, LOW);
  }delay(1000);
}
}
//the state can be looped from 00 - 11 (i.e 0-3) to check the value of F.
