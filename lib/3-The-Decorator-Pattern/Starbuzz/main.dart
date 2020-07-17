import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/DarkRoast.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Espresso.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/HouseBlend.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Mocha.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Soy.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Whip.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Size.dart';

void main() {
  Beverage beverage = new Espresso();
  print('${beverage.getDescription()} \$${beverage.cost().toStringAsFixed(2)}');

  Beverage beverage2 = new DarkRoast();
//  Wrap with decorators
  beverage2 = new Mocha(beverage2);
  beverage2 = new Mocha(beverage2);
  beverage2 = new Whip(beverage2);
  print(
      '${beverage2.getDescription()} \$${beverage2.cost().toStringAsFixed(2)}');

  Beverage beverage3 = new HouseBlend();
  beverage3.setSize(Size.VENTI);
  beverage3 = new Soy(beverage3);
  beverage3 = new Mocha(beverage3);
  beverage3 = new Whip(beverage3);
  print(
      '${beverage3.getDescription()} \$${beverage3.cost().toStringAsFixed(2)}');
}
