import processing.sound.*;
SoundFile file;
String audioName = "backsound.MP3";
String path;

void setup(){ 
  size(1920, 1080);
  frameRate(24);
  
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
}

int t = 1;
int grk1=0;
int grk2=0;
int grk31=0;
int grk32=0;
int grk33=0;
int grk41=0;
int grk42=0;
int grk43=0;
int grk44=0;
int grk5=0;
int grk61=0;
int grk62=0;
int grk63=0;
int grk64=0;
int grk65=0;


void draw(){
  //scene 1 di pantai
  if((t>0)&&(t<=240)){
    background(135, 206, 235); 
    langit();
    matahari();
    pantai();
    pasirPantai();
    kumpulanAwan();
    ombak();
    
    pushMatrix();
    //rotate(radians(30));
    anton(-400+grk1,250);
    bunga(-200+grk1,260);
    if(grk1<1100){
      grk1+=5;
    }
    popMatrix();    

  }
  
  //scene 2 pakai baju menyelam
  if((t>240)&&(t<=480)){
    background(135, 206, 235); 
    pushMatrix();
    scale(7);
    antonRenang(250-grk2,5);
    bungaRenang(420-grk2,15);
    if(grk2<270){
      grk2+=3;
    }
    popMatrix();
  }
  
  //scene 3 menyelam menemukan terumbu karang rusak
  if((t>480)&&(t<=1150)){
  background(100, 128, 138);
  noStroke();
  pasir();
  
  pushMatrix();
  translate(-200,-250);
  scale(1.3);
  terumbuKarang(1300,720,#b3b39f);
  terumbuKarang(1500,720,#775300);
  terumbuKarang(700,730,#b3b39f);
  terumbuKarang(500,740,#b3b39f);
  terumbuKarang(100,730,#775300);
  popMatrix();
 
 pushMatrix();
  ikanKecil(330+grk31, 630, 0);
  ikanKecil(370+grk31, 770, 0);
  ikanKecil(1500+grk31, 850, 0);
  ikanKecil(1670+grk31, 670, 0);
  if(grk31<1920){
    grk31+=20;
  }
  if(grk31>=1920){
    grk31-=3900;
  }
  popMatrix();
  
  pushMatrix();
  ikan(500-grk32, 450);
  ikan(900-grk32, 243);
  ikan(370-grk32, 340);
  if(grk32<1920){
    grk32+=15;
  }
  if(grk32>=1920){
    grk32-=3700;
  }
  popMatrix();
  
  pushMatrix();
  //rotate(radians(30));
  antonRenang(-600+grk33,150);
  bungaRenang(-400+grk33,150);
  if(grk33<2600){
    grk33+=5;
  }
  popMatrix();
  
  batu(70, 500, 150);
  batu(780, 500, 150);
  

  rumput(150, height - 70, 100, 300);
  rumput(1550, height - 70, 100, 300);    


  }
  
  //scene 4 menemukan gua 
  if((t>1150)&&(t<=1350)){
 background(77,148,255);
 pasir();
 pushMatrix();
  noStroke();
  translate(-200,-250);
  scale(1.3);
  popMatrix();
  
  scale(2);
  goa(220, 450);
  scale(0.5);

  
  pushMatrix();
    ikanKecil(180+grk41, 70, 0);
    ikanKecil(330+grk41, 630, 0);
    ikanKecil(520+grk41, 250, 0);
    ikanKecil(370+grk41, 770, 0);
    ikanKecil(480+grk41, 630, 0);
    ikanKecil(1650+grk41, 50, 0);
    ikanKecil(1250+grk41, 150, 0);
    ikanKecil(1450+grk41, 257, 0);
    ikanKecil(1650+grk41, 250, 0);
    ikanKecil(1500+grk41, 850, 0);
    ikanKecil(1790+grk41, 550, 0);
    ikanKecil(1370+grk41, 470, 0);
    ikanKecil(1670+grk41, 670, 0);
    ikanKecil(1690+grk41, 950, 0);
    if(grk41<1920){
      grk41+=20;
    }
    if(grk41>=1920){
      grk41-=3900;
    }
  popMatrix();
  
  pushMatrix();
    ikan(200-grk42, 150);
    ikan(750-grk42, 340);
    ikan(500-grk42, 450);
    ikan(620-grk42, 300);
    ikan(900-grk42, 243);
    ikan(1000-grk42, 180);
    ikan(370-grk42, 340);
    if(grk42<1920){
      grk42+=15;
    }
    if(grk42>=1920){
      grk42-=3700;
    }
    popMatrix();
    
    pushMatrix();
    rotate(radians(-30));
    antonRenang(2000+grk43,400);
    bungaRenang(2200+grk43,400);
    if(grk43>-2300){
      grk43-=10;
    }
  popMatrix();
  
  pushMatrix();
    ikanDory(1500-grk44, 550, 100);
    ikanDory(1690-grk44, 430, 100);
    ikanDory(1370-grk44, 290, 100);
    ikanDory(1170-grk44, 370, 100);
    if(grk44<1920){
      grk44+=10;
    }
    if(grk44>=1920){
      grk44-=2700;
    }
  popMatrix();

  pushMatrix();
 scale(4);
   batuu(440, 275, 20, 200);
   batuu(375, 275, 80, 100);
   batuu(680, 525, 60, 100);
 popMatrix();
 
}
  
  //scene 5 di dalam goa
  if((t>1350)&&(t<=1540)){
    background(0, 60, 95); 
    drawCave();
    terumbuKarang();
    
    pushMatrix();
    //rotate(radians(30));
    antonRenang(-600+grk5,150);
    bungaRenang(-400+grk5,150);
    
    if(grk5<2700){
      grk5+=12;
    }
    popMatrix();
    
    

  }
  
  //scene 6 menjelajah isi gua
  if((t>1540)&&(t<=2350)){
    background(77,148,255);
    pasir();
    gua();
    
    pushMatrix();
    noStroke();
    translate(-200,-250);
    scale(1.3);
    terumbuKarang(1300,720,#ffdea8);
    terumbuKarang(900,720,#2593ae);
    terumbuKarang(1500,720,#ff5555);
    terumbuKarang(1100,750,#ffc5ff);
    terumbuKarang(700,730,#70c5ff);
    terumbuKarang(500,740,#2593ae);
    terumbuKarang(100,730,#ffdea8);
    terumbuKarang(1600,760,#2593ae);
    terumbuKarang(1200,790,#70c5ff);
    terumbuKarang(800,770,#ffc5ff);
    terumbuKarang(400,780,#ff5555);
    terumbuKarang(50,770,#ff5555);
    popMatrix();
    
    pushMatrix();
    ikanKecil(180+grk61, 70, 0);
    ikanKecil(330+grk61, 630, 0);
    ikanKecil(520+grk61, 250, 0);
    ikanKecil(370+grk61, 770, 0);
    ikanKecil(480+grk61, 630, 0);
    ikanKecil(1650+grk61, 50, 0);
    ikanKecil(1250+grk61, 150, 0);
    ikanKecil(1450+grk61, 257, 0);
    ikanKecil(1650+grk61, 250, 0);
    ikanKecil(1500+grk61, 850, 0);
    ikanKecil(1790+grk61, 550, 0);
    ikanKecil(1370+grk61, 470, 0);
    ikanKecil(1670+grk61, 670, 0);
    ikanKecil(1690+grk61, 950, 0);
    if(grk61<1920){
      grk61+=20;
    }
    if(grk61>=1920){
      grk61-=3900;
    }
    popMatrix();
    
    pushMatrix();
    ikan(200-grk62, 150);
    ikan(750-grk62, 340);
    ikan(500-grk62, 450);
    ikan(620-grk62, 300);
    ikan(900-grk62, 243);
    ikan(1000-grk62, 180);
    ikan(370-grk62, 340);
    if(grk62<1920){
      grk62+=15;
    }
    if(grk62>=1920){
      grk62-=3700;
    }
    popMatrix();
    
    pushMatrix();
    //rotate(radians(30));
    antonRenang(-600+grk63,150);
    bungaRenang(-400+grk63,150);
    if(grk63<1400){
      grk63+=5;
    }
    popMatrix();
    
    pushMatrix();
    okto(3000-grk64,170);
    if(grk64<1700){
      grk64+=5;
    }
    popMatrix();
    
    pushMatrix();
    ikanDory(1500-grk65, 550, 100);
    ikanDory(1690-grk65, 430, 100);
    ikanDory(1370-grk65, 290, 100);
    ikanDory(1170-grk65, 370, 100);
    if(grk65<1920){
      grk65+=10;
    }
    if(grk65>=1920){
      grk65-=2700;
    }
    popMatrix();
    
    batu(70, 500, 150);
    batu(175, 500, 150);
    batu(780, 500, 150);
    
  
    rumput(150, height - 70, 100, 300);
    rumput(350,  height - 70, 100, 300);
    rumput(1550, height - 70, 100, 300);

  }
  
  //scene 7 kembali ke permukaan
  if((t>2350)&&(t<=3800)){
    background(255, 179, 128); 
    pantai();
    pasirPantai();
    kumpulanAwan();
    ombak();
    
    pushMatrix();
    //rotate(radians(30));
    anton(-400+grk1,250);
    bunga(-200+grk1,260);
    if(grk1<1100){
      grk1+=5;
    }
    popMatrix();    

  }
  
  t++;
  if(t==3800){
    exit();
  }
}
