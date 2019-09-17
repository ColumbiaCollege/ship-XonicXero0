//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//variables for position
float xPos =0;
float yPos = 0;

void setup() {
  //window modifications
  size(1200, 800);
  background(255);

  //initial position
  xPos = width/2;
  yPos = height/2;
}

void draw() {
  //wipe
  background(#29582B);

  //shape properties
  noStroke();
  fill(#36D7F2);

  //draw shape
  ellipse(xPos, yPos, 20, 20);

//makes ball reappear on right side if it moves too far to the left
if (xPos == -10) {
  xPos = 1209;
}

//makes ball reappear on left side if it moves too far to the right
if (xPos == 1210) {
  xPos = -9;
}

//makes ball reappear on bottom if it moves too far up
if (yPos == -10) {
  yPos = 809;
}

//makes ball reappear on tope if it moves too far down
if (yPos == 810) {
  yPos = -9;
}

}

void keyPressed() {
  if (key == 'a') {
    xPos = xPos - 1;
  }
  if (key == 'd') {
    xPos = xPos + 1;
  }
  if (key == 'w') {
    yPos = yPos - 1;
  }
  if (key == 's') {
    yPos = yPos + 1;
  }
}
