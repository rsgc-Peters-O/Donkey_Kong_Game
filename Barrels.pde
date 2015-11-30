class Barrel {
  //golobal variables for the barrel
  float x1; // tracks horizontal position of first Barrel 
  float y1; //tracks vertical position of the first Barrel 
  float a1; // tracks acceleration of the first cactus 
  float s1;  //tracks the speed of the first Barrel
  float r1;  //tracks the radius of the Barell

  //constructor (like setup - run s once)
  Barrel (float x_, float y_, float a_, float s_) {
    x1= x_;
    y1= 175;
    a1= a_;
    s1= s_;
    r1 = 25;
  }

  //update draws things related to barrel
  void update (float gravity) {
    //make the cactus move
    // change the speed
    s1 = s1 + a1;

    // create the appearence of moving by changing the x position
    
    if(y1 < 500)
    {
    y1= y1 + s1;
    }else
    {
     x1 = x1 + s1; 
    }

    // put the barrel back on right edge if it goes off left edge
    if (x1 < -25) {
      x1 = 900;
      s1 = -1;
      //      score++;
    }

    // draw the barrel

    image(barrel, x1, y1, r1*2, r1*2);
  }
  //getX
  //Purpose: to return the x position of the barrel
  float getX() {

    return x1;
  }



  // getX
  // Purpose: an accessor method; lets us find out where the barrel is (horizontally)
  //float getX() {
  //  return x1;
  //}

  // getY
  //
  // Purpose: an accessor method; lets us find out where the barrel is (vertically)
  float getY() {
    return y1;
  }

  // getR
  // Purpose: an accessor method; lets us find out the barrel radius
  float getR() {
    return r1;
  }
}