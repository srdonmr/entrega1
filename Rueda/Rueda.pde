void setup() {
  size(600, 600);
  frameRate(10);
  background(255);
}

void draw() {
  //background(155);

  float disX = width/float(10);
  float disY = height/float(10);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      noFill();
      stroke(second()*i, second()*j, second(), 110);

      float x = disX * i;
      float y = disY * j;
      arc(x + (disX/2), y + (disY/2), disX, disY, 0, random(HALF_PI, TWO_PI), CHORD);
      fill(255, 55);
      float ancho = disX * 2;
      float a = 1;
      float sine = sin(a * TWO_PI);
      ancho = map(sine, -1, 1, 0, disX);
      ellipse(x + (disX/2), y + (disY/2), ancho, ancho);
      a+=0.001;
    }
  }
}
