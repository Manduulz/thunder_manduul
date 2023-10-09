abstract class Vehicle {
  double speed;
  double fuel;
  Vehicle(this.speed, this.fuel);
  void accelerate();
  void brake();
  void fuelEfficency();
}
class Car extends Vehicle {
  Car(double speed, double fuel) : super(speed, fuel);
  @override
  void accelerate() {

    speed = speed + 10;
    fuel = fuel - 5;
    print('Car is accelerating. $speed, fuel is : $fuel');
  }

  @override
  void brake() {

    speed = speed - 10;
    fuel = fuel - 5;
    print('Car is braking. $speed, fuel is : $fuel');
  }

  @override
  void fuelEfficency() {
    print('Fuel Efficency is : ${speed / fuel}');

  }
}
class Bike extends Vehicle {
  Bike(double speed, double fuel) : super(speed, fuel);

  @override
  void accelerate() {

    speed = speed + 5;
    fuel = fuel - 2;
    print('Bike is accelerating. speed is $speed, fuel is $fuel');
  }

  @override
  void brake() {

    speed = speed - 5;
    fuel = fuel -2;
    print('Bike is braking. speed is $speed, fuel is $fuel');
  }

  @override
  void fuelEfficency() {
    speed / fuel;
    print('Fuel Efficency is : ${speed / fuel}');
  }
}
class Bus extends Vehicle {
  Bus(double speed, double fuel) : super(speed, fuel);

  @override
  void accelerate() {

    speed = speed + 2;
    fuel = fuel - 10;
    print('Bus is accelerating. speed is $speed, fuel is $fuel');
  }

  @override
  void brake() {

   speed = speed - 2;
   fuel = fuel - 10;
   print('Bus is braking. speed is $speed, fuel is $fuel');
  }

  @override
  void fuelEfficency() {
    print('Fuel Efficiency is : ${speed / fuel}');
    speed / fuel;
  }
}
void main() {
  final Car mashin = Car(45.0, 95.0);
  mashin.accelerate();
mashin.brake();
mashin.fuelEfficency();
final Bike dugui = Bike(15.0, 50.0);
dugui.accelerate();
dugui.brake();
dugui.fuelEfficency();
final Bus avtus = Bus(23.0, 150.0);
avtus.accelerate();
avtus.brake();
avtus.fuelEfficency();
}