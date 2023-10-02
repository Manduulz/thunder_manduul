void main() {
  final Shape shape = Shape();
  shape.type = 'Circle';
  shape.color = 'Blue';
  shape.shapeInfo();
}
class Shape {
  String? type;
  String? color;
  void shapeInfo(){
    print("Shape's type is $type, Shape's color is $color");
  }
}