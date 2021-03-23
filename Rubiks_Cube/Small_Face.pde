class SmallFace {
  private COLOUR colour;
  private FACE face;
  private int pos; 
  //0 1 2
  //3 4 5
  //6 7 8

  SmallFace(COLOUR colour, FACE face, int pos) {
    this.colour = colour;
    this.face = face;
    this.pos = pos;
  }

  void show() {
    stroke(0);
    strokeWeight(2);
    int[] coordinates = {};
    switch(face) {
    case TOP://top
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1] - len/2, coordinates[2]);
      box(len, 0, len);
      popMatrix();
    case LEFT://left
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0] - len/2, coordinates[1], coordinates[2]);
      box(0, len, len);
      popMatrix();
    case FRONT://front
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1], coordinates[2] - len/2);
      box(len, len, 0);
      popMatrix();
    case RIGHT://right
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0] - len/2, coordinates[1], coordinates[2]);
      box(0, len, len);
      popMatrix();
    case BOTTOM://bottom
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1] - len/2, coordinates[2]);
      box(len, 0, len);
      popMatrix();
    case BACK://back
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1], coordinates[2] - len/2);
      box(len, len, 0);
      popMatrix();
    }
  }

  int[] positionToCoordinate(int pos, FACE face) {
    int[] coordinates = {0, 0, 0};
    switch(face) {//top 0
    case TOP:
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = 0;
      coordinates[2] = int((pos - (pos%3))*len/3);

    case LEFT://left 1
      coordinates[0] = 0;
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);

    case FRONT://front 2
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = int(3 * len);

    case RIGHT://right 3
      coordinates[0] = int(3 * len);
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);

    case BOTTOM://bottom 4
      coordinates[0] = int((pos - (pos%3))*len/3);
      coordinates[1] = int(3 * len);
      coordinates[2] = int(pos%3 * len);

    case BACK://back 5
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = 0;
    }
    return coordinates;
  }

  color colourConvert(COLOUR i) {
    switch(i) {
    case WHITE://white
      return color(255, 255, 255);
    case ORANGE://orange
      return color(241, 110, 28);
    case GREEN://green
      return color(50, 173, 66);
    case RED://red
      return color(244, 50, 48);
    case YELLOW://yellow
      return color(248, 231, 39);
    case BLUE://blue
      return color(49, 78, 158);
    default:
      return color(0, 0, 0);
    }
  }
}
