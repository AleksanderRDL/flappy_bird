Bird b;
Pipe p;
Pipe p2;
boolean gameStart;

void setup() {
  size(600, 800);
  noStroke();
  gameStart = false;
  b = new Bird();
  p = new Pipe(width+100, int(random(200, 600)));
  p2 = new Pipe(width+425, int(random(200, 600)));
}

void draw() {
  background(0);
  b.render();
  b.update();
  p.render();
  p2.render();
  p.update();
  p2.update();
}

void keyPressed() {
  if (key == ' ') {
    b.dy=0;
    b.flap();
    gameStart = true;
  }
}

void keyReleased() {
  if (!b.ready2flap) {
    b.ready2flap = true;
  }
}
