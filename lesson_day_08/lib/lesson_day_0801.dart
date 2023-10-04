void main () {
  final Building mnTower = Building('MN tower', 20);
  print(mnTower.stock);
  print(mnTower.name);

  final Building newBuilding = Building.createBuilding('New building', 12);
  print(newBuilding.name);
  print(newBuilding.stock);

  final Building defaultBuilding = Building.createDefaultBuilding('Default new building');
  print(defaultBuilding.stock);
  print(defaultBuilding.name);
}

class Building {
  String name;
  int stock;

  Building.createBuilding(this.name, this.stock); // named constructor

  Building.createDefaultBuilding(this.name, [this.stock = 10]);

  Building(this.name, this.stock);


}