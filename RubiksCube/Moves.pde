//class to handle the movement of cube pieces
class StateMapping {
  Cube cube;
  int[] oldState;
  int[] oldDisplay;

  int[] d1;
  int[] d2;

  int[] s1;
  int[] s2;

  StateMapping(Cube cube, int[] s1, int[] s2, int[] d1, int[] d2) {
    this.cube = cube;
    oldState = copyArray(cube.display);
    oldDisplay = copyArray(cube.display);
    this.d1 = d1;
    this.d2 = d2;
  }

  public boolean contains(int item, int[] array) {
    for (int i = 0; i < array.length; i++) {
      if (array[i] == item) {
        return true;
      }
    }
    return false;
  }

  public int[] copyArray(int[] array) {
    int[] output = new int[array.length];
    for (int i = 0; i < array.length; i++) {
      output[i] = array[i];
    }
    return output;
  }

  void updateState() {
  }

  void updateDisplay() {
    for (int i = 0; i < d1.length; i += 1) {
      cube.display[d1[i]] = oldDisplay[d2[i]];
      //cube.state[stateMapping[i]] = oldState[stateMapping[i + 1]];
    }
  }
}

//functions to perform the moves
void moveLeft(Cube cube, boolean prime) {
  //two 'hashmaps' describing the translations of the pieces
  int[] s1 = {0, 3, 6, 18, 21, 24, 38, 37, 36, 51, 48, 45, 9, 12, 15, 10, 16, 11, 14, 17};
  int[] s2 = {51, 48, 45, 0, 3, 6, 18, 21, 24, 38, 37, 36, 11, 10, 9, 14, 12, 17, 16, 15};
  
  int[] d1 = {0, 3, 6, 18, 21, 24, 38, 37, 36, 51, 48, 45, 9, 12, 15, 10, 16, 11, 14, 17};
  int[] d2 = {51, 48, 45, 0, 3, 6, 18, 21, 24, 38, 37, 36, 11, 10, 9, 14, 12, 17, 16, 15};

  StateMapping sm;
  if (!prime) {
    sm = new StateMapping(cube, s1, s2, d1, d2);
  } else {
    sm = new StateMapping(cube, s2, s1, d2, d1);
  }
  sm.updateDisplay();
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
