class Ship {

  //properties 

  //variables for position
  float xPos =0;
  float yPos =0;
  //UDLR booleans
  boolean up = false;
  boolean down = false;
  boolean left = false;
  boolean right = false;
  
  //Constructor 
  Ship() {
    //initial position
    xPos = width/2;
    yPos = height/2;
  }

  //methods 

  void move() {

    //movement 

    if (up) {
      yPos = yPos -1;
    }

    if (down) {
      yPos = yPos +1;
    }

    if (left) {
      xPos = xPos -1;
    }

    if (right) {
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

  void UFOdraw() {
   //shape properties
  ellipseMode(CENTER);
  noStroke();
  
  //cockpit
  fill(#95F4FF);
  ellipse(xPos,yPos,10,15);

  //draw shape
  fill(#C8C9CE);
  ellipse(xPos, yPos, 30, 11);
  }
}
