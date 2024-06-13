float pitch = 0;
float yaw = 0;
float roll = 0;
boolean upPressed, downPressed, leftPressed, rightPressed, ltPressed, gtPressed;
PShape nma;

void setup() {
  size(1000, 700, P3D);
  nma = createShape(GROUP);
  
  //Huruf N
  //Bagian Depan
  PShape nfront = createShape();
  nfront.beginShape();
  nfront.vertex(0, 0, 0);
  nfront.vertex(0, 200, 0);
  nfront.vertex(40, 200, 0);
  nfront.vertex(40, 70, 0);
  nfront.vertex(140, 200, 0);
  nfront.vertex(180, 200, 0);
  nfront.vertex(180, 0, 0);
  nfront.vertex(140, 0, 0);
  nfront.vertex(140, 130, 0);
  nfront.vertex(40, 0, 0);
  nfront.vertex(0, 0, 0);
  nfront.endShape(CLOSE);
  
  //Bagian Belakang
  PShape nback = createShape();
  nback.beginShape();
  nback.vertex(0, 0, -40);
  nback.vertex(0, 200, -40);
  nback.vertex(40, 200, -40);
  nback.vertex(40, 70, -40);
  nback.vertex(140, 200, -40);
  nback.vertex(180, 200, -40);
  nback.vertex(180, 0, -40);
  nback.vertex(140, 0, -40);
  nback.vertex(140, 130, -40);
  nback.vertex(40, 0, -40);
  nback.vertex(0, 0, -40);
  nback.endShape(CLOSE);
  
  //Bentuk Di mulai dari sisi kiri ke bagian Bawah dan mamutar ke atas
  PShape n1 = createShape();
  n1.beginShape();
  addDepth(n1, 0, 0, 0, 0, 200, 0, 0, 200, -40, 0, 0, -40);
  n1.endShape(CLOSE);
  
  PShape n2 = createShape();
  n2.beginShape();
  addDepth(n2, 0, 200, 0, 40, 200, 0, 40, 200, -40, 0, 200, -40);
  n2.endShape(CLOSE);
  
  PShape n3 = createShape();
  n3.beginShape();
  addDepth(n3, 40, 200, 0, 40, 70, 0, 40, 70, -40,  40, 200, -40);
  n3.endShape(CLOSE);
  
  PShape n4 = createShape();
  n4.beginShape();
  addDepth(n4, 40, 70, 0, 140, 200, 0, 140, 200, -40, 40, 70, -40);
  n4.endShape(CLOSE);
  
  PShape n5 = createShape();
  n5.beginShape();
  addDepth(n5, 140, 200, 0, 180, 200, 0, 180, 200, -40, 140, 200, -40);
  n5.endShape(CLOSE);
  
  PShape n6 = createShape();
  n6.beginShape();
  addDepth(n6, 180, 200, 0, 180, 0, 0, 180, 0, -40, 180, 200, -40);
  n6.endShape(CLOSE);
  
  PShape n7 = createShape();
  n7.beginShape();
  addDepth(n7, 180, 0, 0, 140, 0, 0, 140, 0, -40, 180, 0, -40);
  n7.endShape(CLOSE);
  
  PShape n8 = createShape();
  n8.beginShape();
  addDepth(n8, 140, 0, 0, 140, 130, 0, 140, 130, -40, 140, 0, -40);
  n8.endShape(CLOSE);
  
  PShape n9 = createShape();
  n9.beginShape();
  addDepth(n9, 140, 130, 0, 40, 0, 0, 40, 0, -40, 140, 130, -40);
  n9.endShape(CLOSE);
  
  PShape n10 = createShape();
  n10.beginShape();
  addDepth(n10, 40, 0, 0, 0, 0, 0, 0, 0, -40, 40, 0, -40);
  n10.endShape(CLOSE);
  
  nma.addChild(nfront);
  nma.addChild(nback);
  nma.addChild(n1);
  nma.addChild(n2);
  nma.addChild(n3);
  nma.addChild(n4);
  nma.addChild(n5);
  nma.addChild(n6);
  nma.addChild(n7);
  nma.addChild(n8);
  nma.addChild(n9);
  nma.addChild(n10);
  
  // Huruf M
  //Bagian Depan
  PShape mfront = createShape();
  mfront.beginShape();
  mfront.vertex(210, 0, 0);
  mfront.vertex(210, 200, 0);
  mfront.vertex(250, 200, 0);
  mfront.vertex(250, 65, 0);
  mfront.vertex(285, 160, 0);
  mfront.vertex(325, 160, 0);
  mfront.vertex(360, 65, 0);
  mfront.vertex(360, 200, 0);
  mfront.vertex(400, 200, 0);
  mfront.vertex(400, 0, 0);
  mfront.vertex(340, 0, 0);
  mfront.vertex(305, 110, 0);
  mfront.vertex(270, 0, 0);
  mfront.endShape(CLOSE);
  
  //Bagian Belakang
  PShape mback = createShape();
  mback.beginShape();
  mback.vertex(210, 0, -40);
  mback.vertex(210, 200, -40);
  mback.vertex(250, 200, -40);
  mback.vertex(250, 65, -40);
  mback.vertex(285, 160, -40);
  mback.vertex(325, 160, -40);
  mback.vertex(360, 65, -40);
  mback.vertex(360, 200, -40);
  mback.vertex(400, 200, -40);
  mback.vertex(400, 0, -40);
  mback.vertex(340, 0, -40);
  mback.vertex(305, 110, -40);
  mback.vertex(270, 0, -40);
  mback.endShape(CLOSE);
  
  //Bentuk Di mulai dari sisi kiri ke bagian Bawah dan mamutar ke atas
  PShape m1 = createShape();
  m1.beginShape();
  addDepth(m1, 210, 0, 0, 210, 200, 0, 210, 200, -40, 210, 0, -40);
  m1.endShape(CLOSE);
  
  PShape m2 = createShape();
  m2.beginShape();
  addDepth(m2, 210, 200, 0, 250, 200, 0, 250, 200, -40, 210, 200, -40);
  m2.endShape(CLOSE);
  
  PShape m3 = createShape();
  m3.beginShape();
  addDepth(m3, 250, 200, 0, 250, 65, 0, 250, 65, -40, 250, 200, -40);
  m3.endShape(CLOSE);
  
  PShape m4 = createShape();
  m4.beginShape();
  addDepth(m4, 250, 65, 0, 285, 160, 0, 285, 160, -40, 250, 65, -40);
  m4.endShape(CLOSE);
  
  PShape m5 = createShape();
  m5.beginShape();
  addDepth(m5, 285, 160, 0, 325, 160, 0, 325, 160, -40, 285, 160, -40);
  m5.endShape(CLOSE);
  
  PShape m6 = createShape();
  m6.beginShape();
  addDepth(m6, 325, 160, 0, 360, 65, 0, 360, 65, -40, 325, 160, -40);
  m6.endShape(CLOSE);
  
  PShape m7 = createShape();
  m7.beginShape();
  addDepth(m7, 360, 65, 0, 360, 200, 0, 360, 200, -40, 360, 65, -40);
  m7.endShape(CLOSE);
  
  PShape m8 = createShape();
  m8.beginShape();
  addDepth(m8, 360, 200, 0, 400, 200, 0, 400, 200, -40, 360, 200, -40);
  m8.endShape(CLOSE);
  
  PShape m9 = createShape();
  m9.beginShape();
  addDepth(m9, 400, 200, 0, 400, 0, 0, 400, 0, -40, 400, 200, -40);
  m9.endShape(CLOSE);
  
  PShape m10 = createShape();
  m10.beginShape();
  addDepth(m10, 400, 0, 0, 340, 0, 0, 340, 0, -40, 400, 0, -40);
  m10.endShape(CLOSE);
  
  PShape m11 = createShape();
  m11.beginShape();
  addDepth(m11, 340, 0, 0, 305, 110, 0, 305, 110, -40, 340, 0, -40);
  m11.endShape(CLOSE);
  
  PShape m12 = createShape();
  m12.beginShape();
  addDepth(m12, 305, 110, 0, 270, 0, 0, 270, 0, -40, 305, 110, -40);
  m12.endShape(CLOSE);
  
  PShape m13 = createShape();
  m13.beginShape();
  addDepth(m13, 270, 0, 0, 210, 0, 0, 210, 0, -40, 270, 0, -40);
  m13.endShape(CLOSE);
  
  nma.addChild(mfront);
  nma.addChild(mback);
  nma.addChild(m1);
  nma.addChild(m2);
  nma.addChild(m3);
  nma.addChild(m4);
  nma.addChild(m5);
  nma.addChild(m6);
  nma.addChild(m7);
  nma.addChild(m8);
  nma.addChild(m9);
  nma.addChild(m10);
  nma.addChild(m11);
  nma.addChild(m12);
  nma.addChild(m13);
  
  //Huruf A
  //Bagian Depan
  PShape afront = createShape();
  afront.beginShape();
  afront.vertex(430, 200, 0);
  afront.vertex(470, 200, 0); // bawah kiri 
  afront.vertex(490, 150, 0); // bawah samping kiri
  afront.vertex(540, 150, 0); // bawah samping kanan
  afront.vertex(560, 200, 0); // bawah kanan
  afront.vertex(600, 200, 0);
  afront.vertex(535, 0, 0);
  afront.vertex(495, 0, 0);
  afront.beginContour(); // ini untuk membuat lubang di tengah
  afront.vertex(530, 110, 0); // harus berbeda arah dengan bangunan utama
  afront.vertex(500, 110, 0);
  afront.vertex(515, 60, 0);
  afront.endContour();
  afront.endShape(CLOSE);
  
  //Bagian Belakang
  PShape aback = createShape();
  aback.beginShape();
  aback.vertex(430, 200, -40);
  aback.vertex(470, 200, -40); // bawah kiri 
  aback.vertex(490, 150, -40); // bawah samping kiri
  aback.vertex(540, 150, -40); // bawah samping kanan
  aback.vertex(560, 200, -40); // bawah kanan
  aback.vertex(600, 200, -40);
  aback.vertex(535, 0, -40);
  aback.vertex(495, 0, -40);
  aback.beginContour(); // ini untuk membuat lubang di tengah
  aback.vertex(530, 110, -40); // harus berbeda arah dengan bangunan utama
  aback.vertex(500, 110, -40);
  aback.vertex(515, 60, -40);
  aback.endContour();
  aback.endShape(CLOSE);
  
  //Bentuk Di mulai dari sisi kiri ke bagian Bawah dan mamutar ke atas
  PShape a1 = createShape();
  a1.beginShape();
  addDepth(a1, 430, 200, 0, 470, 200, 0, 470, 200, -40, 430, 200, -40);
  a1.endShape(CLOSE);
  
  PShape a2 = createShape();
  a2.beginShape();
  addDepth(a2, 470, 200, 0, 490, 150, 0, 490, 150, -40, 470, 200, -40);
  a2.endShape(CLOSE);
  
  PShape a3 = createShape();
  a3.beginShape();
  addDepth(a3, 490, 150, 0, 540, 150, 0, 540, 150, -40, 490, 150, -40);
  a3.endShape(CLOSE);
  
  PShape a4 = createShape();
  a4.beginShape();
  addDepth(a4, 540, 150, 0, 560, 200, 0, 560, 200, -40, 540, 150, -40);
  a4.endShape(CLOSE);
  
  PShape a5 = createShape();
  a5.beginShape();
  addDepth(a5, 560, 200, 0, 600, 200, 0, 600, 200, -40, 560, 200, -40);
  a5.endShape(CLOSE);
  
  PShape a6 = createShape();
  a6.beginShape();
  addDepth(a6, 600, 200, 0, 535, 0, 0, 535, 0, -40, 600, 200, -40);
  a6.endShape(CLOSE);
  
  PShape a7 = createShape();
  a7.beginShape();
  addDepth(a7, 535, 0, 0, 495, 0, 0, 495, 0, -40, 535, 0, -40);
  a7.endShape(CLOSE);
  
  PShape a8 = createShape();
  a8.beginShape();
  addDepth(a8, 495, 0, 0, 430, 200, 0, 430, 200, -40, 495, 0, -40);
  a8.endShape(CLOSE);
  
  PShape a9 = createShape();
  a9.beginShape();
  addDepth(a9, 530, 110, 0, 500, 110, 0, 500, 110, -40, 530, 110, -40);
  a9.endShape(CLOSE);
  
  PShape a10 = createShape();
  a10.beginShape();
  addDepth(a10, 500, 110, 0, 515, 60, 0, 515, 60, -40, 500, 110, -40);
  a10.endShape(CLOSE);
  
  PShape a11 = createShape();
  a11.beginShape();
  addDepth(a11, 515, 60, 0, 530, 110, 0, 530, 110, -40, 515, 60, -40);
  a11.endShape(CLOSE);
  
  nma.addChild(afront);
  nma.addChild(aback);
  nma.addChild(a1);
  nma.addChild(a2);
  nma.addChild(a3);
  nma.addChild(a4);
  nma.addChild(a5);
  nma.addChild(a6);
  nma.addChild(a7);
  nma.addChild(a8);
  nma.addChild(a9);
  nma.addChild(a10);
  nma.addChild(a11);
  
  centerObject(nma);
}
void draw() {
  translate(width/2, height/2, 0);
  background(50);
  noStroke();
  
  if (upPressed) {
    pitch -= radians(1);
  }
  if (downPressed) {
    pitch += radians(1);
  }
  if (leftPressed) {
    yaw -= radians(1);
  }
  if (rightPressed) {
    yaw += radians(1);
  }
  
  if (ltPressed) {
    roll -= radians(1);
  }
  if (gtPressed) {
    roll += radians(1);
  }

  pitch = pitch % TWO_PI;
  yaw = yaw % TWO_PI;
  roll = roll % TWO_PI;
  
  rotateX(pitch);
  rotateY(yaw);
  rotateZ(roll);
  shape(nma);
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  }
  if (keyCode == DOWN) {
    downPressed = true;
  }
  if (keyCode == LEFT) {
    leftPressed = true;
  }
  if (keyCode == RIGHT) {
    rightPressed = true;
  }
  if (key == '<') {
    ltPressed = true;
  }
  if (key == '>') {
    gtPressed = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  }
  if (keyCode == DOWN) {
    downPressed = false;
  }
  if (keyCode == LEFT) {
    leftPressed = false;
  }
  if (keyCode == RIGHT) {
    rightPressed = false;
  }
  if (key == '<') {
    ltPressed = false;
  }
  if (key == '>') {
    gtPressed = false;
  }
}

