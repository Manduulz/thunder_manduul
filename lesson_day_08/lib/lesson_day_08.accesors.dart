void main() {
  //dart class accessors
  final Animal horse = Animal('Horse', 4, 'Mammal');

}

class Animal {
  String _name;
  int _age;
  String _species;

  //getters
  String get getName {
    return _name;
  }
  int get getAge {
    return _age;
  }
  String get getSpecies {
    return _species;
  }

  //setters
  set setName(String name){
    _name = name;
  }
  set setAge(int age) {
    _age = age;
  }
  set setSpecies(String species){
    _species = species;
  }

  Animal(this._name, this._age, this._species);
}