import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class NYStylePepperoniPizza extends Pizza {
  NYStylePepperoniPizza() {
    name = 'NY Style Pepperoni Pizza';
    dough = 'Thin Crust Dough';
    sauce = 'Marinara Sauce';

    toppings
      ..add('Grated Reggiano Cheese')
      ..add('Sliced Pepperoni')
      ..add('Garlic')
      ..add('Onion')
      ..add('Mushrooms')
      ..add('Red Pepper');
  }
}
