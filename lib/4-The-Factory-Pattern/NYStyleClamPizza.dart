import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class NYStyleClamPizza extends Pizza {
  NYStyleClamPizza() {
    name = 'NY Style Clam Pizza';
    dough = 'Thin Crust Dough';
    sauce = 'Marinara Sauce';

    toppings
      ..add('Grated Reggiano Cheese')
      ..add('Fresh Clams from Long Island Sound');
  }
}
