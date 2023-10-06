class Vehicle {
  String color;
  Vehicle(this.color);
  String drive(){
    return "I'm a vehicle with $color";
  }
}
class Car extends Vehicle {
  Car(super.color);

}
void main(){
  final Vehicle vehicle = Vehicle('color');
  print(vehicle.drive());
  final Car lambo = Car('White');
  print(lambo.drive());
}