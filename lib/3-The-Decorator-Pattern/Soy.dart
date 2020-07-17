import 'package:design_patterns_dart/3-The-Decorator-Pattern/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/CondimentDecorator.dart';

class Soy extends CondimentDecorator {
  Beverage beverage;
  Soy(this.beverage);

  @override
  String getDescription() {
    return beverage.getDescription() + ', Soy';
  }

  @override
  double cost() {
    return beverage.cost() + .15;
  }
}
