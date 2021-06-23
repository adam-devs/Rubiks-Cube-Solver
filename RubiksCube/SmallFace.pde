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
    int[] coordinates = positionToCoordinate(pos, face);
    int[] dimensions = faceToDimension(face);
    pushMatrix();
    fill(colourConvert(colour));
    coordinates = positionToCoordinate(pos, face);
    translate(coordinates[0], coordinates[1], coordinates[2]);
    box(dimensions[0], dimensions[1], dimensions[2]);
    popMatrix();
  }

  int[] faceToDimension(int face) {
    int[] dim = {len, len, len};
    switch (face) {
    case 0:
    case 4:
      dim[1] = 0;
      break;
    case 1:
    case 3:
      dim[0] = 0;
      break;
    case 2:
    case 5:
      dim[2] = 0;
      break;
    }
    return dim;
  }

  int[] positionToCoordinate(int pos, int face) {
    int[] coordinates = {0, 0, 0};
    switch(face) {
    case 0://Top 0
      coordinates[0] = int(pos%3 * len);
      coordinates[1] =  - len/2;
      coordinates[2] = int((pos - (pos%3))*len/3);
      break;
    case 1://Left 1
      coordinates[0] =  - len/2;
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);
      break;
    case 2://Front 2
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] = int(3 * len) - len/2;
      break;
    case 3://Left 3
      coordinates[0] = int(3 * len) - len/2;
      coordinates[1] = int(pos%3 * len);
      coordinates[2] = int((pos - (pos%3))*len/3);
      break;
    case 4://Bottom 4
      coordinates[0] = int((pos - (pos%3))*len/3);
      coordinates[1] = int(3 * len) - len/2;
      coordinates[2] = int(pos%3 * len);
      break;
    case 5://Back 5
      coordinates[0] = int(pos%3 * len);
      coordinates[1] = int((pos - (pos%3))*len/3);
      coordinates[2] =  - len/2;
      break;
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
