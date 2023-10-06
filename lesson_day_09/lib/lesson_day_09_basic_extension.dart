class Parent {
  void show() {
    print("I'm from Parent class");
  }
}

class Child extends Parent {
  void display() {
    print("I'm from Child class");
  }
}

void main() {
  final Parent parent = Parent();
  parent.show();

  final Child child = Child();
  child.show();
  child.display();
}