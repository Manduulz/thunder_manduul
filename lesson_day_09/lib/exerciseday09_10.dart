import 'dart:math';
class Calculator {
  double? addition(double x, double y) {
    return x + y;
  }
  double? substraction(double x, double y) {
    return x - y;
  }
}
class ScientificCalculator extends Calculator {


  double sqrt(double a){
    if(a < 0){
      throw Exception('Negative value given for square root');
    }else{
      return a * 0.5;
    }
  }
}
void main() {
  final Calculator mglCalculator = Calculator();
  print(mglCalculator.addition(5.4, 3.6));
  print(mglCalculator.substraction(9.9, 3.3));
  final ScientificCalculator ubCalculator = ScientificCalculator();
  print(ubCalculator.addition(4.4, 2.6));
  print(ubCalculator.substraction(7.4, 1.1));
  // print(ubCalculator.sqrt(-1));
  print(ubCalculator.sqrt(4));
}

