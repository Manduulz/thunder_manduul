void main() {
  final Circle smallCircle = Circle();
smallCircle.radius = 3.5;
print(smallCircle.radius);
print(smallCircle.diametr());
print(smallCircle.circleArea());
}

class Circle {
  double radius = 0;
  double diametr(){
    return radius * 2;
  }
  double pi = 3.14;
  double circleArea(){
    return pi * (radius * radius);
  }

}