PShape mna;
float angle = 0;
float scaleFactor = 1;
boolean mirrorHorizontal = false;
boolean mirrorVertical = false;
int posX = 250, posY = 250;

boolean moveUp, moveDown, moveLeft, moveRight;
boolean rotateClockwise, rotateCounterClockwise;
boolean scaleUp, scaleDown;
boolean flipHorizontal, flipVertical;

void setup(){
  size(1000, 700, P2D);
 
  mna = createShape(GROUP);
  
  // Huruf N
  PShape n = createShape();
  n.beginShape();
  n.vertex(0, 0);
  n.vertex(0, 200);
  n.vertex(40, 200);
  n.vertex(40, 70);
  n.vertex(140, 200);
  n.vertex(180, 200);
  n.vertex(180, 0);
  n.vertex(140, 0);
  n.vertex(140, 130);
  n.vertex(40, 0);
  n.endShape(CLOSE);
  
  mna.addChild(n);
  
  // Huruf M
  PShape m = createShape();
  m.beginShape();
  m.vertex(210, 0);
  m.vertex(210, 200);
  m.vertex(250, 200);
  m.vertex(250, 65);
  m.vertex(285, 160);
  m.vertex(325, 160);
  m.vertex(360, 65);
  m.vertex(360, 200);
  m.vertex(400, 200);
  m.vertex(400, 0);
  m.vertex(340, 0);
  m.vertex(305, 110);
  m.vertex(270, 0);
  m.endShape(CLOSE);

  mna.addChild(m);
  
  // Huruf A
  PShape a = createShape();
  a.beginShape();
  a.vertex(430, 200);
  a.vertex(470, 200); // Bottom-left slant
  a.vertex(490, 150); // Bottom-left inner slant
  a.vertex(540, 150); // Bottom-right inner slant
  a.vertex(560, 200); // Bottom-right slant
  a.vertex(600, 200);
  a.vertex(535, 0);
  a.vertex(495, 0);
  a.beginContour();
  a.vertex(530, 110); // Starting from the bottom point
  a.vertex(500, 110);
  a.vertex(515, 60);
  a.endContour();
  a.endShape(CLOSE);
  
  mna.addChild(a);
}

void draw(){
  noStroke();
  background(204);
  
  // Calculate the center of the bounding box of the letters
  float centerX = 300;  // (0 + 600) / 2
  float centerY = 100;  // (0 + 200) / 2
  
  translate(posX, posY); // Move to the position of the shape
  translate(centerX, centerY); // Move to the center of the shape for rotation
  if (mirrorHorizontal) scale(-1, 1); // Horizontal flip
  if (mirrorVertical) scale(1, -1); // Vertical flip
  scale(scaleFactor); // Apply scaling
  rotate(angle); // Apply rotation
  translate(-centerX, -centerY); // Move back from the center of the shape
  
  shape(mna, 0, 0); // Draw the shape
  
  // Handle movement
  if (moveUp) posY -= 5;
  if (moveDown) posY += 5;
  if (moveLeft) posX -= 5;
  if (moveRight) posX += 5;
  if (rotateClockwise) angle += 0.005;
  if (rotateCounterClockwise) angle -= 0.005;
  if (scaleUp) scaleFactor += 0.01;
  if (scaleDown) scaleFactor -= 0.01;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = true;
    if (keyCode == DOWN) moveDown = true;
    if (keyCode == LEFT) moveLeft = true;
    if (keyCode == RIGHT) moveRight = true;
  } else {
    if (key == 'a') rotateCounterClockwise = true;
    if (key == 'd') rotateClockwise = true;
    if (key == 's') scaleUp = true;
    if (key == 'w') scaleDown = true;
    if (key == 'm') flipHorizontal = true;
    if (key == 'n') flipVertical = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) moveUp = false;
    if (keyCode == DOWN) moveDown = false;
    if (keyCode == LEFT) moveLeft = false;
    if (keyCode == RIGHT) moveRight = false;
  } else {
    if (key == 'a') rotateCounterClockwise = false;
    if (key == 'd') rotateClockwise = false;
    if (key == 's') scaleUp = false;
    if (key == 'w') scaleDown = false;
    if (key == 'm') {
      flipHorizontal = false;
      mirrorHorizontal = !mirrorHorizontal;
    }
    if (key == 'n') {
      flipVertical = false;
      mirrorVertical = !mirrorVertical;
    }
  }
}
