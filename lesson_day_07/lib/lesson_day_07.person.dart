void main() {
  final Person dustin = Person(); // create dustin object
  dustin.firstName = 'Dustin';
  dustin.lastName = 'Peterson';
  print(dustin.getFullName());
  dustin.shout();
}
class Person{
  String? firstName;
  String? lastName;

  String? getFullName() {
    return "$firstName $lastName";
  }

  void shout() { // shout function,
    print('Hi My name is $firstName $lastName');
  }
}