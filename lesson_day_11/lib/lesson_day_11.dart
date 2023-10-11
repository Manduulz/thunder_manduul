abstract class Product {
  int id;
  String name;
  double price;
  Product(this.name, this.id, this.price);
  void displayDetails();
  void category();
}

class Electronic extends Product {
  Electronic(super.name, super.id, super.price);
  @override
  void category() {
    print("Category's ID is $id, name is $name, price is $price");
  }

  @override
  void displayDetails() {
    print("This electronic product's ID is $id");
  }
}
class Clothing extends Product {
  Clothing(super.name, super.id, super.price);

  @override
  void category() {
    print("This product's Category is Clothing");
  }

  @override
  void displayDetails() {
    print("This product's ID is $id, name is $name, price is $price");
  }
}
void main() {
  Clothing huvtsas = Clothing('Jeans', 9761234, 450.00);
  huvtsas.category();
  huvtsas.displayDetails();
}
