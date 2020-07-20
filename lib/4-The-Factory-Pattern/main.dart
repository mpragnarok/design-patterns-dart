import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaStore.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/SimplePizzaFactory.dart';
import 'Pizza.dart';

void main() {
  SimplePizzaFactory factory = new SimplePizzaFactory();
  PizzaStore store = new PizzaStore(factory);

  Pizza pizza = store.orderPizza('cheese');
  print('We ordered a ${pizza.getName()} \n');
  print(pizza);

  pizza = store.orderPizza('veggie');
  print('We ordered a ${pizza.getName()} \n');
  print(pizza);
}
