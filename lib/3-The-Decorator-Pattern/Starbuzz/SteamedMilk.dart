import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/CondimentDecorator.dart';

class SteamedMilk extends CondimentDecorator {
  Beverage beverage;
  SteamedMilk(this.beverage);

  @override
  String getDescription() {
    return beverage.getDescription() + ', Steamed Milk';
  }

  @override
  double cost() {
    return beverage.cost() + .1;
  }
}
