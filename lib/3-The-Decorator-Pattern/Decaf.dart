import 'package:design_patterns_dart/3-The-Decorator-Pattern/Beverage.dart';

class Decaf extends Beverage {
  Decaf() {
    description = 'Decaf Coffee';
  }

  @override
  double cost() => 1.05;
}
