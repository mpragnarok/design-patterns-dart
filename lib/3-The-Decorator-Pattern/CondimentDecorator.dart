import 'package:design_patterns_dart/3-The-Decorator-Pattern/Beverage.dart';
import 'package:design_patterns_dart/3-The-Decorator-Pattern/Size.dart';

// In order to interchangeable with a Beverage, we subclass Beverage to have same supertype
abstract class CondimentDecorator extends Beverage {
  Beverage beverage;
  // require getDescription to reimplement it
  String getDescription();
  @override
  Size getSize() {
    return beverage.getSize();
  }
}
