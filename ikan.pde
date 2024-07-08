void ikan(int x, int y){
  scale(1);
  warna(#eadb2d, #efe35b );
  bezier(x+50, y+31.25, x-10, y+62.5, x-13.75, y-10, x+50, y+31.25); 
  triangle(x+50, y+31.25, x+62.5, y+22.5, x+62.5, y+37.5);
  
  strokeWeight(4);
  stroke(#000000);
  point(x+10, y+25);
  
  strokeWeight(2);
  line(x+5,y+33, x+15,y+33);
}

void ikanKecil(float x, float y, color c) {
  fill(250,99,35);
  noStroke();
  ellipse(x, y, 40, 20); // Tubuh ikan
  triangle(x - 20, y, x - 30, y - 10, x - 30, y + 10); // Sirip ekor
}

void ikanDory(float x, float y, float size) {
  float bodyLength = size;
  float bodyHeight = size * 0.6;
  
  //tubuh ikan
  fill(0, 102, 204);
  beginShape();
  vertex(x - bodyLength/2, y);
  bezierVertex(x - bodyLength/4, y - bodyHeight/2, x + bodyLength/4, y - bodyHeight/2, x + bodyLength/2, y);
  bezierVertex(x + bodyLength/4, y + bodyHeight/2, x - bodyLength/4, y + bodyHeight/2, x - bodyLength/2, y);
  endShape(CLOSE);
  
  //bagian kuning atas
  fill(255, 255, 0);
  beginShape();
  vertex(x - bodyLength/4, y - bodyHeight/2);
  bezierVertex(x, y - bodyHeight/2, x + bodyLength/4, y - bodyHeight/2, x + bodyLength/2, y);
  vertex(x + bodyLength/4, y - bodyHeight/4);
  vertex(x - bodyLength/4, y - bodyHeight/4);
  endShape(CLOSE);
  
  //sirip atas hitam
  fill(0);
  beginShape();
  vertex(x - bodyLength/2, y);
  bezierVertex(x - bodyLength/4, y - bodyHeight/2, x, y - bodyHeight/2, x + bodyLength/4, y);
  vertex(x - bodyLength/4, y - bodyHeight/4);
  endShape(CLOSE);
  
  //sirip bawah biru muda
  fill(153, 204, 255);
  beginShape();
  vertex(x - bodyLength/4, y + bodyHeight/4);
  bezierVertex(x, y + bodyHeight/2, x + bodyLength/4, y + bodyHeight/2, x + bodyLength/2, y);
  vertex(x + bodyLength/4, y + bodyHeight/4);
  endShape(CLOSE);
  
  //ekor segitiga
  fill(0, 102, 204);
  beginShape();
  vertex(x + bodyLength/2, y);
  vertex(x + bodyLength/2 + size * 0.3, y - bodyHeight/4);
  vertex(x + bodyLength/2 + size * 0.3, y + bodyHeight/4);
  endShape(CLOSE);
  
  //mata
  fill(255);
  ellipse(x - bodyLength/3, y - bodyHeight/8, size * 0.1, size * 0.1);
  fill(0); // Warna hitam
  ellipse(x - bodyLength/3, y - bodyHeight/8, size * 0.05, size * 0.05);
}
