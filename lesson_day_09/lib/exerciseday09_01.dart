void main() {
  final Vehicle car = Vehicle('White');
  final Car lambo = Car('Green');
  print(lambo.Honk());
  print(lambo.Drive());

}

class Vehicle {
  String color;
  Vehicle(this.color);
  String Drive(){
    return "I'm a vehicle with $color";
}
}
class Car extends Vehicle{
  Car(super.color);
  String Honk(){
    return "Beep Beep Beep";
  }
}

