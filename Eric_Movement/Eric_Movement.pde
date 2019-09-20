//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//variables for position
float xPos =0;
float yPos =0;
//UDLR booleans
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;

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

  ////keys

  ////moves left
  //if (key == 'a') {
  //  left = true;
  //} 
  ////moves right 
  //if (key == 'd') {
  //  right = true;
  //} 
  ////moves up
  //if (key == 'w') {
  //  up = true;
  //} 
  ////moves down
  //if (key == 's') {
  //  down = true;
  //}
  
  //movement 
  
  if(up) {
    yPos = yPos -1;
  }
  
  if(down) {
    yPos = yPos +1;
  }
  
  if(left) {
    xPos = xPos -1;
  }
  
  if(right) {
    xPos = xPos +1;
  }
  

  //code that makes ball stay on screen

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

void keyPressed(){
  //moves left
  if (key == 'a') {
    left = true;  
  }
  //moves right 
  if (key == 'd') {
    right = true;
  } 
  //moves up
  if (key == 'w') {
    up = true;
  } 
  //moves down
  if (key == 's') {
    down = true;
  } 
}

void keyReleased(){
  //stops right
  if (key == 'a') {
    left = false;  
  }
  //stops right 
  if (key == 'd') {
    right = false;
  } 
  //stops up
  if (key == 'w') {
    up = false;
  } 
  //stops down
  if (key == 's') {
    down = false;
  } 
}
