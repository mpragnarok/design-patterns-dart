abstract class Pizza {
  String name;
  String dough;
  String sauce;

  List<String> toppings = [];

  String getName() => name;

  void prepare() {
    print('Preparing $name');
    print('Tossing dough...');
    print('Adding sauce...');
    print('Adding toppings: ');
    for (String topping in toppings) {
      print('    $topping');
    }
  }

  void bake() {
    print('Bake for 25 minutes at 350');
  }

  void cut() {
    print('Cut the pizza into diagonal slices');
  }

  void box() {
    print('Place pizza in official PizzaStore box');
  }

  String toString() {
    StringBuffer display = new StringBuffer();
    display
      ..write('---- $name ---- \n')
      ..write('$dough \n')
      ..write('$sauce \n')
      ..writeAll(toppings, '\n');
    return display.toString();
  }
}
