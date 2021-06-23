import peasy.*;
PeasyCam cam;

int len = 100;
int SIDES = 6;
int DIM = 3;

Cube cube;

void setup() {
  size (800, 800, P3D);
  cam = new PeasyCam(this, 700);
  cam.setMinimumDistance(540);
  cam.setMaximumDistance(815);
  cube = new Cube();
}

void drawCube(Cube cube) {
  for (int i = 0; i < SIDES * DIM * DIM; i++) {
    cube.displayFaces[i].show();
  }
}


void draw() {
  background(204);
  translate(-len, -len, -len);
  drawCube(cube);
}
