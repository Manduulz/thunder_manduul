abstract class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
  void sound();
  void move();
  void introduced() {
    print("Hello my name is $name, my age is $age, I am a animal.");
  }
}
class Bird extends Animal {
  Bird(String name, int age) : super(name, age);
  @override
  void sound() {
    print("$name makes Chirp!");
  }
  @override
  void move() {
    print("$name Flies!");
  }
}
class Dog extends Animal {
  Dog(String name, int age) : super(name, age);
  @override
  void sound() {
    print("$name makes woof!");
  }
  @override
  void move() {
    print("$name Runs!");
  }
}
class Fish extends Animal {
  Fish(String name, int age) : super(name, age);
  @override
  void sound() {
    print("$name makes Blub!");
  }
  @override
  void move() {
    print("$name swims");
  }
}
void main() {
  final Dog Chivuava = Dog('Chivuava', 3);
  Chivuava.introduced();
  Chivuava.move();
  Chivuava.sound();
  final Bird shuvuu = Bird('Tagtaa', 9);
  shuvuu.introduced();
  shuvuu.move();
  shuvuu.sound();
  final Fish zagas = Fish('Nemo', 12);
  zagas.introduced();
  zagas.move();
  zagas.sound();
}