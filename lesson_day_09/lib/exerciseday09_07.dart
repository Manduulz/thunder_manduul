class Gadget {
  String name;
  String state;
  Gadget(this.name, this.state);
  String turnOn(){
    return "I'm on";
  }
  String charge(){
    return " Charging Gadget";
  }
}
class Smartphone extends Gadget {
  Smartphone(super.name, super.state);
  @override
  String turnOn() {
    return "Smartphone turns on";
  }

 @override
  String charge() {
   return "Charging smartphone";
  }
}
void main() {
  final Gadget gadget = Gadget("Weather", "Ulan Bator");
  print(gadget.turnOn());
  print(gadget.charge());
  final Smartphone Iphone = Smartphone("I-Phone", "Ulaanbaatar");
  print(Iphone.charge());
  print(Iphone.turnOn());
}