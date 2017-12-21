class Volume {
  int get_volume(int a) {
    // ch = 1
    return a * a * a;
  }

  int get_volume(int l, int b, int h) {
    // ch = 2
    return l * b * h;
  }

  double get_volume(double r) {
    // ch = 3
    return Math.PI * r * r * r * 2 / 3;
  }

  double get_volume(double r, double h) {
    // ch = 4
    return Math.PI * r * r * h;
  }
}