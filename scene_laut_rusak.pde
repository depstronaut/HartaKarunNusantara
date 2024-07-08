void terumbuKarang(int x, int y, color z){
  pushMatrix();
    translate(x,y);
    
    fill(z);
    beginShape();
    vertex(109,168);
    vertex(5,124);
    vertex(20,81);
    vertex(65,97);
    vertex(39,51);
    vertex(76,25);
    vertex(98,75);
    vertex(106,4);
    vertex(144,10);
    vertex(133,73);
    vertex(170,33);
    vertex(200,65);
    vertex(155,117);
    vertex(203,99);
    vertex(203,140);
    endShape();
    
    fill(212,0,0);    
    pushMatrix();
      translate(12,103);
      rotate(radians(100));
      ellipse(0,0,45,19);
    popMatrix();    
    pushMatrix();
      translate(58,40);
      rotate(radians(-45));
      ellipse(0,0,44,24);
    popMatrix();    
    pushMatrix();
      translate(125,8);
      rotate(radians(10));
      ellipse(0,0,40,14);
    popMatrix();    
    pushMatrix();
      translate(186,48);
      rotate(radians(45));
      ellipse(0,0,42,15);
    popMatrix();
    pushMatrix();
      translate(202,119);
      rotate(radians(90));
      ellipse(0,0,39,14);
    popMatrix();
    
  popMatrix();
}

void drawCoral() {
  for (int i = 50; i < width; i += 150) {
    float coralHeight = random(30, 100);
    fill(255, 105, 180);
    beginShape();
    vertex(i, height);
    bezierVertex(i - 20, height - coralHeight, i + 20, height - coralHeight, i, height);
    endShape(CLOSE);
  }
}

void rumput(float x, float y, float width, float height) {
  for (int i = 0; i < 3; i++) {
    float offsetX = (i - 1) * width * 0.5;
    drawBlade(x + offsetX, y, width, height);
  }
}
  void drawBlade(float x, float y, float width, float height) {
  fill(34, 139, 34);
  noStroke();
  
  beginShape();
  for (float t = 0; t <= 1; t += 0.02) {
    float angle = TWO_PI * t * 2;
    float wave = sin(angle) * width * 0.2;
    float px = x + wave;
    float py = y - t * height;
    vertex(px, py);
  }
  for (float t = 1; t >= 0; t -= 0.02) {
    float angle = TWO_PI * t * 2;
    float wave = sin(angle) * width * 0.2;
    float px = x - wave;
    float py = y - t * height;
    vertex(px, py);
  }
  endShape(CLOSE);

  stroke(255, 255, 255, 150);
  strokeWeight(2);
  noFill();
  beginShape();
  for (float t = 0; t <= 1; t += 0.02) {
    float angle = TWO_PI * t * 2;
    float wave = sin(angle) * width * 0.2;
    float px = x + wave * 0.5;
    float py = y - t * height;
    vertex(px, py);
  }
  endShape();
}

void pasir() {
  fill(240, 220, 180);
  beginShape();
  
  float xoff = 0;
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(xoff, yoff), 0, 1, height - 180, height - 300);
    vertex(x, y);
    xoff += 0.05;
  }
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  yoff += 0.01;  
}
