import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class PepperoniPizza extends Pizza {
  PepperoniPizza() {
    name = 'Pepperoni Pizza';
    dough = 'Crust';
    sauce = 'Marinara sauce';
    toppings
      ..add('Sliced Pepperoni')
      ..add('Sliced Onion')
      ..add('Grated parmesan cheese');
  }
}
