import peasy.*;
PeasyCam cam;

int len = 100;
float offset = (-3* len)/2;
int SIDES = 6;
int DIM = 3;

Cube cube;

void setup() {
  size (800, 800, P3D);
  //translate(len/2, offset, len/2);
  cam = new PeasyCam(this, 700);
  cam.setMinimumDistance(540);
  cam.setMaximumDistance(815);
  cube = new Cube(); //<>//
  drawCube(cube); //<>//
}

void drawCube(Cube cube) {
  for (int i = 0; i < SIDES * DIM * DIM; i++) {
    cube.displayFaces[i].show();
    //print(" ");
    //print(cube.display[i]);
  }
}


void draw() {
  background(204);
  translate(-len, -len, -len);
  
  pushMatrix();
  translate(-len / 2, len, len);
  fill(0);
  box(0, len, len);
  popMatrix();
  cube.show();
}
