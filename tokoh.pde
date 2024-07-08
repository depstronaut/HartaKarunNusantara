void okto(float x, float y){
  pushMatrix();
  translate(3, y);
  kepalaO(x, y);
  tanganO(x, y, 0, false);
  tanganO(x, y + 40, -15, false);
  tanganO(x - 10, y + 160, -60, false);
  tanganO(x + 310, y, 0, true);

  popMatrix();
}


void tanganO(float x, float y, float z, boolean a){
  pushMatrix();
  translate(x, y);
  rotate(radians(z));
  if (a) {
    scale(-1, 1);
  }
  
  fill(183, 0, 0);
  beginShape();
  vertex(109, 118);
  vertex(73, 168);
  vertex(90, 188);
  vertex(148, 130);
  endShape();
  
  beginShape();
  vertex(87, 160);
  vertex(16, 189);
  vertex(30, 206);
  vertex(90, 188);
  endShape();
  
  ellipse(22, 198, 38, 19);
  
  popMatrix();
}

void kepalaO(float x, float y){
  pushMatrix();
  translate(x, y);
  fill(183, 0, 0);
  ellipse(174, 59, 168, 111);
  rect(103, 65, 102, 65);
  fill(0, 0, 128);
  ellipse(127, 86, 9, 28); //mata kanan
  ellipse(167, 86, 9, 28); //mata kiri
  popMatrix();
}

void anton(float x, float y){
  pushMatrix();
  translate(3, y);
  fill(0,0,0,10);
  ellipse(x+83,y+498,180,24); //bayangan
  kepalaA(x, y, false);
  tanganA(x + 168, y, true);
  tanganA(x, y, false);
  kakiA(x + 168, y, true, false);
  kakiA(x, y, false, false);
  badanA(x, y);
  popMatrix();
} 

void bunga(float x, float y){
  pushMatrix();
  translate(3, y);
  fill(0,0,0,10);
  ellipse(x+79,y+485,140,24); //bayangan
  kepalaB(x, y, false);
  tanganB(x + 155, y, true);
  tanganB(x, y, false);
  kakiB(x + 155, y, true, false);
  kakiB(x, y, false, false);
  badanB(x, y);
  popMatrix();
} 

void antonRenang(float x, float y){
  pushMatrix();
  translate(3, y);
  kepalaA(x, y, true);
  tanganA(x + 168, y, true);
  tanganA(x, y, false);
  kakiA(x + 168, y, true, true);
  kakiA(x, y, false, true);
  badanA(x, y);
  popMatrix();
} 

void bungaRenang(float x, float y){
  pushMatrix();
  translate(3, y);
  kepalaB(x, y, true);
  tanganB(x + 155, y, true);
  tanganB(x, y, false);
  kakiB(x + 155, y, true, true);
  kakiB(x, y, false, true);
  badanB(x, y);
  popMatrix();
} 

