Bird b;
Pipe p;
Pipe p2;

void setup() {
  size(500, 800);
  noStroke();

  b = new Bird();
  p = new Pipe(width+100,int(random(200,600)));
  p2 = new Pipe(width+375,int(random(200,600)));
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
  }
}

void keyReleased() {
  if (!b.ready2flap) {
    b.ready2flap = true;
  }
}
