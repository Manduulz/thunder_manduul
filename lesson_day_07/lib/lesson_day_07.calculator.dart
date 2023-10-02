void main() {
  final Calculator koreanCalculator = Calculator();
  print(koreanCalculator.addition(7, 12));
  print(koreanCalculator.subtraction(125, 27.356));
  print(koreanCalculator.multiplication(120, 2.5));
  print(koreanCalculator.division(124, 4.6));

}

class Calculator {
  double? addition(double a, double b) {
    return a + b;
  }
  double? subtraction(double a, double b) {
    return a - b;
}
  double? multiplication(double a, double b) {
    return a * b;
  }
  double? division(double a, double b) {
    return a / b;
  }

}