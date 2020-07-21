import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class ChicagoStyleVeggiePizza extends Pizza {
  ChicagoStyleVeggiePizza() {
    name = 'Chicago Style Veggie Pizza';
    dough = 'Extra Thick Crust Dough';
    sauce = 'Plum Tomato Sauce';

    toppings
      ..add('Shredded Mozzarella Cheese')
      ..add('Black Olives')
      ..add('Spinach')
      ..add('Eggplant');
  }
  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
