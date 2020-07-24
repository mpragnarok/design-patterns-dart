import 'package:design_patterns_dart/4-The-Factory-Pattern/CheesePizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/ClamPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/NYPizzaIngredientFactory.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PepperoniPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaIngredientFactory.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaStore.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/VeggiePizza.dart';
import 'Pizza.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String item) {
    Pizza pizza;
//     compose with a NY pizza ingredient factory
    PizzaIngredientFactory ingredientFactory = new NYPizzaIngredientFactory();
    if (item == 'cheese') {
//      pass each pizza the factory to produce its ingredients
      pizza = new CheesePizza(ingredientFactory);
      pizza.setName('New York Style Cheese Pizza');
    } else if (item == 'veggie') {
      pizza = new VeggiePizza(ingredientFactory);
      pizza.setName('New York Style Veggie Pizza');
    } else if (item == 'clam') {
      pizza = new ClamPizza(ingredientFactory);
      pizza.setName('New York Style Clam Pizza');
    } else if (item == 'pepperoni') {
      pizza = new PepperoniPizza(ingredientFactory);
      pizza.setName('New York Style Pepperoni Pizza');
    }
    return pizza;
  }
}
