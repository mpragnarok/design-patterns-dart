import 'Pizza.dart';

abstract class PizzaStore {
  Pizza createPizza(String item);

  // Pizza is abstract, so it's decoupled from Pizza
  Pizza orderPizza(String type) {
    Pizza pizza;
    pizza = createPizza(type);
    print('---Making a ${pizza.getName()} ---');
    pizza
      ..prepare()
      ..bake()
      ..cut()
      ..box();
    return pizza;
  }
}
