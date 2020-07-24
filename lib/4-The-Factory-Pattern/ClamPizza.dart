import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaIngredientFactory.dart';

class ClamPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  ClamPizza(PizzaIngredientFactory ingredientFactory) {
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    clam = ingredientFactory.createClam();
  }
}
