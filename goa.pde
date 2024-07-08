void goa(float x, float y) {
  fill(60, 60, 60); 
  noStroke();
  
  //badan goa
  beginShape();
  vertex(x - 200, y);
  bezierVertex(x - 150, y - 200, x + 150, y - 200, x + 200, y);
  vertex(x + 200, y + 100);
  vertex(x - 200, y + 100);
  endShape(CLOSE);
  
  //pintu masuk goa
  fill(0, 0, 0); 
  beginShape();
  vertex(x - 100, y);
  bezierVertex(x - 75, y - 100, x + 75, y - 100, x + 100, y);
  vertex(x + 100, y + 100);
  vertex(x - 100, y + 100);
  endShape(CLOSE);
}
