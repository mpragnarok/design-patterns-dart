import 'package:design_patterns_dart/4-The-Factory-Pattern/Pizza.dart';

class ChicagoStyleClamPizza extends Pizza {
  ChicagoStyleClamPizza() {
    name = 'Chicago Style Clam Pizza';
    dough = 'Extra Thick Crust Dough';
    sauce = 'Plum Tomato Sauce';

    toppings
      ..add('Shredded Mozzarella Cheese')
      ..add('Frozen Clams from Chesapeake Bay');
  }
  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
