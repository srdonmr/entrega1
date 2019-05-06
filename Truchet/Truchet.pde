import processing.pdf.*;

void setup() {
  size(500, 500);
  noLoop();
  beginRecord(PDF, "Truchet.pdf");
}



void draw() {
  background(random(255), random(255), random(255));
  int colX = int(random(25, 75));
  int colY = int(random(20, 60));
  float ancho = width / float (colX);
  float alto = height / float (colY);
  stroke(random(255), random(255), random(255));

  for (int i = 0; i < colX; i++) {
    for (int j = 0; j < colY; j++) {
      float x = i * ancho;
      float y = j * alto;
      int coin = int(random(2));

      if (coin==0) {
        line(x, y, x+ancho, y+alto);
        strokeWeight(random(4, 5));
      } else {
        line(x+ancho, y, x, y+alto);
        strokeWeight(random(2, 4));
      }
    }
  }
}

void keyPressed() {
  if (key == 's') {
    endRecord();
    exit();
  } else if (key == 'r') {
    redraw();
  }
}
