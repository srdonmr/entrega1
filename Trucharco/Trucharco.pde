int colX = 45;
int colY = 30;
int a = 1;


void setup() {
  size(600, 400);
  frameRate(6);
  //noLoop();
}

void draw() {

  //noFill();
  fill(255);
  background(0);
  /*if (colX > 1) {
    noStroke();
    colX += 1;
    colY += 1;
  } else if (colX > 26){
    redraw();
  }*/
  noStroke();
  for (int i = 0; i <= colX; i++) {
    float ancho = float(width/colX);
    float alto = float(height/colY);
    for (int j = 0; j <= colY; j++) {
      float x = ancho * i;
      float y = alto * j;
      int coin = int(random(2));
      if (coin==0) {
        strokeWeight(random(1, 3));
        arc(x, y, ancho, alto, 0, HALF_PI, PIE);
        arc(x+ancho, y+alto, ancho, alto, PI, HALF_PI*3, PIE);
      } else {
        strokeWeight(random(4, 5));
        arc(x, y+alto, ancho, alto, HALF_PI*3, TWO_PI, PIE);
        arc(x+ancho, y, ancho, alto, HALF_PI, PI, PIE);
      }
    }
  }
  //saveFrame("truchetnegro####.png");
}

void keyPressed() {
  if (key == 's') {
    saveFrame("truchet####.png");
  }
}

void mouseClicked() {
  colX +=1;
  colY += 2;
}
