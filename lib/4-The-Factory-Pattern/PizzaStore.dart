import 'SimplePizzaFactory.dart';
import 'Pizza.dart';

class PizzaStore {
  SimplePizzaFactory factory;
  PizzaStore(SimplePizzaFactory factory) {
    this.factory = factory;
  }

  Pizza orderPizza(String type) {
    Pizza pizza;
    // replace the new operator with a create method on the factory object
    pizza = factory.createPizza(type);
    pizza
      ..prepare()
      ..bake()
      ..cut()
      ..box();
    return pizza;
  }
}
