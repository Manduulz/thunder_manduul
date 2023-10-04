void main() {
  //Lesson day 08 class constructor.
  final Vehicle bicycle = Vehicle('Bicycle', 3); // bicycle object - constructor
  print(bicycle.type);
  print(bicycle.wheels);
final Vehicle car = Vehicle(('Car'), 4);
print(car.type);
print(car.wheels);
final Building bshin = Building('MN tower', 20);
print(bshin.name);
print(bshin.stock);
}
class Building{
  String name;
  int stock;
  Building (this.name, this.stock); // always


}

class Vehicle{
  String? type;
  int? wheels;

Vehicle(String type, int wheels){
  this.type = type;
  this.wheels = wheels;
}

}