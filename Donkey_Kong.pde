class Donkey {
  float donY;
  float donS;
  float donA;
  float donX;
  float donA1;
  float donA2;
  float d;

  //constructor

  Donkey (float A_, float S_) {
    donA= A_;
    donY= 500;
    donX= 100;
    donS= S_;
  }

  //updating and drawing the Donkey on the screen

  void update(float gravity) {

    //draw donkey
if (donX<10){
  donA1=0;
  donX=11;
  
}

if (donX<10){
  donA1=0;
  donX=11;
  
}

if (donX<10){
  donA1=0;
  donA=11;
  
}

if (donX<10){
  donA1=0;
  donX=11;
  
}
    fill(0);
    image(hero1,donX, donY, 60, 60);

    //move donkey

    donA = donA + gravity; //changes acceleration based on gravity
    //status updates for dkoney's position

    textSize(12);
    fill(0);
    text("donY is " + donY, 150, 25);
    text("donS is " + donS, 150, 50);
    text("donA is " + donA, 150, 75);
    // text("distance is " + distance, 150, 100); // will make this work later

    //donS = donS + donA; // change speed based on acceleration 
    //donY = donY + donS; // change location based on speed
donX=donX+donA1;
donY=donY+donA2;

    // stop the dino if it hits the ground
    if (donY > 570) { // bottome of the screen (200) minus the radius 
      donA = 0;
      donS = 0;
      donY = 570;
    }
  }

  // getY
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return donY;
  }

  // setA
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  // from outside the class
  void setA(float newA_) {
    donA = newA_;
  }
  void setA1(float newA1_) {
    donA1 = newA1_;
  }
  void setA2(float newA2_) {
    donA2 = newA2_;
  }
}