void kepalaB(float x, float y, boolean renang){
  pushMatrix();
  translate(x, y + 5);
  
  fill(255, 179, 128); 
  beginShape();  //leher
  vertex(67, 92);
  vertex(59, 117);
  vertex(77, 134);
  vertex(95, 119);
  vertex(89, 92);
  vertex(67, 92);
  endShape();
  
  fill(255, 204, 170); 
  ellipse(49, 61, 12, 21); //telinga kanan
  ellipse(105, 61, 12, 21); //telinga kiri
  
  
  beginShape(); //muka
  vertex(59, 23);
  vertex(92, 24);
  vertex(106, 45);
  vertex(102, 79);
  vertex(85, 100);
  vertex(68, 100);
  vertex(51, 79);
  vertex(49, 45);
  vertex(59, 23);
  endShape();
  
  fill(144, 0, 0);
  ellipse(77, 11, 24, 17); //rambut :)
  fill(170, 0, 0); 
  arc(77, 30, 58, 42, 3, 6.5f);
  beginShape();
  vertex(48, 28);
  vertex(46, 52);
  vertex(49, 50);
  vertex(50, 100);
  vertex(53, 52);
  vertex(54, 63);
  vertex(57, 39);
  vertex(66, 33);
  vertex(67, 48);
  vertex(69, 32);
  vertex(77, 27);
  vertex(84, 32);
  vertex(86, 48);
  vertex(88, 33);
  vertex(95, 39);
  vertex(99, 63);
  vertex(102, 52);
  vertex(104, 100);
  vertex(106, 50);
  vertex(108, 52);
  vertex(106, 28);
  endShape();
  
  fill(0, 150, 0);
  ellipse(64, 59, 5, 14); //mata kanan
  ellipse(89, 59, 5, 14); //mata kiri
  
  if(renang){
    fill(0, 0, 0, 50); //alat renang atas
    stroke(0);  
    strokeWeight(4);
    ellipse(63, 60, 32, 21);
    ellipse(90, 60, 32, 21);
    noStroke();
    fill(50, 0, 0);
    rect(83, 82, 19, 6);
    fill(77);
    ellipse(78, 85, 19, 14);
  }
  
  popMatrix();
}
void badanB(float x, float y){
  pushMatrix();
  translate(x, y);
  
  fill(255, 246, 213); //baju
  beginShape();
  vertex(78, 118);
  vertex(95, 114);
  vertex(127, 122);
  vertex(112, 211);
  vertex(121, 255);
  vertex(32, 255);
  vertex(42, 211);
  vertex(30, 122);
  vertex(60, 114);
  vertex(78, 118);
  endShape();
  
  popMatrix();
}

void tanganB(float x, float y, boolean z){
  pushMatrix();
  translate(x, y);
  if (z) {
    scale(-1, 1);
  }
  
  fill(255, 204, 170);
  beginShape();
  vertex(12, 233);
  vertex(9, 253);
  vertex(23, 254);
  vertex(25, 234);
  endShape();
  ellipse(18, 260, 23, 31); //telapak tangan
  
  fill(255, 246, 213); //lengan baju atas
  beginShape();
  vertex(50, 118);
  vertex(24, 123);
  vertex(12, 192);
  vertex(34, 199);
  endShape();
  
  beginShape(); //lengan baju bawah
  vertex(12, 188);
  vertex(9, 242);
  vertex(26, 243);
  vertex(37, 180);
  endShape();
  
  popMatrix();
}

void kakiB(float x, float y, boolean z, boolean renang){
  pushMatrix();
  translate(x, y);
  if (z) {
    scale(-1, 1);
  }
  
  fill(255, 204, 170);
  beginShape(); //betis
  vertex(44, 427);
  vertex(62, 427);
  vertex(58, 470);
  vertex(41, 474);
  endShape();
  
  if(renang){
    fill(0);
    beginShape(); //alat renang bawah
    vertex(41, 464);
    vertex(0, 531);
    vertex(16, 534);
    vertex(28, 553);
    vertex(49, 541);
    vertex(69, 544);
    vertex(59, 469);
    vertex(48, 473);
    endShape();
  }else{
    beginShape(); //kaki
    vertex(41, 469);
    vertex(30, 481);
    vertex(30, 486);
    vertex(58, 486);
    vertex(58, 470);
    endShape();
  }
  
  fill(160, 223, 255); //celana atas
  beginShape();
  vertex(36, 244);
  vertex(38, 347);
  vertex(69, 347);
  vertex(84, 224);
  endShape();
  
  beginShape(); //celana bawah
  vertex(70, 343);
  vertex(65, 445);
  vertex(39, 446);
  vertex(38, 332);
  endShape();
  
  popMatrix();
}