void addDepth(PShape n, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4){
  n.vertex(x1, y1, z1);
  n.vertex(x2, y2, z2);
  n.vertex(x3, y3, z3);
  n.vertex(x4, y4, z4);
  n.vertex(x1, y1, z1);
}

void centerObject(PShape obj) {
  float minX = Float.MAX_VALUE;
  float minY = Float.MAX_VALUE;
  float minZ = Float.MAX_VALUE;
  float maxX = Float.MIN_VALUE;
  float maxY = Float.MIN_VALUE;
  float maxZ = Float.MIN_VALUE;
  
  for (int i = 0; i < obj.getChildCount(); i++) {
    PShape child = obj.getChild(i);
    for (int j = 0; j < child.getVertexCount(); j++) {
      PVector v = child.getVertex(j);
      minX = min(minX, v.x);
      minY = min(minY, v.y);
      minZ = min(minZ, v.z);
      maxX = max(maxX, v.x);
      maxY = max(maxY, v.y);
      maxZ = max(maxZ, v.z);
    }
  }
  
  float centerX = (minX + maxX) / 2;
  float centerY = (minY + maxY) / 2;
  float centerZ = (minZ + maxZ) / 2;
  
  obj.resetMatrix();
  obj.translate(-centerX, -centerY, -centerZ);
}
