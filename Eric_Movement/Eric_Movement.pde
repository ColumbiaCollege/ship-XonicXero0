//Movement Example Code
//Please note, what I have here is not the only method to complete this assignment. If you would like to scrap it, you may.

//declar UFO
Ship UFO;
//star movement 
float sx;
float sy;

void setup() {
  //window modifications
  size(1200, 800);
  background(#030303);
  UFO = new Ship();
}

void draw() {
  //wipe
  background(#030303);
  
  //star pt1
  strokeWeight(8);
  //star outer layer
  stroke(#434343);
  fill(#E7E8E1);
  Circle(-300+sx, 175+sy, 180);
  
  //create the UFO
  UFO.UFOdraw();
  //UFO moves with WASD
  UFO.move();
  //UFO being inbetween star allows it to fly in the outer layer 
  
  //star pt2
  //star inner layer
  strokeWeight(8);
  stroke(#FFF798);
  fill(#FFEC12);
  Circle(-300+sx, 175+sy, 120);
  //star core
  strokeWeight(6);
  stroke(#FFD012);
  fill(#FFC012);
  Circle(-300+sx, 175+sy, 100);

  //movement for star
  sx = sx + .5;
  sy = sy + .1;
  
  //reset star position 
  if (sx > 1800) {
    sx = 0;
    sy = 0;
  }
}

void Circle(float tempX,float tempY,float distance){
  ellipseMode(CENTER);
  ellipse(tempX,tempY,distance,distance);
}

void keyPressed() {
  //moves left
  if (key == 'a') {
    UFO.left = true;
  }
  //moves right 
  if (key == 'd') {
    UFO.right = true;
  } 
  //moves up
  if (key == 'w') {
    UFO.up = true;
  } 
  //moves down
  if (key == 's') {
    UFO.down = true;
  }
}

void keyReleased() {
  //stops right
  if (key == 'a') {
    UFO.left = false;
  }
  //stops right 
  if (key == 'd') {
    UFO.right = false;
  } 
  //stops up
  if (key == 'w') {
    UFO.up = false;
  } 
  //stops down
  if (key == 's') {
    UFO.down = false;
  }
}