void kepalaA(float x, float y, boolean renang){
  pushMatrix();
  noStroke();
  translate(x, y);
  
  fill(211, 141, 95); //leher
  beginShape();
  vertex(70, 87);
  vertex(61, 113);
  vertex(82, 130);
  vertex(105, 114);
  vertex(97, 87);
  vertex(70, 87);
  endShape();
  
  fill(222, 170, 135); 
  ellipse(51, 60, 13, 25); //telinga kanan
  ellipse(114, 60, 13, 25); //telinga kiri
  
  beginShape(); //muka
  vertex(64, 21);
  vertex(100, 21);
  vertex(114, 43);
  vertex(109, 78);
  vertex(91, 104);
  vertex(74, 104);
  vertex(55, 78);
  vertex(53, 43);
  vertex(64, 21);
  endShape();
  
  fill(0); //rambut :)
  beginShape();
  vertex(53, 49);
  vertex(56, 60);
  vertex(59, 42);
  vertex(62, 48);
  vertex(66, 30);
  vertex(69, 39);
  vertex(75, 26);
  vertex(77, 37);
  vertex(84, 26);
  vertex(87, 39);
  vertex(96, 27);
  vertex(98, 43);
  vertex(103, 31);
  vertex(104, 50);
  vertex(108, 44);
  vertex(109, 62);
  vertex(113, 49);
  vertex(123, 48);
  vertex(119, 41);
  vertex(129, 29);
  vertex(116, 28);
  vertex(120, 10);
  vertex(103, 12);
  vertex(90, 1);
  vertex(81, 8);
  vertex(57, 2);
  vertex(58, 13);
  vertex(40, 19);
  vertex(46, 26);
  vertex(38, 36);
  vertex(44, 40);
  vertex(41, 51);
  vertex(53, 49);
  endShape();
  
  fill(128, 51, 0);
  ellipse(70, 55, 5, 14); //mata kanan
  ellipse(95, 55, 5, 14); //mata kiri
  
  if(renang){
    fill(0, 0, 0, 50); //alat renang atas
    stroke(0);  
    strokeWeight(5);
    ellipse(68, 57, 35, 23);
    ellipse(95, 57, 35, 23);
    noStroke();
    fill(50, 0, 0);
    rect(88, 84, 19, 6);
    fill(77);
    ellipse(83, 87, 19, 14);
  }
  
  popMatrix();
}
void badanA(float x, float y){
  pushMatrix();
  translate(x, y);
  
  fill(230);
  beginShape(); //baju
  vertex(62, 110);
  vertex(82, 118);
  vertex(103, 110); 
  vertex(144, 118);
  vertex(134, 261);
  vertex(32, 260);
  vertex(25, 118);
  vertex(62, 110);
  endShape();
  
  popMatrix();
}

void tanganA(float x, float y, boolean z){
  pushMatrix();
  translate(x, y);
  if (z) {
    scale(-1, 1);
  }
  
  fill(222, 170, 135);
  rect(9, 168, 17, 88); //lengan
  ellipse(18, 262, 25, 30); //telapak tangan
  
  fill(230); //lengan kaos
  beginShape();
  vertex(20, 119);
  vertex(52, 113);
  vertex(37, 191);
  vertex(0, 183);
  vertex(20, 119);
  endShape();
  
  popMatrix();
}

void kakiA(float x, float y, boolean z, boolean renang){
  pushMatrix();
  translate(x, y);
  if (z) {
    scale(-1, 1);
  }
  
  fill(222, 170, 135);
  ellipse(52, 360, 36, 41); //lutut
  beginShape(); //betis
  vertex(38, 370); 
  vertex(39, 482);
  vertex(58, 483);
  vertex(69, 405);
  vertex(63, 370);
  endShape();
  
  if(renang){
    fill(0);
    beginShape(); //alat renang bawah
    vertex(39, 473);
    vertex(0, 540);
    vertex(16, 543);
    vertex(28, 562);
    vertex(49, 550);
    vertex(69, 553);
    vertex(59, 478);
    vertex(48, 482);
    endShape();
  }else{
    beginShape(); //kaki
    vertex(42, 481);
    vertex(3, 489);
    vertex(2, 497);
    vertex(60, 497);
    vertex(58, 483);
    endShape();
  }
  
  fill(0, 0, 128); //celana
  beginShape();
  vertex(99, 233);
  vertex(35, 254);
  vertex(27, 364);
  vertex(76, 364);
  endShape();
  
  popMatrix();
}
