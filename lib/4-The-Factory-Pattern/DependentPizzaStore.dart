import 'package:design_patterns_dart/4-The-Factory-Pattern/ChicagoStyleCheesePizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/ChicagoStyleClamPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/ChicagoStylePepperoniPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/ChicagoStyleVeggiePizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/NYStyleCheesePizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/NYStyleClamPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/NYStylePepperoniPizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/NYStyleVeggiePizza.dart';
import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class DependentPizzaStore {
  Pizza createPizza(String style, String type) {
    Pizza pizza;

    if (style == 'NY') {
      if (type == 'cheese') {
        pizza = new NYStyleCheesePizza();
      } else if (type == 'veggie') {
        pizza = new NYStyleVeggiePizza();
      } else if (type == 'clam') {
        pizza = new NYStyleClamPizza();
      } else if (type == 'pepperoni') {
        pizza = new NYStylePepperoniPizza();
      }
    } else if (style == 'Chicago') {
      if (type == 'cheese') {
        pizza = new ChicagoStyleCheesePizza();
      } else if (type == 'veggie') {
        pizza = new ChicagoStyleVeggiePizza();
      } else if (type == 'clam') {
        pizza = new ChicagoStyleClamPizza();
      } else if (type == 'pepperoni') {
        pizza = new ChicagoStylePepperoniPizza();
      }
    } else {
      print('Error: invalid type of pizza');
      return null;
    }
    pizza
      ..prepare()
      ..bake()
      ..cut()
      ..box();
    return pizza;
  }
}
