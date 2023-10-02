void main() {
  final Students data = Students();
  data.name = 'Mungun';
  data.studentid = 20201243;
  data.grade = 12;
  data.showStudentInfo();
}

class Students {
  String? name;
  int? studentid;
  int? grade;
  void showStudentInfo(){
    print('The student name is $name. '
        'Student ID: $studentid. '
        'Grade: $grade');
  }
}