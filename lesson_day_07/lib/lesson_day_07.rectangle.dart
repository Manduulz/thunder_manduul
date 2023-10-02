void main() {
  final Rectangle rectangle = Rectangle();
  rectangle.withd = 15;
  rectangle.height = 5.6;
  print(rectangle.rectangleArea());
}

class Rectangle {
  double withd = 0;
  double height = 0;
  double rectangleArea(){
    return withd * height;
  }
}