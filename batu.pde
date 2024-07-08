void batu(float x, float y, float size){
  pushMatrix();
  fill(150);
  scale(2);
  ellipse(x - size / 4, y + size / 8, size / 4, size / 8);
  ellipse(x, y + size / 10, size / 3, size / 6);
  ellipse(x + size / 4, y + size / 12, size / 5, size / 10);
  popMatrix();
}

void batuu(float x, float y, float w, float h) {
  fill(143,149,162);
  noStroke();
  
  beginShape();
  vertex(x - w / 2, y);
  bezierVertex(x - w / 2, y - h / 2, x + w / 2, y - h / 2, x + w / 2, y);
  vertex(x - w / 2, y);
  endShape(CLOSE);
}
