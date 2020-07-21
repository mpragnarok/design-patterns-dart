import 'Pizza.dart';

class ChicagoStylePepperoniPizza extends Pizza {
  ChicagoStylePepperoniPizza() {
    name = 'Chicago Style Pepperoni Pizza';
    dough = 'Extra Thick Crust Dough';
    sauce = 'Plum Tomato Sauce';

    toppings
      ..add('Shredded Mozzarella Cheese')
      ..add('Black Olives')
      ..add('Spinach')
      ..add('Eggplant')
      ..add('Sliced Pepperoni');
  }
  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
