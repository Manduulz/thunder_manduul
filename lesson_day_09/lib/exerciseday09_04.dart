class Person {
  String name;
  Person(this.name);

  void greet(){
    print( "My name is $name");
  }
}
class Employee extends Person {

  Employee(super.name) : super();

  @override
  void greet() {
    super.greet();
    print('Im an employee. My Name is ${super.name}');
  }


}
void main(){
  final Person person = Person("Altan");
  person.greet();
  final Employee employee = Employee('Mungun');
  employee.greet();


}