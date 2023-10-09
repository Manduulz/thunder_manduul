abstract class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void details();
}
class Student extends Person {
  String school;
  Student(String name, int age, this.school) : super(name, age,);
  @override
  void details() {
    print("Student's name is $name, Student's age is $age, Student's school is $school");
  }
}
class Teacher extends Person {
  String school;
  Teacher(String name, int age, this.school) : super(name, age);

  @override
  void details() {
    print("Teacher's name is $name, Teacher's age is $age, Teacher's school is $school");
  }
}
void main() {
  final Student suragch = Student('Bold', 16, '5th secondary school');
  suragch.details();
  final Teacher bagsh = Teacher('Dulmaa', 36, '5th secondary school');
  bagsh.details();
}