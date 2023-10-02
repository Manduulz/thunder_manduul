void main() {
  final TmpConverter celstofahr = TmpConverter();
  celstofahr.celsius = 12;
  print(celstofahr.CelsiustoFahrenheit());
  celstofahr.fahrenheit = 53.6;
  print(celstofahr.FahrenheittoCelsius());
}

class TmpConverter {
  double celsius = 0;
  double CelsiustoFahrenheit(){
    return celsius * (9/5) +32;
  }
  double fahrenheit = 0;
  double FahrenheittoCelsius(){
    return (fahrenheit - 32) * 5/9;
  }
}