void warna(color garis, color isi){
 stroke(garis);
 fill(isi);
}

void gua(){
fill(20, 20, 20);
  noStroke();
  
  beginShape();
  vertex(0, 0);
  vertex(0, height * 0.3);
  for (float x = 0; x <= width; x += 10) {
    float y = height * 0.2 + noise(x * 0.02) * 100;
    vertex(x, y);
  }
  vertex(width, 0);
  endShape(CLOSE);
}
