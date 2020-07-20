import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class VeggiePizza extends Pizza {
  VeggiePizza() {
    name = 'Veggie Pizza';
    dough = 'Crust';
    sauce = 'Marinara Sauce';
    toppings
      ..add('Shredded mozzarella')
      ..add('Grated parmesan')
      ..add('Diced onion')
      ..add('Sliced mushrooms')
      ..add('Sliced red pepper')
      ..add('Sliced black olives');
  }
}
