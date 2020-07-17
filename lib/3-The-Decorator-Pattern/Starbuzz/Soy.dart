import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/CondimentDecorator.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Starbuzz/Size.dart';

class Soy extends CondimentDecorator {
  Beverage beverage;
  Soy(this.beverage);

  @override
  String getDescription() {
    String description = beverage.getDescription();
    if (beverage.getSize() == Size.TALL) {
      description += ' (Size:Tall) ';
    } else if (beverage.getSize() == Size.GRANDE) {
      description += ' (Size: Grande) ';
    } else if (beverage.getSize() == Size.VENTI) {
      description += ' (Size: Venti) ';
    }

    return description + ', Soy';
  }

  @override
  double cost() {
    double cost = beverage.cost();
    if (beverage.getSize() == Size.TALL) {
      cost += .10;
    } else if (beverage.getSize() == Size.GRANDE) {
      cost += .15;
    } else if (beverage.getSize() == Size.VENTI) {
      cost += .20;
    }
    return cost;
  }
}
