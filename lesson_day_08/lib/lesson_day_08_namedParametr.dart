void main() {
  final Point origin = Point(x: 0.0, y: 0.0);
  print(origin);
  print('The origin of the Point is : x = ${origin.x} y = ${origin.y}');
  final Rectangle quadrat = Rectangle(a: 5.0, b: 5.0);
  print(quadrat);

}

class Point {
  double x;
  double y;

  Point({required this.x, required this.y});
  @override
  String toString() {
    // TODO: implement toString
    return 'The origin of the Point is : x = $x y = $y';
  }
}

class Rectangle {
  double a;
  double b;

  Rectangle({required this.a, required this.b});
  @override
  String toString() {
    // TODO: implement toString
    return 'The side of the rectange is a = $a, b = $b';
  }
}

class Text {
  String text;
  String style;

  Text(this.text, {required this.style});
}