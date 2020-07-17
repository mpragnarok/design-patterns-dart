import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/CondimentDecorator.dart';

class Mocha extends CondimentDecorator {
  Beverage beverage;
  Mocha(this.beverage);

  @override
  String getDescription() {
    return beverage.getDescription() + ', Mocha';
  }

  @override
  double cost() {
    return .20 + beverage.cost();
  }
}
