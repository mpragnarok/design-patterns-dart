import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast() {
    description = 'Dark Roast Coffee';
  }
  @override
  double cost() => .99;
}
