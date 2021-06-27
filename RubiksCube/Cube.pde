public class Cube {
  //0 White, 9 Orange, 18 Green, 27 Red,   36 Yellow, 45 Blue
  public int[] state = new int[SIDES * DIM * DIM];
  //0 Top,   9 Left,   18 Front, 27 Right, 36 Bottom, 45 Back
  public int[] display = new int[SIDES * DIM * DIM];
  public SmallFace[] displayFaces = new SmallFace[SIDES * DIM * DIM];

  Cube() {
    //initialise cube data
    for (int i = 0; i < SIDES; i++) {
      for (int j = 0; j < DIM * DIM; j++) {
        state[(i * DIM * DIM) + j] = i;
        display[(i * DIM * DIM) + j] = i;
        displayFaces[(i * DIM * DIM) + j] = new SmallFace(i % 9, i % 9, j);
      }
    }
    display[28] = -1;
    
  }

  void show() {
    //uses display[]
    for (int i = 0; i < SIDES * DIM * DIM; i++) {
      displayFaces[i].colour = display[i];
      displayFaces[i].show();
    }
  }


  void stringToMove(String input) {
    boolean prime = match(input, "'") != null;
    switch (input) {
    case "l":
      moveLeft(this, prime);
    case "r":
      moveRight(this, prime);
    case "u":
      moveUp(this, prime);
    case "d":
      moveDown(this, prime);
    case "f":
      moveFront(this, prime);
    case "b":
      moveBack(this, prime);
    case "m":
      moveMiddle(this, prime);
    case "e":
      moveEquator(this, prime);
    case "s":
      moveStanding(this, prime);
    case "x":
      moveX(this, prime);
    case "y":
      moveY(this, prime);
    case "z":
      moveZ(this, prime);
    }
  }
}
