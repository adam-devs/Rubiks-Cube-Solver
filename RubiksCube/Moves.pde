//class to handle the movement of cube pieces
class Mapping {
  Cube cube;
  int[] oldState;
  int[] oldDisplay;

  int[] d1;
  int[] d2;

  int[] s1;
  int[] s2;


  Mapping(Cube cube, int[] d2, int[] d1) {
    this.cube = cube;
    oldState = copyArray(cube.display);
    oldDisplay = copyArray(cube.display);
    this.d1 = d1;
    this.d2 = d2;
  }

  Mapping(Cube cube, int[] s1, int[] s2, int[] d1, int[] d2) {
    this.cube = cube;
    oldState = copyArray(cube.display);
    oldDisplay = copyArray(cube.display);
    this.s1 = s1;
    this.s2 = s2;
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

  void updateState() {
  }

  void updateDisplay() {
    for (int i = 0; i < d1.length; i += 1) {
      cube.display[d1[i]] = oldDisplay[d2[i]];
      //cube.state[s1[i]] = oldState[s2[i + 1]];
    }
  }
}

public int[] copyArray(int[] array) {
  int[] output = new int[array.length];
  for (int i = 0; i < array.length; i++) {
    output[i] = array[i];
  }
  return output;
}

//functions to perform the moves
void moveLeft(Cube cube, boolean prime) {
  //two 'hashmaps' describing the translations of the pieces
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {0, 3, 6, 18, 21, 24, 38, 37, 36, 51, 48, 45, 9, 12, 15, 10, 16, 11, 14, 17};
  int[] d2 = {51, 48, 45, 0, 3, 6, 18, 21, 24, 38, 37, 36, 11, 10, 9, 14, 12, 17, 16, 15};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveRight(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {2, 5, 8, 20, 23, 26, 44, 43, 42, 53, 50, 47, 33, 30, 27, 34, 28, 35, 32, 29};
  int[] d2 = {20, 23, 26, 44, 43, 42, 53, 50, 47, 2, 5, 8, 35, 34, 33, 32, 30, 29, 28, 27};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveUp(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {9, 12, 15, 18, 19, 20, 33, 30, 27, 45, 46, 47, 0, 1, 2, 3, 5, 6, 7, 8};
  int[] d2 = {45, 46, 47, 9, 12, 15, 18, 19, 20, 33, 30, 27, 2, 5, 8, 1, 7, 0, 3, 6};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveDown(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {24, 25, 26, 35, 32, 29, 51, 52, 53, 44, 43, 42, 41, 39, 38, 37, 36, 11, 14, 17};
  int[] d2 = {11, 14, 17, 24, 25, 26, 35, 32, 29, 38, 41, 44, 37, 43, 36, 39, 42, 51, 52, 53};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveFront(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {17, 16, 15, 6, 7, 8, 33, 34, 35, 44, 41, 38, 18, 19, 20, 21, 23, 24, 25, 26};
  int[] d2 = {44, 41, 38, 17, 16, 15, 6, 7, 8, 33, 34, 35, 24, 21, 18, 25, 19, 26, 23, 20};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveBack(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {0, 1, 2, 27, 28, 29, 42, 39, 36, 11, 10, 9, 51, 52, 53, 50, 47, 46, 45, 48};
  int[] d2 = {11, 10, 9, 0, 1, 2, 27, 28, 29, 42, 39, 36, 45, 48, 51, 52, 53, 50, 47, 46};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveMiddle(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {1, 4, 7, 19, 22, 25, 41, 40, 39, 52, 49, 46};
  int[] d2 = {19, 22, 25, 41, 40, 39, 52, 49, 46, 1, 4, 7};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveEquator(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {10, 13, 16, 21, 22, 23, 34, 31, 28, 48, 49, 50};
  int[] d2 = {48, 49, 50, 10, 13, 16, 21, 22, 23, 34, 31, 28};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}
void moveStanding(Cube cube, boolean prime) {
  int[] s1 = {0}; //TODO: finish state
  int[] s2 = {0};

  int[] d1 = {3, 4, 5, 30, 31, 32, 43, 40, 37, 14, 13, 12};
  int[] d2 = {14, 13, 12, 3, 4, 5, 30, 31, 32, 43, 40, 37};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, s1, s2, d1, d2);
  } else {
    map = new Mapping(cube, s2, s1, d2, d1);
  }
  map.updateState();
  map.updateDisplay();
}

//these moves only change the display cube not the data
void moveX(Cube cube, boolean prime) {
  int[] d1 = {3, 4, 5, 30, 31, 32, 43, 40, 37, 14, 13, 12};//TODO: complete full translations
  int[] d2 = {14, 13, 12, 3, 4, 5, 30, 31, 32, 43, 40, 37};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, d1, d2);
  } else {
    map = new Mapping(cube, d2, d1);
  }
  map.updateDisplay();
}

void moveY(Cube cube, boolean prime) {
  int[] d1 = {3, 4, 5, 30, 31, 32, 43, 40, 37, 14, 13, 12};//TODO: complete full translations
  int[] d2 = {14, 13, 12, 3, 4, 5, 30, 31, 32, 43, 40, 37};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, d1, d2);
  } else {
    map = new Mapping(cube, d2, d1);
  }
  map.updateDisplay();
}

void moveZ(Cube cube, boolean prime) {
  int[] d1 = {3, 4, 5, 30, 31, 32, 43, 40, 37, 14, 13, 12};//TODO: complete full translations
  int[] d2 = {14, 13, 12, 3, 4, 5, 30, 31, 32, 43, 40, 37};

  Mapping map;
  if (!prime) {
    map = new Mapping(cube, d1, d2);
  } else {
    map = new Mapping(cube, d2, d1);
  }
  map.updateDisplay();
}
