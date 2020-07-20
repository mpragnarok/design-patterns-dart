import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class ClamPizza extends Pizza {
  ClamPizza() {
    name = 'Clam Pizza';
    dough = 'Thin crust';
    sauce = 'White garlic sauce';
    toppings..add('Clams')..add('Grated parmesan cheese');
  }
}
