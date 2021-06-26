//functions to perform the moves

void moveLeft(Cube cube, boolean prime) {
  int[] oldState = cube.state;
  int[] oldDisplay = cube.display;
  
  //need two 'hashmaps' (2d int arrays that takes old value to new value) then iterate overthem
  int[][] test = new int[2][6];
  //test[0][] = {1,2,3,4,5,6};
  
  
  cube.state[0] = oldState[4];
  cube.display[0] = oldDisplay[4];
}
void moveRight(Cube cube, boolean prime) {
}
void moveUp(Cube cube, boolean prime) {
}
void moveDown(Cube cube, boolean prime) {
}
void moveFront(Cube cube, boolean prime) {
}
void moveBack(Cube cube, boolean prime) {
}
void moveMiddle(Cube cube, boolean prime) {
}
void moveEquator(Cube cube, boolean prime) {
}
void moveStanding(Cube cube, boolean prime) {
}

//these moves only change the display cube not the data
void moveX(Cube cube, boolean prime) {
}

void moveY(Cube cube, boolean prime) {
}

void moveZ(Cube cube, boolean prime) {
}
