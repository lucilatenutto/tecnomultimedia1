//tenutto lucila
//tp 2 comision 1
//https://youtu.be/AEmvYLtfcN4

PImage ilusionbyn1 ;
int tamcuad = 20;
int numlineas; 
int centerline; 
color negro = color(0);
color blanco = color(255);
color originalnegro;
color originalblanco;

void setup() {
  size(800, 400);
  numlineas = width/tamcuad; 
  centerline = tamcuad/2; 
  background(255);
}

void draw() {
  background(255);
  ilusionbyn1 = loadImage  ("ilusionbyn1.jpg");
   image (ilusionbyn1, 0, 0, 400, 400);
  
  for (int i = numlineas / 2; i < numlineas; i++) {
    for (int j = 0; j < numlineas; j++) {
      int x = i * tamcuad + centerline;
      int y = j * tamcuad + centerline;
      
      if ((i + j) % 2 == 0) {
        drawEllipses(x, y, tamcuad);
      } else {
        drawRectangles(x, y, tamcuad);
      }
    }
  }
}

void drawEllipses(int x, int y, int size) {
  noStroke();
  fill(negro);
  ellipse(x, y, size, size);
}

void drawRectangles(int x, int y, int size) {
  noStroke();
  fill(blanco);
  rectMode(CENTER);
  rect(x, y, size, size);
}

void mousePressed() {
  if (negro == color(0)) {
    negro = color(255, 0, 0); 
    blanco = color(255, 255, 0); 
  } else {
    negro = color(0); 
    blanco = color(255); 
  }
}

void mouseMoved() {
  negro = color(random(255), random(255), random(255));
  blanco = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    negro = originalnegro;
    blanco = originalblanco;
  }
}
