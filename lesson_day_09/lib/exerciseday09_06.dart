class Printer {
  void printData(){
    print("Printing data");
  }
}
class ColorPrinter extends Printer {
  void printInColor(){
    print("Printing in color");
  }
}
void main() {
  final Printer epson = Printer();
  epson.printData();
  final ColorPrinter epson2020 = ColorPrinter();
  epson2020.printData();
  epson2020.printInColor();

  final Printer oldPrinter = Printer();
  oldPrinter.printData();

  final ColorPrinter l3587 = ColorPrinter();
  l3587.printData();
  l3587.printInColor();
  
}