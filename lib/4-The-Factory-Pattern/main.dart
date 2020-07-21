import 'package:design_patterns_dart/4-The-Factory-Pattern/ChicagoPizzaStore.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/NYPizzaStore.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/PizzaStore.dart';
import 'Pizza.dart';

void main() {
  PizzaStore nyStore = new NYPizzaStore();
  PizzaStore chicagoStore = new ChicagoPizzaStore();

  Pizza pizza = nyStore.orderPizza('cheese');
  print('Ethan ordered a ${pizza.getName()} \n');

  pizza = chicagoStore.orderPizza('cheese');
  print('Joel ordered a ${pizza.getName()} \n');

  pizza = nyStore.orderPizza('clam');
  print('Ethan ordered a ${pizza.getName()} \n');

  pizza = chicagoStore.orderPizza('clam');
  print('Joel ordered a ${pizza.getName()} \n');

  pizza = nyStore.orderPizza('pepperoni');
  print('Ethan ordered a ${pizza.getName()} \n');

  pizza = chicagoStore.orderPizza('pepperoni');
  print('Joel ordered a ${pizza.getName()} \n');

  pizza = nyStore.orderPizza('veggie');
  print('Ethan ordered a ${pizza.getName()} \n');

  pizza = chicagoStore.orderPizza('veggie');
  print('Joel ordered a ${pizza.getName()} \n');
}
