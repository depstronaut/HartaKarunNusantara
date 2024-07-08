float yoff = 0.0;
float awanKecepatan = 1;  // kecepatan awan
float[] awanPosisiX = {200, 800, 1100, 1500, 1800};  // posisi awan

void langit() {
  for (int i = 0; i < height / 2; i++) {
    stroke(135, 206, 235);
    line(0, i, width, i);
  }
}

void matahari() {
  fill(255, 204, 0);
  noStroke();
  ellipse(width - 300, 200, 200, 200);
}

void pantai() {
  for (int i = height / 2; i < height - 200; i++) {
    stroke(0, 105, 148 + (i - height / 2) / 8);
    line(0, i, width, i);
  }
}

void pasirPantai() {
  fill(237, 201, 175);
  noStroke();
  rect(0, height - 200, width, 200);
}

void kumpulanAwan() {
  fill(255);
  noStroke();
    for (int i = 0; i < awanPosisiX.length; i++) {
    awan(awanPosisiX [i], awanPosisiY(i));
    awanPosisiX[i] += awanKecepatan;
    if (awanPosisiX[i] > width) {
      awanPosisiX[i] = -100;
    }
  }
}

float awanPosisiY(int index) {
  switch (index) {
    case 0: return 150;
    case 1: return 100;
    case 2: return 130;
    case 3: return 180;
    case 4: return 120;
    default: return 150;
  }
}

void awan(float x, float y) {
  ellipse(x, y, 100, 60);
  ellipse(x + 40, y, 100, 60);
  ellipse(x - 40, y, 100, 60);
  ellipse(x, y - 20, 100, 60);
}

void ombak() {
  //noise Waves
  fill(0, 105, 148);
  beginShape(); 
  
  float xoff = 0;
  
  for (float x = 0; x <= width; x += 10) {
    float y = map(noise(xoff, yoff), 0, 1, height - 200, height - 180);
    vertex(x, y); 
    xoff += 0.05;
  }
  yoff += 0.01;
  
  vertex(width, height - 200);
  vertex(0, height - 200);
  endShape(CLOSE);
}
