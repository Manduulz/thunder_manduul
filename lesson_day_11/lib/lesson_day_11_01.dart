abstract class Weather {
  double temperature;
  double humidity;
  Weather(this.temperature, this.humidity);
  void description();
  void advice();
}
class Rainy extends Weather {
  Rainy(super.temperature, super.humidity);

  @override
  void advice() {
    print("Bring an umbrella");
  }

  @override
  void description() {
    print("Temparature: $temperature, Humidity: $humidity");
  }
}
class Sunny extends Weather {
  Sunny(super.temperature, super.humidity);

  @override
  void advice() {
    print("Wear sunscreen");
  }

  @override
  void description() {
    print("Temparature: $temperature, Humidity: $humidity");
  }
}
class Windy extends Weather {
  Windy(super.temperature, super.humidity);

  @override
  void advice() {
    print("Wear a jacket");
  }

  @override
  void description() {
    print("Temparature: $temperature, Humidity: $humidity");
  }
}
void main() {
  Rainy rainy = Rainy(20.0, 80.0);
  rainy.description();
  rainy.advice();
  Sunny sunny = Sunny(30.0, 50.0);
  sunny.description();
  sunny.advice();
  Windy windy = Windy(15.0, 60.0);
  windy.description();
  windy.advice();
}