import 'package:design_patterns_dart/4-The-Factory-Pattern/CheesePizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/ChicagoPizzaIngredientFactory.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/ClamPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PepperoniPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaIngredientFactory.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaStore.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/VeggiePizza.dart';
import 'Pizza.dart';

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String item) {
    Pizza pizza;
    PizzaIngredientFactory ingredientFactory =
        new ChicagoPizzaIngredientFactory();

    if (item == 'cheese') {
      pizza = new CheesePizza(ingredientFactory);
      pizza.setName('Chicago Style Cheese Pizza');
    } else if (item == 'veggie') {
      pizza = new VeggiePizza(ingredientFactory);
      pizza.setName('Chicago Style Veggie Pizza');
    } else if (item == 'clam') {
      pizza = new ClamPizza(ingredientFactory);
      pizza.setName('Chicago Style Clam Pizza');
    } else if (item == 'pepperoni') {
      pizza = new PepperoniPizza(ingredientFactory);
      pizza.setName('Chicago Style Pepperoni Pizza');
    }
    return pizza;
  }
}
