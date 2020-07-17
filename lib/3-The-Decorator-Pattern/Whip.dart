import 'package:design_patterns_dart/3-The-Decorator-Pattern/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/CondimentDecorator.dart';

class Whip extends CondimentDecorator {
  Beverage beverage;

//  same as Whip(this.beverage);
  Whip(Beverage beverage) {
    this.beverage = beverage;
  }

  @override
  String getDescription() {
    return beverage.getDescription() + ', Whip';
  }

  @override
  double cost() {
    return beverage.cost() + .1;
  }
}
