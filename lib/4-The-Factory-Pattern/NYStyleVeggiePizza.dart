import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class NYStyleVeggiePizza extends Pizza {
  NYStyleVeggiePizza() {
    name = 'NY Style Veggie Pizza';
    dough = 'Thin Crust Dough';
    sauce = 'Marinara Sauce';

    toppings
      ..add('Grated Reggiano Cheese')
      ..add('Garlic')
      ..add('Onion')
      ..add('Mushrooms')
      ..add('Red Pepper');
  }
}
