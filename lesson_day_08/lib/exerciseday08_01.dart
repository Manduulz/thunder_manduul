void main() {
  final Vehicle car = Vehicle('Car', 4);
  print(car);
  final Vehicle bike = Vehicle('Bike', 2);
  print(bike);
  final Vehicle bicycle = Vehicle('Bicycle', 2);
  print(bicycle);
}

class Vehicle {
  String type;
  int wheels;
  Vehicle (this.type, this.wheels);
  @override
  String toString() {
    // TODO: implement toString
    return 'Vehicle{Type: $type, wheels: $wheels}';
  }
}