import 'dart:math';

void main() {
  print(calculateDiametr(10.5));
  print(calculateDiametr(5.6));
  print(calculateDiametr(3.0));
}

double calculateDiametr(double radius) {
  double diametr = radius * 2;
  return diametr;
}
