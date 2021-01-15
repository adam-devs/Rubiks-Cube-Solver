class SmallFace {
  int colour;
  int face;
  int pos;

  SmallFace(int colour_, int face_, int pos_) {
    colour = colour_;
    face = face_;
    pos = pos_;
  }

  void show() {
    stroke(0);
    strokeWeight(2);
    int[] coordinates = {};
    switch(str(face)) {
    case "0"://top
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1] - len/2, coordinates[2]);
      box(len, 0, len);
      popMatrix();
     case "1"://left
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0] - len/2, coordinates[1], coordinates[2]);
      box(0, len, len);
      popMatrix();
     case "2"://front
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1], coordinates[2] - len/2);
      box(len, len, 0);
      popMatrix();
     case "3"://right
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0] - len/2, coordinates[1], coordinates[2]);
      box(0, len, len);
      popMatrix();
     case "4"://bottom
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1] - len/2, coordinates[2]);
      box(len, 0, len);
      popMatrix();
     case "5"://back
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1], coordinates[2] - len/2);
      box(len, len, 0);
      popMatrix();
    }
  }

  int[] positionToCoordinate(int pos, int face) {
    int[] coordinates = {0, 0, 0};
    switch(face) {//top 0
    case 0:
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = 0;
      coordinates[2] = int((pos - (pos%3))*len/3);

    case 1://left 1
      coordinates[0] = 0;
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);

    case 2://front 2
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = int(3 * len);

    case 3://right 3
      coordinates[0] = int(3 * len);
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);

    case 4://bottom 4
      coordinates[0] = int((pos - (pos%3))*len/3);
      coordinates[1] = int(3 * len);
      coordinates[2] = int(pos%3 * len);

    case 5://back 5
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = 0;
    }
    return coordinates;
  }

  color colourConvert(int i) {
    switch(int(i)) {
    case 0://white
      return color(255, 255, 255);
    case 1://orange
      return color(241, 110, 28);
    case 2://green
      return color(50, 173, 66);
    case 3://red
      return color(244, 50, 48);
    case 4://yellow
      return color(248, 231, 39);
    case 5://blue
      return color(49, 78, 158);
    default:
      return color(0, 0, 0);
    }
  }
}
