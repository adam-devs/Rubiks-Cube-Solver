import peasy.*; //<>//
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
  cube = new Cube();
  drawCube(cube);
}

void drawCube(Cube cube) {
  for (int i = 0; i < SIDES * DIM * DIM; i++) {
    cube.displayFaces[i].show();
  }
}

void keyPressed() {
  boolean prime = key < 91;
  switch(key) {
  case 'l':
  case 'L':
    moveLeft(cube, prime);
    break;
  case 'r':
  case 'R':
    moveRight(cube, prime);
    break;
  case 'u':
  case 'U':
    moveUp(cube, prime);
    break;
  case 'd':
  case 'D':
    moveDown(cube, prime);
    break;
  case 'f':
  case 'F':
    moveFront(cube, prime);
    break;
  case 'b':
  case 'B':
    moveBack(cube, prime);
    break;
  case 'm':
  case 'M':
    moveMiddle(cube, prime);
    break;
  case 'e':
  case 'E':
    moveEquator(cube, prime);
    break;
  case 's':
  case 'S':
    moveStanding(cube, prime);
    break;
  case 'x':
  case 'X':
    moveX(cube, prime);
    break;
  case 'y':
  case 'Y':
    moveY(cube, prime);
    break;
  case 'z':
  case 'Z':
    moveZ(cube, prime);
    break;
  }
}


void draw() {
  background(204);
  translate(-len, -len, -len);
  cube.show();
}
