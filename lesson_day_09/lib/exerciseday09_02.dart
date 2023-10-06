void main() {
  final Vehicle vehicle = Vehicle('color');
  final Bike suzuki = Bike('White');
  print(suzuki.drive());

}

class Vehicle {
  String color;
  Vehicle(this.color);

  String drive(){
    return "I'm vehicle with $color";
  }
}
class Bike extends Vehicle {
  Bike(super.color);

  @override
  String drive() {
    return 'The bike is pedaling';
  }
}