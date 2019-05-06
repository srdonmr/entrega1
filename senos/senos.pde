float a = 0;
float b = 0;

void setup() {
  size(1500, 1500);
}

void draw() {
  background(233);
  float n = mouseY/10;
  float s = height/n;
  beginShape();
  for (int y = 0; y<n; y++) {
    float sine = sin(a+(y*0.085));
    sine = map(sine, -1, 1, 0, width);
    stroke(0);
    strokeWeight(random(5, 8));
    line(0, y*s, sine, y*s);
    a += 0.0025;
    float sineX = sin(b+(y*-0.072));
    sineX = map(sineX, 1, -1, 0, width);
    line(width, (y*s)+s/2, sineX, (y*s)+s/2);
    b +=0.0015;
    noFill();
    vertex(sine, y*s);
    vertex(sineX, (y*s) + s/2);
  }
  endShape();
}

void keyPressed(){
  if(key=='s'){
    saveFrame("seno####.png");
  }
}
