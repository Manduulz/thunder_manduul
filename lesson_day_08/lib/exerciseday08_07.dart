import 'dart:math';
void main() {
  final Point too = Point(9.0, 4.0);
  print(too);
  too.pointObject(4.0, 9.0);
  print(too);
  print(too.distanceFromOrigin());
}
class Point{
  double x;
  double y;
  void pointObject(double x, double y){
    this.x = x;
    this.y = y; // move to,
  }
  double distanceFromOrigin(){
    return sqrt((x*x + y*y));
  }
  Point(this.x, this.y);
  @override
  String toString() {
    // TODO: implement toString
    return 'Point{x: $x, y: $y}';
  }
}