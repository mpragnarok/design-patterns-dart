abstract class Pizza {
  String name;
  String dough;
  String sauce;

  List<String> toppings = [];

  String getName() => name;

  void prepare() => print('Preparing $name');

  void bake() => print('Baking $name');

  void cut() => print('Cutting $name');

  void box() => print('Boxing $name');

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
