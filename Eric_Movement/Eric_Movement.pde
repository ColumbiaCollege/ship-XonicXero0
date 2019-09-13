//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//variables for position
float xPos =0;
float yPos = 0;
float n = -10;
float m = +10;

  
void setup() {
  //window modifications
  size(1000, 800);
  background(255);
   
}

void draw() {
  //wipe
  background(255);

  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  noStroke();
  fill(0, 0, 255);

  //draw shape
  ellipse(xPos, yPos, 20, 20);

}

void keyPressed() {
  if (key == 'a') {
  xPos = xPos + n;
  }
  if (key == 'd') {
  xPos = xPos + m;
  }
  if (key == 'w') {
  yPos = yPos + n;
  }
  if (key == 's') {
  yPos = yPos + m;
  }
}
