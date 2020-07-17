import 'package:design_patterns_dart/3-The-Decorator-Pattern/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/DarkRoast.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Espresso.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/HouseBlend.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Mocha.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Soy.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Whip.dart';

void main() {
  Beverage beverage = new Espresso();
  print('${beverage.getDescription()} \$${beverage.cost()}');

  Beverage beverage2 = new DarkRoast();
//  Wrap with decorators
  beverage2 = new Mocha(beverage2);
  beverage2 = new Mocha(beverage2);
  beverage2 = new Whip(beverage2);
  print('${beverage2.getDescription()} \$${beverage2.cost()}');

  Beverage beverage3 = new HouseBlend();
  beverage3 = new Soy(beverage3);
  beverage3 = new Mocha(beverage3);
  beverage3 = new Whip(beverage3);
  print('${beverage3.getDescription()} \$${beverage3.cost()}');
}
