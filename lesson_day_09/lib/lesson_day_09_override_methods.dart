class Parent {
  void show() {
    print("I'm from Parent class");
  }
  void showHair() {
    print("I have a short hair");
  }
}
class Child extends Parent {
 @override
  void show() {
    print("I'm from Child class, overriding Parent's method");
  }

  @override
  void showHair() {
    print("I have a long hair");
  }
}
void main() {
  final Child child = Child();
  child.show();
  final Parent uvgunkhuu = Parent();
  uvgunkhuu.show();
  uvgunkhuu.showHair();
  final Child khangai = Child();
  khangai.showHair();
}