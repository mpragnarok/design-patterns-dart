import 'Pizza.dart';
import 'CheesePizza.dart';
import 'PepperoniPizza.dart';
import 'ClamPizza.dart';
import 'VeggiePizza.dart';

class SimplePizzaFactory {
  Pizza createPizza(String type) {
    Pizza pizza;

    if (type == 'cheese') {
      pizza = new CheesePizza();
    } else if (type == 'pepperoni') {
      pizza = new PepperoniPizza();
    } else if (type == 'clam') {
      pizza = new ClamPizza();
    } else if (type == 'veggie') {
      pizza = new VeggiePizza();
    }
    return pizza;
  }
}
