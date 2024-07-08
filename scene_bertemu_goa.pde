void gambarLaut() {
  noStroke();
  fill(255, 228, 181);
  beginShape();
  vertex(0, height);
  vertex(0, height * 3/4);
  bezierVertex(width/4, height*3/4+50, width/2, height*3/4-50, width, height*3/4);
  vertex(width, height);
  endShape(CLOSE);
}
