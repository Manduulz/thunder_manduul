abstract class FoodMenu {
  String name;
  List<String> ingredients;

  FoodMenu(this.name, this.ingredients);

  bool isVegetarian();

  double calories();
}

class Pizza extends FoodMenu {
  Pizza(String name, List<String> ingredients) : super(name, ingredients);

  @override
  double calories() {
    // TODO: implement calories
    return ingredients.length * 100;
  }

  @override
  bool isVegetarian() {
    // TODO: implement isVegetarian
    if (ingredients.contains('Meat')) {
      return true;
    } else {
      return false;
    }
  }
}

class Salad extends FoodMenu {
  Salad(String name, List<String> ingredients) : super(name, ingredients);

  @override
  double calories() {
    // TODO: implement calories
    return ingredients.length * 50;
  }

  @override
  bool isVegetarian() {
    // TODO: implement isVegetarian
    if (ingredients.contains('Meat')) {
      return true;
    } else {
      return false;
    }
  }
}

class Burger extends FoodMenu {
  Burger(String name, List<String> ingredients) : super(name, ingredients);

  @override
  double calories() {
    // TODO: implement calories
    return ingredients.length * 200;
  }

  @override
  bool isVegetarian() {
    // TODO: implement isVegetarian
    if (ingredients.contains('Meat')) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  final Pizza pizza = Pizza(
      'Pepperoni Pizza', ['Dough', 'Tomota Sauce', 'Cheese', 'Pepperoni', 'Meat']);
  print(pizza.calories());
  print(pizza.isVegetarian());
  final Salad salad = Salad('Cesar Salad', ['Baguette', 'Olive oil', 'Garlic', 'Lemon Juice', 'Red Wine', 'Black Pepper', 'Cheese']);
  print(salad.calories());
  print(salad.isVegetarian());
  final Burger burger = Burger('Cheese Burger', ['Cheese', 'Bread', 'Meat', 'Barbeque Sauce', 'Tomato',]);
  print(burger.calories());
  print(burger.isVegetarian());
}
