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
PImage barrel;
PImage ladder;
PImage badguy;
PImage stack;
float y;
float x;
float m;
float b;

void setup() {

  size(1000, 600);
  d1=new Donkey(0, 0);
  bar1 = new Barrel(0, 0, .10, .10);

  hero1 = loadImage("Mario.jpeg");
  backround = loadImage("background.jpeg");
  barrel = loadImage("Barrel.jpeg");
  ladder = loadImage("ladder.jpeg");
  badguy= loadImage ("badguy.jpeg");
  stack= loadImage ("stack.jpeg"); 
  frameRate(70);

  // vertical intercept
  b = 200;

  // slope
  m = 0.1;



  // initial position
  x = 0;
  y = b;
}
void draw() {

  image(backround, 0, 0, 1000, 600);
  d1.update(gravity);  
  bar1.update(gravity);

  Barrel c1;
  Barrel c2;

  //void keyPressed() {

  if (d1.getY() == 500) {
    d1.setA(-1);
  }

  // draw the current point
  ellipse(x, y, 50, 50);



  // change x
  x = x + 5;


  // change y based on x (input), the slope, and the vertical intercept
  y = m*x + b;



  //highscore = max(score, highscore);

  //b1=170-donY;
  //a6=x2-50;
  //a5=x1-50;

  //c1=sq(a5)+sq(b1);
  //c2=sq(a6)+sq(b1);
  //line1=sqrt(c1);
  //line2=sqrt(c2);

  //status updates;
  //text("dnoY is " + donY, 150, 25);
  //text("dnoS is " + donS, 150, 50);
  //text("dnoA is " + donA, 150, 75);
  //text("line1 is " + line1, 150, 100);
  //text("line2 is " + line2, 150, 120);
  //text("Score " + score, 750, 10)  ;
  //}
  text("mouse x "+ mouseX, 50, 50);
  text("mouse y "+ mouseY, 50, 70);
  line(mouseX-10, mouseY, mouseX+10, mouseY);
  line(mouseX, mouseY-10, mouseX, mouseY+10);

  //Draw the platform

  line(0, 540, 997, 540);
  line(0, 400, 890, 430);
  line(300, 80, 600, 80);
  stroke(-100);

  //Ladder

  image(ladder, 890, 435, 95, 95);

  // Bad Guy

  image(badguy, 385, 30, 50, 50);
  image(stack, 493, 30, 50, 50);
}


void keyPressed() {
  if (key==CODED) {
    if (keyCode ==UP) {
      d1.setA2(-20);
      d1.setA1(0);
    }
    if (keyCode ==DOWN) {
      d1.setA2(20);
      d1.setA1(0);
    }
    if (keyCode ==LEFT) {
      d1.setA1(-20);
      d1.setA2(0);
    }
    if (keyCode ==RIGHT) {
      d1.setA1(20);
      d1.setA2(0);
    }
  }
}

void keyReleased() {
  if (key==CODED) {
    if (keyCode ==UP) {
      d1.setA2(0);
    }
    if (keyCode ==DOWN) {
      d1.setA2(0);
    }
    if (keyCode ==LEFT) {
      d1.setA1(0);
    }
    if (keyCode ==RIGHT) {
      d1.setA1(0);
    }
  }
}