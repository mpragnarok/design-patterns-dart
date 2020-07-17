import 'package:design_patterns_dart/3-The-Decorator-Pattern/Beverage.dart';

// In order to interchangeable with a Beverage, we subclass Beverage to have same supertype
abstract class CondimentDecorator extends Beverage {
  // require getDescription to reimplement it
  String getDescription();
}
