import 'package:design_patterns_dart/4-The-Factory-Pattern/Sauce.dart';

import 'Dough.dart';
import 'Veggies.dart';
import 'Cheese.dart';
import 'Pepperoni.dart';
import 'Clams.dart';
import 'Sauce.dart';

abstract class Pizza {
  String name;
  Dough dough;
  Sauce sauce;
  List<Veggies> veggies;
  Cheese cheese;
  Pepperoni pepperoni;
  Clams clam;

  String getName() => name;

  void prepare();

  void setName(String name) => this.name = name;

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
    StringBuffer result = new StringBuffer();
    result.write('---- $name ---- \n');
    if (dough != null) {
      result.write(dough);
      result.write('\n');
    }
    if (sauce != null) {
      result.write(sauce);
      result.write('\n');
    }
    if (cheese != null) {
      result.write(cheese);
      result.write('\n');
    }
    if (veggies != null) {
      for (var i = 0; i < veggies.length; i++) {
        result.write(veggies[i]);
        if (i < veggies.length - 1) {
          result.write(', ');
        }
      }
      result.write('\n');
    }
    if (clam != null) {
      result.write(clam);
      result.write('\n');
    }
    if (pepperoni != null) {
      result.write(pepperoni);
      result.write('\n');
    }

    return result.toString();
  }
}
