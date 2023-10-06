class Building {
  int _floors;
  int get getFloors{
    return _floors;
  }
  set setFloors(int floors){
    if(floors > 0 ){
      _floors = floors;
    }
  }
  Building(this._floors);
}
class Apartment extends Building {
  int unitsPerFloor;
  Apartment(super._floors, this.unitsPerFloor);
}
void main() {
  final Building hunnu2222 = Building(16);
  print(hunnu2222._floors);
  final Apartment hunnu22 = Apartment(18, 1);
  print(hunnu22.unitsPerFloor);
  print(hunnu22._floors);
}