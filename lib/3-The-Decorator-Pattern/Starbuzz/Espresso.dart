import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';

class Espresso extends Beverage {
  Espresso() {
    description = 'Espresso';
  }
  @override
  double cost() => 1.99;
}
