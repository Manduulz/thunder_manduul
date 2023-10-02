import 'dart:math';

void main() {
print(calculateCircleArea(10.5));
print(calculateCircleArea(5.6));
print(calculateCircleArea(3.0));
}
double calculateCircleArea(double a){
  double sq = 3.14 * (a*a);
  return sq;
}