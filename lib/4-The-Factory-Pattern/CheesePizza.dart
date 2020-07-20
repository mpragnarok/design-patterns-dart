import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class CheesePizza extends Pizza {
  CheesePizza() {
    name = 'Cheese Pizza';
    dough = 'Regular Crust';
    sauce = 'Marinara Pizza Sauce';
    toppings..add('Fresh Mozzarella')..add('Parmesan');
  }
}
