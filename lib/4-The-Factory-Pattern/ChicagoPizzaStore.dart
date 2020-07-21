import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaStore.dart';
import 'Pizza.dart';
import 'ChicagoStyleCheesePizza.dart';
import 'ChicagoStyleClamPizza.dart';
import 'ChicagoStylePepperoniPizza.dart';
import 'ChicagoStyleVeggiePizza.dart';

class ChicagoPizzaStore extends PizzaStore {
  // override createPizza method to get local styled pizza
  @override
  Pizza createPizza(String item) {
    if (item == 'cheese') {
      return new ChicagoStyleCheesePizza();
    } else if (item == 'veggie') {
      return new ChicagoStyleVeggiePizza();
    } else if (item == 'clam') {
      return new ChicagoStyleClamPizza();
    } else if (item == 'pepperoni') {
      return new ChicagoStylePepperoniPizza();
    } else {
      return null;
    }
  }
}
