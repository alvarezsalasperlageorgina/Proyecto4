import processing.video.*;

PImage col;
PImage ras;

Capture cam;

void setup () {
  size (900, 600);
  
  cam = new Capture (this, 640, 480);
  cam.start();
  
  col = loadImage("Coladera.png");
  ras = loadImage("rasgaduras.png");
}

void draw () {  
  cam.read();
  image(cam, 0, 0, width, height);
  
  //Primer cuadrante  
  for (int i = 0; i < 300; i = i+100) {
    for (int j = 0; j< 300; j = j+100) {
      image(cam, i, j, 100, 100);
    }
  }
  
  //Segundo
  
  //Tercero
  noStroke ();
  fill (0, 0, 255, 50);
  rect (600, 0, 300, 300);
  
  //Cuarto
  fill (0, 0, 255, 30);
  image(cam, 0, 300, 300, 300);
  
  //Quinto
  image(col, 300, 300, 300, 300);
  
  //Sexto
  image(ras, 600, 300, 300, 300);
  
}