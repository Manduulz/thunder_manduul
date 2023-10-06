class Shape {
  String name;
  Shape(this.name);
  void about() {
    print("My name is $name");
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius, super.name);

  @override
  void about() {

    super.about();
    print("My name is $name, i have a radius of $radius");
  }
}
void main() {
  final Shape shape = Shape('Triangle');
  shape.about();
  final Circle circle = Circle(6.7, 'Circle');
  circle.about();
}
