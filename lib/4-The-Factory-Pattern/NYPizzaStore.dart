import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaStore.dart';
import 'Pizza.dart';
import 'NYStyleCheesePizza.dart';
import 'NYStyleClamPizza.dart';
import 'NYStylePepperoniPizza.dart';
import 'NYStyleVeggiePizza.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String item) {
    if (item == 'cheese') {
      return new NYStyleCheesePizza();
    } else if (item == 'veggie') {
      return new NYStyleVeggiePizza();
    } else if (item == 'clam') {
      return new NYStyleClamPizza();
    } else if (item == 'pepperoni') {
      return new NYStylePepperoniPizza();
    } else {
      return null;
    }
  }
}
