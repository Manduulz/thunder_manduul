void main() {
  final User person = User('John', 30);
  print(person);
  final User person1 = User('Bataa', 47);
  print(person1);
  final User person2 = User('Manduul', 26);
  print(person2);
}

class User {
  String name;
  int age;
  User(this.name, this.age);
  @override
  String toString() {
    // TODO: implement toString
    return 'User{name: $name, age: $age}';
  }
}