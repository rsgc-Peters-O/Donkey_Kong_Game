class Donkey {
  float donY;
  float donS;
  float donA;

  //constructor

  Donkey (float A_, float Y_, float S_) {
    donA= A_;
    donY= Y_;
    donS= S_;
  }

  //updating and drawing the Donkey on the screen

  void update(float gravity) {

    //draw donkey

    fill(0);
    ellipse(500, donY, 60, 60);

    //move donkey

    donA = donA + gravity; //changes acceleration based on gravity
    //status updates for dkoney's position

    textSize(12);
    fill(0);
    text("donY is " + donY, 150, 25);
    text("donS is " + donS, 150, 50);
    text("donA is " + donA, 150, 75);
    // text("distance is " + distance, 150, 100); // will make this work later

    donS = donS + donA; // change speed based on acceleration 
    donY = donY + donS; // change location based on speed


    // stop the dino if it hits the ground
    if (donY > 170) { // bottome of the screen (200) minus the radius 
      donA = 0;
      donS = 0;
      donY = 170;
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
}
}