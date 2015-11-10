Donkey d1;
float x1; // tracks horizontal position of first Barrel 
float y1; //tracks vertical position of the first Barrel 
float a1; // tracks acceleration of the first cactus 
float s1;  //tracks the speed of the first Barrel
float r1;  //tracks the radius of the Barell
float donY;
float donS;
float donA;
float gravity;
void setup() {

  size(1000, 1000);
  d1=new Donkey(0,500,0);
}
void draw(){
  d1.update(gravity);
}