void main() {
  final Animal nohoi = Animal('Dog', 11);
  print(nohoi);
  print(nohoi.makeSound());
print(nohoi.isOlderthan(2020));
print(nohoi.isOlderthan(5));
}

class Animal {
  String name;
  int age;
  String makeSound(){
    return "$name makes a sound!";
  }
  bool isOlderthan(int years){
    if(years > age){
      return true;
    }else{
      return false;
    }
  }
  Animal(this.name, this.age);
  @override
  String toString() {
    // TODO: implement toString
    return 'Animal{name: $name, age: $age}';
  }
}