float x = 0;
float y = 0;
float speedX = 18.3;
float speedY = 5.9;
void setup() {
  size(700, 700);
  background(225, 225, 100);
}

void draw() {
  noFill();
  stroke(#05185A, 50);
  strokeWeight(2);
  rect(x, y, 20, 40, -40);

  x = x + speedX;
  y = y + speedY;

  if (x>=(width-5)||x<=5) {
    speedX = speedX * -1;
  }  
  if (y>=(height-5)||y<=5) {
    speedY = speedY * -1;
  }

}

void keyPressed() {
  if (key == 's' || key == 'S') {
    saveFrame("tejidomov###.png");
  }
}
