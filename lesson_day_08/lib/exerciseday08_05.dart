void main() {
  final Shape shape1 = Shape('Square');
  print(shape1);
  shape1.describe();
  print(shape1.isTypeOf('Square'));
  print(shape1.isTypeOf('Circle'));
}

class Shape {
  String type;
  Shape(this.type);
  void describe(){
    print('This is a $type');
  }
  bool isTypeOf(String shapeType){
    if(type == shapeType){
      return true;
    }else{
      return false;
    }
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'Shape{type: $type}';
  }
}