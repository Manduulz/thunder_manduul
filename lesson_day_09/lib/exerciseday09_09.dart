class Computer {
  String brand;
  double ramSize;
  Computer(this.brand, this.ramSize);
  void boot(){
    print("Computer boots up");
  }
  void shutDown(){
    print("Computer shuts down");
  }
}
class Laptop extends Computer {
  int batteryLife;
  int isTouchScreen;
  Laptop(super.brand, super.ramSize, this.batteryLife, this.isTouchScreen);
  void fold(){
    print("Laptop is folded");
  }
}
void main(){
  final Computer acer = Computer("Acer", 1024.00);
  acer.boot();
  acer.shutDown();
  final Laptop dell = Laptop('Dell', 4, 100, 88);
  dell.boot();
  dell.shutDown();
  print(dell.brand);
  print(dell.ramSize);
  print(dell.batteryLife);
  print(dell.isTouchScreen);
  dell.fold();
}