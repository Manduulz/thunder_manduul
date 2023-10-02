void main() {
  final human Manduul = human();
  Manduul.name = 'Manduulz'; // after my birth,
  Manduul.age = 26;
  Manduul.gender = 'man';
  print(Manduul.name);
  print(Manduul.age);
  print(Manduul.gender);

  final human Anna = human();
  Anna.name = 'Annaz';
  Anna.age = 15;
  Anna.gender = 'woman';
  print(Anna.name);
  print(Anna.age);
  print(Anna.gender);

  final human Putin = human();
  Putin.name = 'Putinz';
  Putin.age = 70;
  Putin.gender = 'man';
  print(Putin.name);
  print(Putin.age);
  print(Putin.gender);
}

class human {
  String name = 'human'; // class property
  int age = 0;
  int body = 1;
  int eyes = 2;
  int feet = 2;
  int hands = 2;
  String gender = 'woman';

}