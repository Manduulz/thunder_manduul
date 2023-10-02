void main() {
  final Car cars = Car();
  cars.mark = 'Toyota';
  cars.model = 'Land Cruiser 300';
  cars.year = 2020;
  print(cars.mark);
  print(cars.model);
  print(cars.year);
}

class Car {
  String? mark;
  String? model;
  int? year;
}