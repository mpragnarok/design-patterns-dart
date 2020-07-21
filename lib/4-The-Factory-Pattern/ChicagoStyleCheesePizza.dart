import 'Pizza.dart';

class ChicagoStyleCheesePizza extends Pizza {
  ChicagoStyleCheesePizza() {
    name = 'Chicago Style Sauce Deep Dish Cheese Pizza';
    dough = 'Extra Thick Crust Dough';
    sauce = 'Plum Tomato Sauce';

    toppings.add('Shredded Mozzarella Cheese');
  }
  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
