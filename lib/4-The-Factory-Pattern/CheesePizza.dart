import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaIngredientFactory.dart';

class CheesePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

//  Each Pizza class gets a factory passed into its constructor, ant it's stored in an instance variable
  CheesePizza(PizzaIngredientFactory ingredientFactory) {
    this.ingredientFactory = ingredientFactory;
  }
// prepare method steps through creating a cheese pizza
  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
  }
}
