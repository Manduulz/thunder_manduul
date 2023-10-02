// import 'dart:math';
//
// void main() {
// print(celsiusToFahrenheit(13));
//
// }
// double celsiusToFahrenheit(double celsius){
//   print('Calculate celsius to fahrenheit: ');
//   double fahrenheit = celsius * (9/5) + 32;
//   return fahrenheit;
// }
//
import 'dart:math';

void main() {
print(fahrenheitToCelsius(54));
}
double fahrenheitToCelsius(double fahrenheit){
  print('Calculate fahrenheit to celsius:');
  double celsius = (fahrenheit - 32) * 5/9;
  return celsius;
}