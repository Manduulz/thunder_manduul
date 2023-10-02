void main() {
  final People nomin = People();
  nomin.name = 'Nomintsetseg';
  nomin.age = 24;
  nomin.gender = 'female';
  nomin.email = 'nomin_399@yahoo.com';

  final People manda = People();
  manda.name = 'Manduul';
  manda.age = 26;
  manda.gender = 'male';
  manda.email = 'manda@yahoo.com';
}

class People {
  String? name;
  int? age;
  String? gender;
  String? email;


}