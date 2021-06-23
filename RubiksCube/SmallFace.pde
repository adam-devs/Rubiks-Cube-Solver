public class SmallFace {
  private int colour;
  private int face;
  private int pos; 
  //0 1 2
  //3 4 5
  //6 7 8

  SmallFace(int colour, int face, int pos) {
    this.colour = colour;
    this.face = face;
    this.pos = pos;
  }

  void show() {
    stroke(0);
    strokeWeight(2);
    int[] coordinates = {};
    switch(face) {
    case 0://Top
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1] - len/2, coordinates[2]);
      box(len, 0, len);
      popMatrix();
    case 1://Left
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0] - len/2, coordinates[1], coordinates[2]);
      box(0, len, len);
      popMatrix();
    case 2://Front
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1], coordinates[2] - len/2);
      box(len, len, 0);
      popMatrix();
    case 3://Right
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0] - len/2, coordinates[1], coordinates[2]);
      box(0, len, len);
      popMatrix();
    case 4://Bottom
      pushMatrix();
      fill(colourConvert(colour));
      coordinates = positionToCoordinate(pos, face);
      translate(coordinates[0], coordinates[1] - len/2, coordinates[2]);
      box(len, 0, len);
      popMatrix();
    case 5://Back
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
    switch(face) {//Top 0
    case 0:
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = 0;
      coordinates[2] = int((pos - (pos%3))*len/3);

    case 1://Left 1
      coordinates[0] = 0;
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);

    case 2://Front 2
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = int(3 * len);

    case 3://Right 3
      coordinates[0] = int(3 * len);
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);

    case 4://Bottom 4
      coordinates[0] = int((pos - (pos%3))*len/3);
      coordinates[1] = int(3 * len);
      coordinates[2] = int(pos%3 * len);

    case 5://Back 5
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = 0;
    }
    return coordinates;
  }

  color colourConvert(int i) {
    switch(i) {
    case 0://White
      return color(255, 255, 255);
    case 1://Orange
      return color(241, 110, 28);
    case 2://Green
      return color(50, 173, 66);
    case 3://Red
      return color(244, 50, 48);
    case 4://Yellow
      return color(248, 231, 39);
    case 5://Blue
      return color(49, 78, 158);
    default:
      return color(0, 0, 0);
    }
  }
}
