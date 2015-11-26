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
//PImage stack;
PImage barrel2;
PImage platform;
float y;
float x;
float m;
float b;
float w;
float u;

void setup() {

  size(1000, 600);
  d1=new Donkey(0, 0);
  bar1 = new Barrel(0, 0, .10, .10);

  hero1 = loadImage("Mario.png");
  backround = loadImage("background.jpeg");
  barrel = loadImage("Barrel.png");
  ladder = loadImage("ladder.jpeg");
  badguy= loadImage ("badguy.gif");
  //stack= loadImage ("stack.jpeg"); 
  barrel2= loadImage("barrel 2.png");
  platform=loadImage("platform.png");
  frameRate(70);

  // vertical intercept
  b = 30;

  // slope
  m = 0.1;



  // initial position
  x = 570;
  y = 50;
  w=10;
  u=1;
}
void draw() {
  if (x>950) {
    w=-10;
    x=949;
    y=y+50;
  }
  if (x<50) {
    w=10;
    x=51;
    y=y+50;
  }
  if (y>585) {
    u=0;
    w=10;
  }
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
  image(barrel2, x, y, 50, 50);



  // change x
  x = x + w;


  // change y based on x (input), the slope, and the vertical intercept
  //y = m*x + b;
  y=y+u;

  //line(570, 50, 965, 103);
  line(965, 142, 35, 208);
  line(47, 249, 965, 313);
  ellipse(965, 141, 10, 10);
  ellipse(35, 321, 10, 10);
  ellipse(965, 516, 10, 10);
  ellipse(35, 141, 10, 10);
  image(platform, 280, 70, 550, 70);
  line(0, 558, 998, 558);
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


  //Draw the Ladder

  //image(ladder, 890, 435, 95, 95);

  // Bad Guy

  image(badguy, 385, 30, 50, 50);
  //image(stack, 493, 30, 50, 50);
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