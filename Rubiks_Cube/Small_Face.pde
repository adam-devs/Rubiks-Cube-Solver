class SmallFace {
  float colour;
  float face;
  float pos;

  SmallFace(float colour_, float face_, float pos_) {
    colour = colour_;
    face = face_;
    pos = pos_;
  }

  void show() {
    stroke(0);
    strokeWeight(2);
  }
}
