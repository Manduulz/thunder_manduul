void main() {
  final Student bataa = Student('Batbold', 11);
  print(bataa);
  final Student freshman = Student.freshman('Bold');
  print(freshman);
}

class Student {
  String name;
  int grade;
  Student(this.name, this.grade);
  @override
  String toString() {
    // TODO: implement toString
    return 'Student{name: $name, grade: $grade}';
  }
  Student.freshman(String name): this(name, 1);
}