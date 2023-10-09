import 'dart:io';

abstract class Sportsperson {
  String name;
  int age;
  double stamina;

  Sportsperson(this.name, this.age, this.stamina);

  void train();
  void rest();
  void compete();
  void hydrate();
  String statistics();
  void introduced() {
    print("Hello, my name is $name and I am a sportsperson!");
  }
}
class Footballer extends Sportsperson {
  int goalScored;
  Footballer(String name, int age, double stamina, this.goalScored) : super(name, age, stamina);

  @override
  void train() {
    print("$name is training on the football field.");
  }
  @override
  void rest() {
    print("$name is resting after a football match.");
  }
  @override
  void compete() {
  print("$name is competing in a football match.");
  }
  @override
  void hydrate() {
    print("$name is drinking water during halftime.");
  }
  @override
  String statistics() {

    return "$name has scored $goalScored goals!";
  }
}
class Cricketer extends Sportsperson {
  int runsScored;

  Cricketer(String name, int age, double stamina, this.runsScored) : super(name, age, stamina);

  @override
  void train() {
    print("$name is training in the nets.");
  }
  @override
  void rest() {
    print("$name is resting after a cricket game.");
  }
  @override
  void compete() {
    print("$name is competing in a cricket match.");
  }
  @override
  void hydrate() {
    print("$name is drinking an energy drink during a drinks break.");
  }
  @override
  String statistics() {
    return "$name has scored $runsScored runs!";
  }
}
void main() {
  Footballer leo = Footballer("Leo messi", 35, 90.5, 700);
  leo.introduced();
  leo.train();
  leo.rest();
  leo.compete();
  leo.hydrate();
  print(leo.statistics());
}