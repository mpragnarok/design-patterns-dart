import 'Pizza.dart';

// Change to abstract
abstract class PizzaStore {
//  define abstract createPizza method, Dart doesn't support protected keyword
// Decoupling the client code in the superclass from the object creation code in the subclass
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
