import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'House Blend Coffee';
  }
  @override
  double cost() => .89;
}
