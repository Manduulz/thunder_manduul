class Parent {
  void show() {
    print("I'm from Parent class");
  }
}
class Child extends Parent {
  @override
  void show() {
    // TODO: implement show
    super.show();
    print("Then, I'm from child class");
  }
}
void main() {
  final Child child = Child();
  child.show();
}

