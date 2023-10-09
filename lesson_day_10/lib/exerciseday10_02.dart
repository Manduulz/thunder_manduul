import 'dart:math';

abstract class Shape {
  double area();
  double perimetr();
  }

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    print("Circle are is ${3.14 * (radius*radius)}");
    return 3.14 * (radius*radius);

  }
  @override
  double perimetr() {
    print("Circle perimeter is ${6.28 * radius}");
    return 6.28 * radius;
  }
}
class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  double area() {
    // TODO: implement area
    return length * width;
  }
  @override
  double perimetr() {
    // TODO: implement perimetr
    return 2 * (length + width);
  }
}
class Triangle extends Shape {
  double side1;
  double side2;
  double side3;
  Triangle(this.side1, this.side2, this.side3);

  @override
  double area() {
   double height = (side1 + side2 + side3) / 2;
   print('Area is ${sqrt(height * (height - side1) * (height - side2) * (height - side3))}');
   return sqrt(height * (height - side1) * (height - side2) * (height - side3));
  }

  @override
  double perimetr() {
    print("Triangle perimeter is ${side1 + side2 + side3}");
   return side1 + side2 + side3;
  }
}
void main() {
  final Circle smallCircle = Circle(4.5);
  print(smallCircle.area());
  print(smallCircle.perimetr());
  final Rectangle smallRectangle = Rectangle(10.0, 4.2);
  print(smallRectangle.area());
  print(smallRectangle.perimetr());
final Triangle smallTriangle = Triangle(10.0, 4.5, 9.5);
print(smallTriangle.area());
print(smallTriangle.perimetr());
}