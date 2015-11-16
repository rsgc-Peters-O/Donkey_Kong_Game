Donkey d1;
Barrel bar1;
float x1; // tracks horizontal position of first Barrel 
float y1; //tracks vertical position of the first Barrel 
float a1; // tracks acceleration of the first cactus 
float s1;  //tracks the speed of the first Barrel
float r1;  //tracks the radius of the Barell
float x2;
float donY;
float donS;
float donA;
float line1;
float line2;
float a5;
float a6;
float b1;
boolean isDead;
int mouseClicked;
int score = 0;
float gravity;
int highscore = 0; // set score and highscore
PImage hero1;
PImage backround;
void setup() {

  size(1000, 600);
  d1=new Donkey(0, 0);
  bar1 = new Barrel(0, 0, .10, .10);

  hero1 = loadImage("images.jpeg");
  backround = loadImage("background.jpeg");
}
void draw() {

image(backround,0,0,1000,600);
  d1.update(gravity);  
  bar1.update(gravity);

  Barrel c1;
  Barrel c2;

  //void keyPressed() {

  if (d1.getY() == 500) {
    d1.setA(-1);
  }





  //highscore = max(score, highscore);

  //b1=170-donY;
  //a6=x2-50;
  //a5=x1-50;

  //c1=sq(a5)+sq(b1);
  //c2=sq(a6)+sq(b1);
  //line1=sqrt(c1);
  //line2=sqrt(c2);

  //status updates;
  //text("dinoY is " + donY, 150, 25);
  //text("dinoS is " + donS, 150, 50);
  //text("dinoA is " + donA, 150, 75);
  //text("line1 is " + line1, 150, 100);
  //text("line2 is " + line2, 150, 120);
  //text("Score " + score, 750, 10);
  //}
}