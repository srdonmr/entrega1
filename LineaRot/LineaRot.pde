float a = 0;

void setup() {
  size(600, 600);
  frameRate(10);
  background(100, 10);
  blendMode(ADD);
}

void draw() {
  //background(155);

  float ancho = width/float(10);
  float alto = height/float(10);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      noFill();
      stroke(215, 100, 25, 15);

      float x = ancho * i;
      float y = alto * j;

      pushMatrix();
      translate(x, y);
      rotate(a);
      fill(13, 21.5, 2.5, 10);
      rect(x, y, ancho, alto, -25);
      noFill();
      line(x, y, x + ancho, y + alto);
      popMatrix();
      x++;
    }
    a += 0.0024;
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    saveFrame("Gen####.png");
  }
}
